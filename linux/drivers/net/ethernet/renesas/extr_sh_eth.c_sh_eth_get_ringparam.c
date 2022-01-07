
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_eth_private {int num_tx_ring; int num_rx_ring; } ;
struct net_device {int dummy; } ;
struct ethtool_ringparam {int tx_pending; int rx_pending; int tx_max_pending; int rx_max_pending; } ;


 int RX_RING_MAX ;
 int TX_RING_MAX ;
 struct sh_eth_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static void sh_eth_get_ringparam(struct net_device *ndev,
     struct ethtool_ringparam *ring)
{
 struct sh_eth_private *mdp = netdev_priv(ndev);

 ring->rx_max_pending = RX_RING_MAX;
 ring->tx_max_pending = TX_RING_MAX;
 ring->rx_pending = mdp->num_rx_ring;
 ring->tx_pending = mdp->num_tx_ring;
}
