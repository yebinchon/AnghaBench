
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct net_device {int dummy; } ;
struct ibmvnic_rwi {scalar_t__ reset_reason; } ;
struct ibmvnic_adapter {scalar_t__ reset_reason; scalar_t__ req_rx_queues; scalar_t__ req_tx_queues; scalar_t__ req_rx_add_entries_per_subcrq; scalar_t__ req_tx_entries_per_subcrq; scalar_t__ state; int * napi; struct net_device* netdev; int vdev; } ;


 int IBMVNIC_INIT_FAILED ;
 int IBMVNIC_LOGICAL_LNK_DN ;
 int IBMVNIC_OPEN_FAILED ;
 int NETDEV_NOTIFY_PEERS ;
 scalar_t__ VNIC_CLOSED ;
 scalar_t__ VNIC_CLOSING ;
 scalar_t__ VNIC_OPEN ;
 scalar_t__ VNIC_PROBED ;
 scalar_t__ VNIC_RESET_FAILOVER ;
 scalar_t__ VNIC_RESET_MOBILITY ;
 scalar_t__ VNIC_RESET_NON_FATAL ;
 int __ibmvnic_open (struct net_device*) ;
 int call_netdevice_notifiers (int ,struct net_device*) ;
 int ibmvnic_cleanup (struct net_device*) ;
 int ibmvnic_disable_irqs (struct ibmvnic_adapter*) ;
 int ibmvnic_login (struct net_device*) ;
 int ibmvnic_reenable_crq_queue (struct ibmvnic_adapter*) ;
 int ibmvnic_reset_crq (struct ibmvnic_adapter*) ;
 int ibmvnic_reset_init (struct ibmvnic_adapter*) ;
 int ibmvnic_set_multi (struct net_device*) ;
 int init_resources (struct ibmvnic_adapter*) ;
 int napi_schedule (int *) ;
 int netdev_dbg (struct net_device*,char*,scalar_t__) ;
 int netdev_err (struct net_device*,char*,int) ;
 int netif_carrier_off (struct net_device*) ;
 int release_napi (struct ibmvnic_adapter*) ;
 int release_rx_pools (struct ibmvnic_adapter*) ;
 int release_sub_crqs (struct ibmvnic_adapter*,int) ;
 int release_tx_pools (struct ibmvnic_adapter*) ;
 int release_vpd_data (struct ibmvnic_adapter*) ;
 int reset_rx_pools (struct ibmvnic_adapter*) ;
 int reset_tx_pools (struct ibmvnic_adapter*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int set_link_state (struct ibmvnic_adapter*,int ) ;
 int vio_enable_interrupts (int ) ;

__attribute__((used)) static int do_reset(struct ibmvnic_adapter *adapter,
      struct ibmvnic_rwi *rwi, u32 reset_state)
{
 u64 old_num_rx_queues, old_num_tx_queues;
 u64 old_num_rx_slots, old_num_tx_slots;
 struct net_device *netdev = adapter->netdev;
 int i, rc;

 netdev_dbg(adapter->netdev, "Re-setting driver (%d)\n",
     rwi->reset_reason);

 rtnl_lock();

 netif_carrier_off(netdev);
 adapter->reset_reason = rwi->reset_reason;

 old_num_rx_queues = adapter->req_rx_queues;
 old_num_tx_queues = adapter->req_tx_queues;
 old_num_rx_slots = adapter->req_rx_add_entries_per_subcrq;
 old_num_tx_slots = adapter->req_tx_entries_per_subcrq;

 ibmvnic_cleanup(netdev);

 if (reset_state == VNIC_OPEN &&
     adapter->reset_reason != VNIC_RESET_MOBILITY &&
     adapter->reset_reason != VNIC_RESET_FAILOVER) {
  adapter->state = VNIC_CLOSING;






  rtnl_unlock();
  rc = set_link_state(adapter, IBMVNIC_LOGICAL_LNK_DN);
  rtnl_lock();
  if (rc)
   goto out;

  if (adapter->state != VNIC_CLOSING) {
   rc = -1;
   goto out;
  }

  adapter->state = VNIC_CLOSED;
 }

 if (adapter->reset_reason != VNIC_RESET_NON_FATAL) {



  adapter->state = VNIC_PROBED;

  if (adapter->reset_reason == VNIC_RESET_MOBILITY) {
   rc = ibmvnic_reenable_crq_queue(adapter);
   release_sub_crqs(adapter, 1);
  } else {
   rc = ibmvnic_reset_crq(adapter);
   if (!rc)
    rc = vio_enable_interrupts(adapter->vdev);
  }

  if (rc) {
   netdev_err(adapter->netdev,
       "Couldn't initialize crq. rc=%d\n", rc);
   goto out;
  }

  rc = ibmvnic_reset_init(adapter);
  if (rc) {
   rc = IBMVNIC_INIT_FAILED;
   goto out;
  }




  if (reset_state == VNIC_PROBED) {
   rc = 0;
   goto out;
  }

  rc = ibmvnic_login(netdev);
  if (rc) {
   adapter->state = reset_state;
   goto out;
  }

  if (adapter->req_rx_queues != old_num_rx_queues ||
      adapter->req_tx_queues != old_num_tx_queues ||
      adapter->req_rx_add_entries_per_subcrq !=
      old_num_rx_slots ||
      adapter->req_tx_entries_per_subcrq !=
      old_num_tx_slots) {
   release_rx_pools(adapter);
   release_tx_pools(adapter);
   release_napi(adapter);
   release_vpd_data(adapter);

   rc = init_resources(adapter);
   if (rc)
    goto out;

  } else {
   rc = reset_tx_pools(adapter);
   if (rc)
    goto out;

   rc = reset_rx_pools(adapter);
   if (rc)
    goto out;
  }
  ibmvnic_disable_irqs(adapter);
 }
 adapter->state = VNIC_CLOSED;

 if (reset_state == VNIC_CLOSED) {
  rc = 0;
  goto out;
 }

 rc = __ibmvnic_open(netdev);
 if (rc) {
  rc = IBMVNIC_OPEN_FAILED;
  goto out;
 }


 ibmvnic_set_multi(netdev);


 for (i = 0; i < adapter->req_rx_queues; i++)
  napi_schedule(&adapter->napi[i]);

 if (adapter->reset_reason != VNIC_RESET_FAILOVER)
  call_netdevice_notifiers(NETDEV_NOTIFY_PEERS, netdev);

 rc = 0;

out:
 rtnl_unlock();

 return rc;
}
