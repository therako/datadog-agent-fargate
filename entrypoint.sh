#!/bin/bash

if [[ -n "${ECS_FARGATE}" ]]; then
  taskid=$(curl 169.254.170.2/v2/metadata | grep TaskARN | awk -F/ '{print $NF}' | awk  -F\" '{print $1}')
  export DD_HOSTNAME=$taskid
fi

/init
