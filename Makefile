.PHONY: start stop build pull shell down remove logs

start:
	docker-compose -f docker-compose.yaml -f .docker-compose-db.yaml -f .docker-compose.$O-theme.yaml up -d --build nginx

stop:
	docker-compose -f docker-compose.yaml -f .docker-compose-db.yaml -f .docker-compose.$O-theme.yaml stop

build:
	docker-compose -f docker-compose.yaml -f .docker-compose-db.yaml -f .docker-compose.$O-theme.yaml build

pull:
	docker-compose -f docker-compose.yaml -f .docker-compose-db.yaml -f .docker-compose.$O-theme.yaml pull

shell:
	docker-compose -f docker-compose.yaml -f .docker-compose-db.yaml -f .docker-compose.$O-theme.yaml exec $S $C

down:
	docker-compose -f docker-compose.yaml -f .docker-compose-db.yaml -f .docker-compose.$O-theme.yaml down

remove:
	docker-compose -f docker-compose.yaml -f .docker-compose-db.yaml -f .docker-compose.$O-theme.yaml down -v

logs:
	docker-compose -f docker-compose.yaml -f .docker-compose-db.yaml -f .docker-compose.$O-theme.yaml logs -f $S
