
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_ringparam {int rx_max_pending; int rx_mini_max_pending; int rx_jumbo_max_pending; int tx_max_pending; int rx_mini_pending; int rx_jumbo_pending; int tx_pending; int rx_pending; } ;
struct cpmac_priv {int ring_size; } ;


 struct cpmac_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void cpmac_get_ringparam(struct net_device *dev,
      struct ethtool_ringparam *ring)
{
 struct cpmac_priv *priv = netdev_priv(dev);

 ring->rx_max_pending = 1024;
 ring->rx_mini_max_pending = 1;
 ring->rx_jumbo_max_pending = 1;
 ring->tx_max_pending = 1;

 ring->rx_pending = priv->ring_size;
 ring->rx_mini_pending = 1;
 ring->rx_jumbo_pending = 1;
 ring->tx_pending = 1;
}
