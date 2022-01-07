
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ rx_entries; scalar_t__ tx_entries; } ;
struct ibmvnic_adapter {scalar_t__ req_rx_add_entries_per_subcrq; scalar_t__ req_tx_entries_per_subcrq; TYPE_1__ desired; } ;
struct ethtool_ringparam {scalar_t__ rx_pending; scalar_t__ tx_pending; } ;


 int netdev_info (struct net_device*,char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 struct ibmvnic_adapter* netdev_priv (struct net_device*) ;
 int wait_for_reset (struct ibmvnic_adapter*) ;

__attribute__((used)) static int ibmvnic_set_ringparam(struct net_device *netdev,
     struct ethtool_ringparam *ring)
{
 struct ibmvnic_adapter *adapter = netdev_priv(netdev);
 int ret;

 ret = 0;
 adapter->desired.rx_entries = ring->rx_pending;
 adapter->desired.tx_entries = ring->tx_pending;

 ret = wait_for_reset(adapter);

 if (!ret &&
     (adapter->req_rx_add_entries_per_subcrq != ring->rx_pending ||
      adapter->req_tx_entries_per_subcrq != ring->tx_pending))
  netdev_info(netdev,
       "Could not match full ringsize request. Requested: RX %d, TX %d; Allowed: RX %llu, TX %llu\n",
       ring->rx_pending, ring->tx_pending,
       adapter->req_rx_add_entries_per_subcrq,
       adapter->req_tx_entries_per_subcrq);
 return ret;
}
