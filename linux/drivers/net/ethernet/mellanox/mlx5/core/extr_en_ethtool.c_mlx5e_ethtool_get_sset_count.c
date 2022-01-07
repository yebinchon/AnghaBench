
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5e_priv {int dummy; } ;
struct TYPE_2__ {int (* get_num_stats ) (struct mlx5e_priv*) ;} ;


 int EOPNOTSUPP ;



 int MLX5E_NUM_PFLAGS ;
 int mlx5e_num_stats_grps ;
 int mlx5e_self_test_num (struct mlx5e_priv*) ;
 TYPE_1__* mlx5e_stats_grps ;
 int stub1 (struct mlx5e_priv*) ;

int mlx5e_ethtool_get_sset_count(struct mlx5e_priv *priv, int sset)
{
 int i, num_stats = 0;

 switch (sset) {
 case 129:
  for (i = 0; i < mlx5e_num_stats_grps; i++)
   num_stats += mlx5e_stats_grps[i].get_num_stats(priv);
  return num_stats;
 case 130:
  return MLX5E_NUM_PFLAGS;
 case 128:
  return mlx5e_self_test_num(priv);

 default:
  return -EOPNOTSUPP;
 }
}
