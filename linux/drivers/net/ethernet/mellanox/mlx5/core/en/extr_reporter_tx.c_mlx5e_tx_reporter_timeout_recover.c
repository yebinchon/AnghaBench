
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct mlx5_eq_comp* eq; } ;
struct TYPE_4__ {TYPE_1__ mcq; } ;
struct mlx5e_txqsq {int state; int channel; TYPE_2__ cq; } ;
struct mlx5_eq_comp {int dummy; } ;


 int MLX5E_SQ_STATE_ENABLED ;
 int clear_bit (int ,int *) ;
 int mlx5e_health_channel_eq_recover (struct mlx5_eq_comp*,int ) ;

__attribute__((used)) static int mlx5e_tx_reporter_timeout_recover(void *ctx)
{
 struct mlx5_eq_comp *eq;
 struct mlx5e_txqsq *sq;
 int err;

 sq = ctx;
 eq = sq->cq.mcq.eq;
 err = mlx5e_health_channel_eq_recover(eq, sq->channel);
 if (err)
  clear_bit(MLX5E_SQ_STATE_ENABLED, &sq->state);

 return err;
}
