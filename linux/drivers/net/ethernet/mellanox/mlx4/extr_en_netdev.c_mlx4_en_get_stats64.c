
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtnl_link_stats64 {int dummy; } ;
struct net_device {int stats; } ;
struct mlx4_en_priv {int stats_lock; } ;


 int mlx4_en_fold_software_stats (struct net_device*) ;
 struct mlx4_en_priv* netdev_priv (struct net_device*) ;
 int netdev_stats_to_stats64 (struct rtnl_link_stats64*,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void
mlx4_en_get_stats64(struct net_device *dev, struct rtnl_link_stats64 *stats)
{
 struct mlx4_en_priv *priv = netdev_priv(dev);

 spin_lock_bh(&priv->stats_lock);
 mlx4_en_fold_software_stats(dev);
 netdev_stats_to_stats64(stats, &dev->stats);
 spin_unlock_bh(&priv->stats_lock);
}
