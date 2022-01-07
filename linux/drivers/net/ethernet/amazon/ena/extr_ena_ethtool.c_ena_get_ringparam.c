
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ethtool_ringparam {int rx_pending; int tx_pending; int rx_max_pending; int tx_max_pending; } ;
struct ena_adapter {TYPE_1__* rx_ring; TYPE_2__* tx_ring; int max_rx_ring_size; int max_tx_ring_size; } ;
struct TYPE_4__ {int ring_size; } ;
struct TYPE_3__ {int ring_size; } ;


 struct ena_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static void ena_get_ringparam(struct net_device *netdev,
         struct ethtool_ringparam *ring)
{
 struct ena_adapter *adapter = netdev_priv(netdev);

 ring->tx_max_pending = adapter->max_tx_ring_size;
 ring->rx_max_pending = adapter->max_rx_ring_size;
 ring->tx_pending = adapter->tx_ring[0].ring_size;
 ring->rx_pending = adapter->rx_ring[0].ring_size;
}
