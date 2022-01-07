
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct net_device {int dummy; } ;
struct ibmvnic_rwi {int reset_reason; } ;
struct ibmvnic_adapter {int req_rx_queues; int * napi; scalar_t__ state; struct net_device* netdev; int reset_reason; } ;


 int IBMVNIC_INIT_FAILED ;
 int IBMVNIC_OPEN_FAILED ;
 scalar_t__ VNIC_CLOSED ;
 scalar_t__ VNIC_OPEN ;
 scalar_t__ VNIC_PROBED ;
 int __ibmvnic_close (struct net_device*) ;
 int __ibmvnic_open (struct net_device*) ;
 int ibmvnic_cleanup (struct net_device*) ;
 int ibmvnic_disable_irqs (struct ibmvnic_adapter*) ;
 int ibmvnic_login (struct net_device*) ;
 int ibmvnic_reset_init (struct ibmvnic_adapter*) ;
 int ibmvnic_set_multi (struct net_device*) ;
 int init_crq_queue (struct ibmvnic_adapter*) ;
 int init_resources (struct ibmvnic_adapter*) ;
 int napi_schedule (int *) ;
 int netdev_dbg (struct net_device*,char*,int ) ;
 int netdev_err (struct net_device*,char*,int) ;
 int netif_carrier_off (struct net_device*) ;
 int release_crq_queue (struct ibmvnic_adapter*) ;
 int release_resources (struct ibmvnic_adapter*) ;
 int release_sub_crqs (struct ibmvnic_adapter*,int) ;

__attribute__((used)) static int do_change_param_reset(struct ibmvnic_adapter *adapter,
     struct ibmvnic_rwi *rwi,
     u32 reset_state)
{
 struct net_device *netdev = adapter->netdev;
 int i, rc;

 netdev_dbg(adapter->netdev, "Change param resetting driver (%d)\n",
     rwi->reset_reason);

 netif_carrier_off(netdev);
 adapter->reset_reason = rwi->reset_reason;

 ibmvnic_cleanup(netdev);

 if (reset_state == VNIC_OPEN) {
  rc = __ibmvnic_close(netdev);
  if (rc)
   return rc;
 }

 release_resources(adapter);
 release_sub_crqs(adapter, 1);
 release_crq_queue(adapter);

 adapter->state = VNIC_PROBED;

 rc = init_crq_queue(adapter);

 if (rc) {
  netdev_err(adapter->netdev,
      "Couldn't initialize crq. rc=%d\n", rc);
  return rc;
 }

 rc = ibmvnic_reset_init(adapter);
 if (rc)
  return IBMVNIC_INIT_FAILED;




 if (reset_state == VNIC_PROBED)
  return 0;

 rc = ibmvnic_login(netdev);
 if (rc) {
  adapter->state = reset_state;
  return rc;
 }

 rc = init_resources(adapter);
 if (rc)
  return rc;

 ibmvnic_disable_irqs(adapter);

 adapter->state = VNIC_CLOSED;

 if (reset_state == VNIC_CLOSED)
  return 0;

 rc = __ibmvnic_open(netdev);
 if (rc)
  return IBMVNIC_OPEN_FAILED;


 ibmvnic_set_multi(netdev);


 for (i = 0; i < adapter->req_rx_queues; i++)
  napi_schedule(&adapter->napi[i]);

 return 0;
}
