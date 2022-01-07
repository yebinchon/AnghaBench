
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct macb {int tx_ring_size; int rx_ring_size; } ;
struct ethtool_ringparam {int tx_pending; int rx_pending; int tx_max_pending; int rx_max_pending; } ;


 int MAX_RX_RING_SIZE ;
 int MAX_TX_RING_SIZE ;
 struct macb* netdev_priv (struct net_device*) ;

__attribute__((used)) static void macb_get_ringparam(struct net_device *netdev,
          struct ethtool_ringparam *ring)
{
 struct macb *bp = netdev_priv(netdev);

 ring->rx_max_pending = MAX_RX_RING_SIZE;
 ring->tx_max_pending = MAX_TX_RING_SIZE;

 ring->rx_pending = bp->rx_ring_size;
 ring->tx_pending = bp->tx_ring_size;
}
