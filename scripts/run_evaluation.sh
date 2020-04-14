#!/bin/bash
export ROUTES=$1
export CHECKPOINT_ENDPOINT=$2
export RESUME=''

export PORT=2000
export REPETITIONS=1
export DEBUG_CHALLENGE=0
export CHALLENGE_PHASE_CODENAME=dev_track_3
export SCENARIOS=/home/bradyzhou/code/leaderboard/data/all_towns_traffic_scenarios_public.json

export PYTHONPATH=$PYTHONPATH:/home/bradyzhou/code/scenario_runner_fresh
export RECORD_PATH=/home/bradyzhou/data/carla/challenge_local

export TEAM_AGENT=/home/bradyzhou/code/scenario_runner_fresh/team_code/auto_pilot.py
export TEAM_CONFIG=/home/bradyzhou/data/carla/challenge_local

export TEAM_AGENT=/home/bradyzhou/code/scenario_runner_fresh/team_code/image_agent.py
export TEAM_CONFIG=/home/bradyzhou/code/scenario_runner_fresh/team_code/carla_project/checkpoints/6a426872740b4763899b2ba7d6f6cfb3/epoch=11.ckpt
export TEAM_CONFIG=/home/bradyzhou/checkpoints/v2_True_10.0_0.1/epoch=29.ckpt
export TEAM_CONFIG=/home/bradyzhou/checkpoints/v2_True_1.0_0.1/epoch=55.ckpt

python ${LEADERBOARD_ROOT}/leaderboard/leaderboard_evaluator.py \
--challenge-mode \
--scenarios=${SCENARIOS}  \
--routes=${ROUTES} \
--repetitions=${REPETITIONS} \
--track=${CHALLENGE_PHASE_CODENAME} \
--checkpoint=${CHECKPOINT_ENDPOINT} \
--agent=${TEAM_AGENT} \
--agent-config=${TEAM_CONFIG} \
--debug=${DEBUG_CHALLENGE} \
--record=${RECORD_PATH} \
--resume=${RESUME} \
--port=${PORT}
