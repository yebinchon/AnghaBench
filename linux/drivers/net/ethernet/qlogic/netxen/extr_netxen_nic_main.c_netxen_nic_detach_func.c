
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netxen_adapter {scalar_t__ portnum; int state; int tx_timeout_task; struct net_device* netdev; } ;
struct net_device {int dummy; } ;


 int __NX_RESETTING ;
 int cancel_work_sync (int *) ;
 int clear_bit (int ,int *) ;
 int netif_device_detach (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int netxen_cancel_fw_work (struct netxen_adapter*) ;
 int netxen_free_dummy_dma (struct netxen_adapter*) ;
 int netxen_nic_detach (struct netxen_adapter*) ;
 int netxen_nic_down (struct netxen_adapter*,struct net_device*) ;
 int nx_decr_dev_ref_cnt (struct netxen_adapter*) ;

__attribute__((used)) static void netxen_nic_detach_func(struct netxen_adapter *adapter)
{
 struct net_device *netdev = adapter->netdev;

 netif_device_detach(netdev);

 netxen_cancel_fw_work(adapter);

 if (netif_running(netdev))
  netxen_nic_down(adapter, netdev);

 cancel_work_sync(&adapter->tx_timeout_task);

 netxen_nic_detach(adapter);

 if (adapter->portnum == 0)
  netxen_free_dummy_dma(adapter);

 nx_decr_dev_ref_cnt(adapter);

 clear_bit(__NX_RESETTING, &adapter->state);
}
