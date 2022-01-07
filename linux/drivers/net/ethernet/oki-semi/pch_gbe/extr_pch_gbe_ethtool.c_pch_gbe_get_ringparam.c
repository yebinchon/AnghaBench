
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pch_gbe_tx_ring {int count; } ;
struct pch_gbe_rx_ring {int count; } ;
struct pch_gbe_adapter {struct pch_gbe_rx_ring* rx_ring; struct pch_gbe_tx_ring* tx_ring; } ;
struct net_device {int dummy; } ;
struct ethtool_ringparam {int tx_pending; int rx_pending; int tx_max_pending; int rx_max_pending; } ;


 int PCH_GBE_MAX_RXD ;
 int PCH_GBE_MAX_TXD ;
 struct pch_gbe_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static void pch_gbe_get_ringparam(struct net_device *netdev,
     struct ethtool_ringparam *ring)
{
 struct pch_gbe_adapter *adapter = netdev_priv(netdev);
 struct pch_gbe_tx_ring *txdr = adapter->tx_ring;
 struct pch_gbe_rx_ring *rxdr = adapter->rx_ring;

 ring->rx_max_pending = PCH_GBE_MAX_RXD;
 ring->tx_max_pending = PCH_GBE_MAX_TXD;
 ring->rx_pending = rxdr->count;
 ring->tx_pending = txdr->count;
}
