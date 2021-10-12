#!/bin/bash -x 
#------------------
#Argo Event 
#------------------
#------Create NameSpace
kubectl create namespace argo-events
#------Install Argo Events
kubectl -n argo-events apply -f argo-event-yamls/
#--------------
#ARGO CD
#=========
kubectl create namespace argocd
kubectl apply -n argocd -f argocd-yamls/
#kubectl patch svc argocd-server -n argocd -p '{"spec": {"type": "NodePort"}}'
#-----
#Argo Workflow
#---------
kubectl create namespace argo
kubectl apply -n argo -f argo-wf-yamls/
#kubectl patch svc argo-server -n argo -p '{"spec": {"type": "NodePort"}}'
