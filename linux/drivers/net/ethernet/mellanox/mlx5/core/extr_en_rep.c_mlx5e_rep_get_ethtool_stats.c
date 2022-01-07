
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int vf_vport; int sw; } ;
struct mlx5e_priv {TYPE_2__ stats; int state_lock; TYPE_1__* profile; } ;
struct ethtool_stats {int dummy; } ;
struct TYPE_3__ {int (* update_stats ) (struct mlx5e_priv*) ;} ;


 int MLX5E_READ_CTR64_CPU (int *,int ,int) ;
 int NUM_VPORT_REP_HW_COUNTERS ;
 int NUM_VPORT_REP_SW_COUNTERS ;
 int mlx5e_rep_update_sw_counters (struct mlx5e_priv*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct mlx5e_priv* netdev_priv (struct net_device*) ;
 int stub1 (struct mlx5e_priv*) ;
 int sw_rep_stats_desc ;
 int vport_rep_stats_desc ;

__attribute__((used)) static void mlx5e_rep_get_ethtool_stats(struct net_device *dev,
     struct ethtool_stats *stats, u64 *data)
{
 struct mlx5e_priv *priv = netdev_priv(dev);
 int i, j;

 if (!data)
  return;

 mutex_lock(&priv->state_lock);
 mlx5e_rep_update_sw_counters(priv);
 priv->profile->update_stats(priv);
 mutex_unlock(&priv->state_lock);

 for (i = 0; i < NUM_VPORT_REP_SW_COUNTERS; i++)
  data[i] = MLX5E_READ_CTR64_CPU(&priv->stats.sw,
            sw_rep_stats_desc, i);

 for (j = 0; j < NUM_VPORT_REP_HW_COUNTERS; j++, i++)
  data[i] = MLX5E_READ_CTR64_CPU(&priv->stats.vf_vport,
            vport_rep_stats_desc, j);
}
