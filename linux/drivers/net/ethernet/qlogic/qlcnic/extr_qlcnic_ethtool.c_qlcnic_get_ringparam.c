
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_adapter {int max_jumbo_rxd; int max_rxd; int num_txd; int num_jumbo_rxd; int num_rxd; } ;
struct net_device {int dummy; } ;
struct ethtool_ringparam {int tx_max_pending; int rx_jumbo_max_pending; int rx_max_pending; int tx_pending; int rx_jumbo_pending; int rx_pending; } ;


 int MAX_CMD_DESCRIPTORS ;
 struct qlcnic_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static void
qlcnic_get_ringparam(struct net_device *dev,
  struct ethtool_ringparam *ring)
{
 struct qlcnic_adapter *adapter = netdev_priv(dev);

 ring->rx_pending = adapter->num_rxd;
 ring->rx_jumbo_pending = adapter->num_jumbo_rxd;
 ring->tx_pending = adapter->num_txd;

 ring->rx_max_pending = adapter->max_rxd;
 ring->rx_jumbo_max_pending = adapter->max_jumbo_rxd;
 ring->tx_max_pending = MAX_CMD_DESCRIPTORS;
}
