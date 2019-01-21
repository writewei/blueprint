#!/bin/sh

STACK_NAME='writewei'
COMPOSE_URL='https://raw.githubusercontent.com/writewei/blueprint/master/docker-compose.yaml'

docker stack rm $STACK_NAME
sleep 20
wget -N $COMPOSE_URL
docker stack deploy --compose-file docker-compose.yaml $STACK_NAME
