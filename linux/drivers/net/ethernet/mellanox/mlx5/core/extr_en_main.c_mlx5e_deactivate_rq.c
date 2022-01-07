
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5e_rq {TYPE_1__* channel; int state; } ;
struct TYPE_2__ {int napi; } ;


 int MLX5E_RQ_STATE_ENABLED ;
 int clear_bit (int ,int *) ;
 int napi_synchronize (int *) ;

void mlx5e_deactivate_rq(struct mlx5e_rq *rq)
{
 clear_bit(MLX5E_RQ_STATE_ENABLED, &rq->state);
 napi_synchronize(&rq->channel->napi);
}
