
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct be_adapter {int if_flags; int if_handle; int num_msix_roce_vec; struct net_device* netdev; } ;


 int BE_IF_FLAGS_ALL_PROMISCUOUS ;
 int be_cancel_worker (struct be_adapter*) ;
 int be_clear_queues (struct be_adapter*) ;
 int be_close (struct net_device*) ;
 int be_cmd_if_destroy (struct be_adapter*,int ,int ) ;
 int be_if_create (struct be_adapter*) ;
 int be_msix_disable (struct be_adapter*) ;
 int be_msix_enable (struct be_adapter*) ;
 int be_open (struct net_device*) ;
 int be_schedule_worker (struct be_adapter*) ;
 int be_setup_queues (struct be_adapter*) ;
 int msix_enabled (struct be_adapter*) ;
 int netif_carrier_off (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int netif_tx_lock_bh (struct net_device*) ;
 int netif_tx_unlock_bh (struct net_device*) ;

int be_update_queues(struct be_adapter *adapter)
{
 struct net_device *netdev = adapter->netdev;
 int status;

 if (netif_running(netdev)) {



  netif_tx_lock_bh(netdev);

  netif_carrier_off(netdev);
  netif_tx_unlock_bh(netdev);

  be_close(netdev);
 }

 be_cancel_worker(adapter);




 if (!adapter->num_msix_roce_vec)
  be_msix_disable(adapter);

 be_clear_queues(adapter);
 status = be_cmd_if_destroy(adapter, adapter->if_handle, 0);
 if (status)
  return status;

 if (!msix_enabled(adapter)) {
  status = be_msix_enable(adapter);
  if (status)
   return status;
 }

 status = be_if_create(adapter);
 if (status)
  return status;

 status = be_setup_queues(adapter);
 if (status)
  return status;

 be_schedule_worker(adapter);







 adapter->if_flags &= ~BE_IF_FLAGS_ALL_PROMISCUOUS;

 if (netif_running(netdev))
  status = be_open(netdev);

 return status;
}
