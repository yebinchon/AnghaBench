
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ravb_private {int * num_tx_ring; int * num_rx_ring; } ;
struct net_device {int dummy; } ;
struct ethtool_ringparam {int tx_pending; int rx_pending; int tx_max_pending; int rx_max_pending; } ;


 int BE_RX_RING_MAX ;
 int BE_TX_RING_MAX ;
 size_t RAVB_BE ;
 struct ravb_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static void ravb_get_ringparam(struct net_device *ndev,
          struct ethtool_ringparam *ring)
{
 struct ravb_private *priv = netdev_priv(ndev);

 ring->rx_max_pending = BE_RX_RING_MAX;
 ring->tx_max_pending = BE_TX_RING_MAX;
 ring->rx_pending = priv->num_rx_ring[RAVB_BE];
 ring->tx_pending = priv->num_tx_ring[RAVB_BE];
}
