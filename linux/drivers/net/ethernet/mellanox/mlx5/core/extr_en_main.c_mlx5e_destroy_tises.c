
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5e_priv {int ** tisn; int mdev; TYPE_1__* profile; } ;
struct TYPE_2__ {int max_tc; } ;


 int mlx5e_destroy_tis (int ,int ) ;
 int mlx5e_get_num_lag_ports (int ) ;

void mlx5e_destroy_tises(struct mlx5e_priv *priv)
{
 int tc, i;

 for (i = 0; i < mlx5e_get_num_lag_ports(priv->mdev); i++)
  for (tc = 0; tc < priv->profile->max_tc; tc++)
   mlx5e_destroy_tis(priv->mdev, priv->tisn[i][tc]);
}
