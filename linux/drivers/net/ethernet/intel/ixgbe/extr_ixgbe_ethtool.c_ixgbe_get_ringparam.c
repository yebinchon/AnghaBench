
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ixgbe_ring {int count; } ;
struct ixgbe_adapter {struct ixgbe_ring** rx_ring; struct ixgbe_ring** tx_ring; } ;
struct ethtool_ringparam {int tx_pending; int rx_pending; int tx_max_pending; int rx_max_pending; } ;


 int IXGBE_MAX_RXD ;
 int IXGBE_MAX_TXD ;
 struct ixgbe_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static void ixgbe_get_ringparam(struct net_device *netdev,
    struct ethtool_ringparam *ring)
{
 struct ixgbe_adapter *adapter = netdev_priv(netdev);
 struct ixgbe_ring *tx_ring = adapter->tx_ring[0];
 struct ixgbe_ring *rx_ring = adapter->rx_ring[0];

 ring->rx_max_pending = IXGBE_MAX_RXD;
 ring->tx_max_pending = IXGBE_MAX_TXD;
 ring->rx_pending = rx_ring->count;
 ring->tx_pending = tx_ring->count;
}
