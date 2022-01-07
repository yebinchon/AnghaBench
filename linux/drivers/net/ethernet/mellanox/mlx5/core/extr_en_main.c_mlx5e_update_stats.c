
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5e_priv {int dummy; } ;
struct TYPE_2__ {int (* update_stats ) (struct mlx5e_priv*) ;} ;


 int mlx5e_num_stats_grps ;
 TYPE_1__* mlx5e_stats_grps ;
 int stub1 (struct mlx5e_priv*) ;

void mlx5e_update_stats(struct mlx5e_priv *priv)
{
 int i;

 for (i = mlx5e_num_stats_grps - 1; i >= 0; i--)
  if (mlx5e_stats_grps[i].update_stats)
   mlx5e_stats_grps[i].update_stats(priv);
}
