#!/bin/bash

docker compose exec -T shard1 mongosh --port 27018 --quiet <<EOF
 use somedb;
 db.helloDoc.countDocuments();
 exit(); 
EOF

docker compose exec -T shard2 mongosh --port 27019 --quiet <<EOF
 use somedb;
 db.helloDoc.countDocuments();
 exit(); 
EOF

docker compose exec -T shard11 mongosh --port 27118 --quiet <<EOF
 use somedb;
 db.helloDoc.countDocuments();
 exit(); 
EOF

docker compose exec -T shard21 mongosh --port 27119 --quiet <<EOF
 use somedb;
 db.helloDoc.countDocuments();
 exit(); 
EOF

docker compose exec -T shard12 mongosh --port 27218 --quiet <<EOF
 use somedb;
 db.helloDoc.countDocuments();
 exit(); 
EOF

docker compose exec -T shard22 mongosh --port 27219 --quiet <<EOF
 use somedb;
 db.helloDoc.countDocuments();
 exit(); 
EOF