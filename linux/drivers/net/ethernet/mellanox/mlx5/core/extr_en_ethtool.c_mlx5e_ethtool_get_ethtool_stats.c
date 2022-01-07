
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct mlx5e_priv {int state_lock; } ;
struct ethtool_stats {int dummy; } ;
struct TYPE_2__ {int (* fill_stats ) (struct mlx5e_priv*,int *,int) ;} ;


 int mlx5e_num_stats_grps ;
 TYPE_1__* mlx5e_stats_grps ;
 int mlx5e_update_stats (struct mlx5e_priv*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct mlx5e_priv*,int *,int) ;

void mlx5e_ethtool_get_ethtool_stats(struct mlx5e_priv *priv,
         struct ethtool_stats *stats, u64 *data)
{
 int i, idx = 0;

 mutex_lock(&priv->state_lock);
 mlx5e_update_stats(priv);
 mutex_unlock(&priv->state_lock);

 for (i = 0; i < mlx5e_num_stats_grps; i++)
  idx = mlx5e_stats_grps[i].fill_stats(priv, data, idx);
}
