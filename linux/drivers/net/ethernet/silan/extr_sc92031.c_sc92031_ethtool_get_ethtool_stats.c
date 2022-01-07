
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct sc92031_priv {int lock; int rx_loss; int tx_timeouts; } ;
struct net_device {int dummy; } ;
struct ethtool_stats {int dummy; } ;


 struct sc92031_priv* netdev_priv (struct net_device*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void sc92031_ethtool_get_ethtool_stats(struct net_device *dev,
  struct ethtool_stats *stats, u64 *data)
{
 struct sc92031_priv *priv = netdev_priv(dev);

 spin_lock_bh(&priv->lock);
 data[0] = priv->tx_timeouts;
 data[1] = priv->rx_loss;
 spin_unlock_bh(&priv->lock);
}
