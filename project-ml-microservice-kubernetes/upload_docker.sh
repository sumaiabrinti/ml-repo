#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

dockerpath=sumaiabrinti/ml-repo

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username sumaiabrinti && docker tag ml-repo:latest $dockerpath
# Step 3:
# Push image to a docker repository
docker push $dockerpath
