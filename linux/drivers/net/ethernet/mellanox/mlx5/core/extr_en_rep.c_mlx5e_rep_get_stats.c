
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtnl_link_stats64 {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int vf_vport; } ;
struct mlx5e_priv {TYPE_1__ stats; } ;


 int memcpy (struct rtnl_link_stats64*,int *,int) ;
 int mlx5e_queue_update_stats (struct mlx5e_priv*) ;
 struct mlx5e_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void
mlx5e_rep_get_stats(struct net_device *dev, struct rtnl_link_stats64 *stats)
{
 struct mlx5e_priv *priv = netdev_priv(dev);


 mlx5e_queue_update_stats(priv);
 memcpy(stats, &priv->stats.vf_vport, sizeof(*stats));
}
