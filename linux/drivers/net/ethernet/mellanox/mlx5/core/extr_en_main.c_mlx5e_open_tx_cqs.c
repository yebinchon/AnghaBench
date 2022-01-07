
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5e_params {int tx_cq_moderation; } ;
struct mlx5e_channel_param {int tx_cq; } ;
struct mlx5e_channel {int num_tc; TYPE_1__* sq; } ;
struct TYPE_2__ {int cq; } ;


 int mlx5e_close_cq (int *) ;
 int mlx5e_open_cq (struct mlx5e_channel*,int ,int *,int *) ;

__attribute__((used)) static int mlx5e_open_tx_cqs(struct mlx5e_channel *c,
        struct mlx5e_params *params,
        struct mlx5e_channel_param *cparam)
{
 int err;
 int tc;

 for (tc = 0; tc < c->num_tc; tc++) {
  err = mlx5e_open_cq(c, params->tx_cq_moderation,
        &cparam->tx_cq, &c->sq[tc].cq);
  if (err)
   goto err_close_tx_cqs;
 }

 return 0;

err_close_tx_cqs:
 for (tc--; tc >= 0; tc--)
  mlx5e_close_cq(&c->sq[tc].cq);

 return err;
}
