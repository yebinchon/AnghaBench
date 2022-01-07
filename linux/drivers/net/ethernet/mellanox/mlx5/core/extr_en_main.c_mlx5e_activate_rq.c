
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5e_rq {TYPE_1__* channel; int state; } ;
struct TYPE_2__ {int icosq; } ;


 int MLX5E_RQ_STATE_ENABLED ;
 int mlx5e_trigger_irq (int *) ;
 int set_bit (int ,int *) ;

void mlx5e_activate_rq(struct mlx5e_rq *rq)
{
 set_bit(MLX5E_RQ_STATE_ENABLED, &rq->state);
 mlx5e_trigger_irq(&rq->channel->icosq);
}
