
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ibmvnic_adapter {int from_passive_init; int init_done_rc; int state; int init_done; TYPE_1__* vdev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int VNIC_OPEN ;
 int dev_err (struct device*,char*) ;
 int ibmvnic_send_crq_init (struct ibmvnic_adapter*) ;
 int init_sub_crq_irqs (struct ibmvnic_adapter*) ;
 int init_sub_crqs (struct ibmvnic_adapter*) ;
 unsigned long msecs_to_jiffies (int) ;
 int release_crq_queue (struct ibmvnic_adapter*) ;
 int wait_for_completion_timeout (int *,unsigned long) ;

__attribute__((used)) static int ibmvnic_init(struct ibmvnic_adapter *adapter)
{
 struct device *dev = &adapter->vdev->dev;
 unsigned long timeout = msecs_to_jiffies(30000);
 int rc;

 adapter->from_passive_init = 0;

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

 rc = init_sub_crqs(adapter);
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
