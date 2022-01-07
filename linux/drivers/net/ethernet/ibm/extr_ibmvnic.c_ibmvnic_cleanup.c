
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ibmvnic_adapter {int resetting; } ;


 int clean_rx_pools (struct ibmvnic_adapter*) ;
 int clean_tx_pools (struct ibmvnic_adapter*) ;
 int ibmvnic_disable_irqs (struct ibmvnic_adapter*) ;
 int ibmvnic_napi_disable (struct ibmvnic_adapter*) ;
 struct ibmvnic_adapter* netdev_priv (struct net_device*) ;
 int netif_tx_disable (struct net_device*) ;
 int netif_tx_stop_all_queues (struct net_device*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void ibmvnic_cleanup(struct net_device *netdev)
{
 struct ibmvnic_adapter *adapter = netdev_priv(netdev);


 if (test_bit(0, &adapter->resetting))
  netif_tx_disable(netdev);
 else
  netif_tx_stop_all_queues(netdev);

 ibmvnic_napi_disable(adapter);
 ibmvnic_disable_irqs(adapter);

 clean_rx_pools(adapter);
 clean_tx_pools(adapter);
}
