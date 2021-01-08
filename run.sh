#!/bin/bash
command=$1
if [ $command == 'logs' ]
then
	command='logs -f'
elif [ $command == 'qrcode' ]
then
	command='exec jd-seckill qrcode'
elif [ $command == 'up' ]
then
	command='up -d'
elif [ $command == 'down' ]
then
	command='down -t 0'
fi

docker-compose -f compose/docker-compose.yml $command
