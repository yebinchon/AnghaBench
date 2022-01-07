
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_icosq {int state; struct mlx5e_channel* channel; } ;
struct mlx5e_channel {int napi; } ;


 int MLX5E_SQ_STATE_ENABLED ;
 int clear_bit (int ,int *) ;
 int napi_synchronize (int *) ;

void mlx5e_deactivate_icosq(struct mlx5e_icosq *icosq)
{
 struct mlx5e_channel *c = icosq->channel;

 clear_bit(MLX5E_SQ_STATE_ENABLED, &icosq->state);
 napi_synchronize(&c->napi);
}
