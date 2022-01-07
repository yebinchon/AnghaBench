
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct ibmvnic_adapter {int from_passive_init; scalar_t__ req_rx_queues; scalar_t__ req_tx_queues; int init_done_rc; scalar_t__ reset_reason; int wait_for_reset; int resetting; int state; int init_done; TYPE_1__* vdev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int VNIC_OPEN ;
 scalar_t__ VNIC_RESET_MOBILITY ;
 int dev_err (struct device*,char*) ;
 int ibmvnic_send_crq_init (struct ibmvnic_adapter*) ;
 int init_sub_crq_irqs (struct ibmvnic_adapter*) ;
 int init_sub_crqs (struct ibmvnic_adapter*) ;
 unsigned long msecs_to_jiffies (int) ;
 int reinit_completion (int *) ;
 int release_crq_queue (struct ibmvnic_adapter*) ;
 int release_sub_crqs (struct ibmvnic_adapter*,int ) ;
 int reset_sub_crq_queues (struct ibmvnic_adapter*) ;
 scalar_t__ test_bit (int ,int *) ;
 int wait_for_completion_timeout (int *,unsigned long) ;

__attribute__((used)) static int ibmvnic_reset_init(struct ibmvnic_adapter *adapter)
{
 struct device *dev = &adapter->vdev->dev;
 unsigned long timeout = msecs_to_jiffies(30000);
 u64 old_num_rx_queues, old_num_tx_queues;
 int rc;

 adapter->from_passive_init = 0;

 old_num_rx_queues = adapter->req_rx_queues;
 old_num_tx_queues = adapter->req_tx_queues;

 reinit_completion(&adapter->init_done);
 adapter->init_done_rc = 0;
 ibmvnic_send_crq_init(adapter);
 if (!wait_for_completion_timeout(&adapter->init_done, timeout)) {
  dev_err(dev, "Initialization sequence timed out\n");
  return -1;
 }

 if (adapter->init_done_rc) {
  release_crq_queue(adapter);
  return adapter->init_done_rc;
 }

 if (adapter->from_passive_init) {
  adapter->state = VNIC_OPEN;
  adapter->from_passive_init = 0;
  return -1;
 }

 if (test_bit(0, &adapter->resetting) && !adapter->wait_for_reset &&
     adapter->reset_reason != VNIC_RESET_MOBILITY) {
  if (adapter->req_rx_queues != old_num_rx_queues ||
      adapter->req_tx_queues != old_num_tx_queues) {
   release_sub_crqs(adapter, 0);
   rc = init_sub_crqs(adapter);
  } else {
   rc = reset_sub_crq_queues(adapter);
  }
 } else {
  rc = init_sub_crqs(adapter);
 }

 if (rc) {
  dev_err(dev, "Initialization of sub crqs failed\n");
  release_crq_queue(adapter);
  return rc;
 }

 rc = init_sub_crq_irqs(adapter);
 if (rc) {
  dev_err(dev, "Failed to initialize sub crq irqs\n");
  release_crq_queue(adapter);
 }

 return rc;
}
