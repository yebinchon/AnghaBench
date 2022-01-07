
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_ringparam {int tx_pending; int rx_pending; int tx_max_pending; int rx_max_pending; } ;
struct e1000_adapter {int tx_ring_count; int rx_ring_count; } ;


 int E1000_MAX_RXD ;
 int E1000_MAX_TXD ;
 struct e1000_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static void e1000_get_ringparam(struct net_device *netdev,
    struct ethtool_ringparam *ring)
{
 struct e1000_adapter *adapter = netdev_priv(netdev);

 ring->rx_max_pending = E1000_MAX_RXD;
 ring->tx_max_pending = E1000_MAX_TXD;
 ring->rx_pending = adapter->rx_ring_count;
 ring->tx_pending = adapter->tx_ring_count;
}
