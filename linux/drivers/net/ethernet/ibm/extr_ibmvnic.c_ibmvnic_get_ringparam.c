
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ibmvnic_adapter {int priv_flags; int req_tx_entries_per_subcrq; int req_rx_add_entries_per_subcrq; void* max_tx_entries_per_subcrq; void* max_rx_add_entries_per_subcrq; } ;
struct ethtool_ringparam {scalar_t__ rx_jumbo_pending; scalar_t__ rx_mini_pending; int tx_pending; int rx_pending; scalar_t__ rx_jumbo_max_pending; scalar_t__ rx_mini_max_pending; void* tx_max_pending; void* rx_max_pending; } ;


 void* IBMVNIC_MAX_QUEUE_SZ ;
 int IBMVNIC_USE_SERVER_MAXES ;
 struct ibmvnic_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static void ibmvnic_get_ringparam(struct net_device *netdev,
      struct ethtool_ringparam *ring)
{
 struct ibmvnic_adapter *adapter = netdev_priv(netdev);

 if (adapter->priv_flags & IBMVNIC_USE_SERVER_MAXES) {
  ring->rx_max_pending = adapter->max_rx_add_entries_per_subcrq;
  ring->tx_max_pending = adapter->max_tx_entries_per_subcrq;
 } else {
  ring->rx_max_pending = IBMVNIC_MAX_QUEUE_SZ;
  ring->tx_max_pending = IBMVNIC_MAX_QUEUE_SZ;
 }
 ring->rx_mini_max_pending = 0;
 ring->rx_jumbo_max_pending = 0;
 ring->rx_pending = adapter->req_rx_add_entries_per_subcrq;
 ring->tx_pending = adapter->req_tx_entries_per_subcrq;
 ring->rx_mini_pending = 0;
 ring->rx_jumbo_pending = 0;
}
