
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcnet32_private {int rx_ring_size; int tx_ring_size; } ;
struct net_device {int dummy; } ;
struct ethtool_ringparam {int rx_pending; int rx_max_pending; int tx_pending; int tx_max_pending; } ;


 int RX_MAX_RING_SIZE ;
 int TX_MAX_RING_SIZE ;
 struct pcnet32_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static void pcnet32_get_ringparam(struct net_device *dev,
      struct ethtool_ringparam *ering)
{
 struct pcnet32_private *lp = netdev_priv(dev);

 ering->tx_max_pending = TX_MAX_RING_SIZE;
 ering->tx_pending = lp->tx_ring_size;
 ering->rx_max_pending = RX_MAX_RING_SIZE;
 ering->rx_pending = lp->rx_ring_size;
}
