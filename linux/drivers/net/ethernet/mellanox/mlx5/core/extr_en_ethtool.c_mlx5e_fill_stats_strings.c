
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mlx5e_priv {int dummy; } ;
struct TYPE_2__ {int (* fill_strings ) (struct mlx5e_priv*,int *,int) ;} ;


 int mlx5e_num_stats_grps ;
 TYPE_1__* mlx5e_stats_grps ;
 int stub1 (struct mlx5e_priv*,int *,int) ;

__attribute__((used)) static void mlx5e_fill_stats_strings(struct mlx5e_priv *priv, u8 *data)
{
 int i, idx = 0;

 for (i = 0; i < mlx5e_num_stats_grps; i++)
  idx = mlx5e_stats_grps[i].fill_strings(priv, data, idx);
}
