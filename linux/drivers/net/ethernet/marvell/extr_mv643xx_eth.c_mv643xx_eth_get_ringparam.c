
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mv643xx_eth_private {int tx_ring_size; int rx_ring_size; } ;
struct ethtool_ringparam {int rx_max_pending; int tx_max_pending; int tx_pending; int rx_pending; } ;


 struct mv643xx_eth_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static void
mv643xx_eth_get_ringparam(struct net_device *dev, struct ethtool_ringparam *er)
{
 struct mv643xx_eth_private *mp = netdev_priv(dev);

 er->rx_max_pending = 4096;
 er->tx_max_pending = 4096;

 er->rx_pending = mp->rx_ring_size;
 er->tx_pending = mp->tx_ring_size;
}
