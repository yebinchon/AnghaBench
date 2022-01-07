
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct mlx5_eq_comp* eq; } ;
struct TYPE_5__ {TYPE_1__ mcq; } ;
struct mlx5e_rq {TYPE_3__* channel; TYPE_2__ cq; } ;
struct mlx5e_icosq {int state; } ;
struct mlx5_eq_comp {int dummy; } ;
struct TYPE_6__ {struct mlx5e_icosq icosq; } ;


 int MLX5E_SQ_STATE_ENABLED ;
 int clear_bit (int ,int *) ;
 int mlx5e_health_channel_eq_recover (struct mlx5_eq_comp*,TYPE_3__*) ;

__attribute__((used)) static int mlx5e_rx_reporter_timeout_recover(void *ctx)
{
 struct mlx5e_icosq *icosq;
 struct mlx5_eq_comp *eq;
 struct mlx5e_rq *rq;
 int err;

 rq = ctx;
 icosq = &rq->channel->icosq;
 eq = rq->cq.mcq.eq;
 err = mlx5e_health_channel_eq_recover(eq, rq->channel);
 if (err)
  clear_bit(MLX5E_SQ_STATE_ENABLED, &icosq->state);

 return err;
}
