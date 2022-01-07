
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ibmvnic_sub_crq_queue {int pool_index; int scrq_num; } ;
struct ibmvnic_adapter {int req_tx_queues; int req_rx_queues; int min_tx_queues; int min_rx_queues; struct ibmvnic_sub_crq_queue** tx_scrq; int num_active_rx_scrqs; struct ibmvnic_sub_crq_queue** rx_scrq; int num_active_tx_scrqs; int netdev; TYPE_1__* vdev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int GFP_KERNEL ;
 int dev_err (struct device*,char*) ;
 int dev_warn (struct device*,char*) ;
 struct ibmvnic_sub_crq_queue* init_sub_crq_queue (struct ibmvnic_adapter*) ;
 void* kcalloc (int,int,int ) ;
 int kfree (struct ibmvnic_sub_crq_queue**) ;
 int netdev_dbg (int ,char*) ;
 int release_sub_crq_queue (struct ibmvnic_adapter*,struct ibmvnic_sub_crq_queue*,int) ;

__attribute__((used)) static int init_sub_crqs(struct ibmvnic_adapter *adapter)
{
 struct device *dev = &adapter->vdev->dev;
 struct ibmvnic_sub_crq_queue **allqueues;
 int registered_queues = 0;
 int total_queues;
 int more = 0;
 int i;

 total_queues = adapter->req_tx_queues + adapter->req_rx_queues;

 allqueues = kcalloc(total_queues, sizeof(*allqueues), GFP_KERNEL);
 if (!allqueues)
  return -1;

 for (i = 0; i < total_queues; i++) {
  allqueues[i] = init_sub_crq_queue(adapter);
  if (!allqueues[i]) {
   dev_warn(dev, "Couldn't allocate all sub-crqs\n");
   break;
  }
  registered_queues++;
 }


 if (registered_queues <
     adapter->min_tx_queues + adapter->min_rx_queues) {
  dev_err(dev, "Fatal: Couldn't init  min number of sub-crqs\n");
  goto tx_failed;
 }


 for (i = 0; i < total_queues - registered_queues + more ; i++) {
  netdev_dbg(adapter->netdev, "Reducing number of queues\n");
  switch (i % 3) {
  case 0:
   if (adapter->req_rx_queues > adapter->min_rx_queues)
    adapter->req_rx_queues--;
   else
    more++;
   break;
  case 1:
   if (adapter->req_tx_queues > adapter->min_tx_queues)
    adapter->req_tx_queues--;
   else
    more++;
   break;
  }
 }

 adapter->tx_scrq = kcalloc(adapter->req_tx_queues,
       sizeof(*adapter->tx_scrq), GFP_KERNEL);
 if (!adapter->tx_scrq)
  goto tx_failed;

 for (i = 0; i < adapter->req_tx_queues; i++) {
  adapter->tx_scrq[i] = allqueues[i];
  adapter->tx_scrq[i]->pool_index = i;
  adapter->num_active_tx_scrqs++;
 }

 adapter->rx_scrq = kcalloc(adapter->req_rx_queues,
       sizeof(*adapter->rx_scrq), GFP_KERNEL);
 if (!adapter->rx_scrq)
  goto rx_failed;

 for (i = 0; i < adapter->req_rx_queues; i++) {
  adapter->rx_scrq[i] = allqueues[i + adapter->req_tx_queues];
  adapter->rx_scrq[i]->scrq_num = i;
  adapter->num_active_rx_scrqs++;
 }

 kfree(allqueues);
 return 0;

rx_failed:
 kfree(adapter->tx_scrq);
 adapter->tx_scrq = ((void*)0);
tx_failed:
 for (i = 0; i < registered_queues; i++)
  release_sub_crq_queue(adapter, allqueues[i], 1);
 kfree(allqueues);
 return -1;
}
