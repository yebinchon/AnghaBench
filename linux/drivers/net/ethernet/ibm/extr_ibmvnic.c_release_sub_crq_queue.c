
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ibmvnic_sub_crq_queue {scalar_t__ msgs; int msg_token; int crq_num; } ;
struct ibmvnic_adapter {int netdev; TYPE_1__* vdev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int unit_address; struct device dev; } ;


 int DMA_BIDIRECTIONAL ;
 long H_BUSY ;
 int H_FREE_SUB_CRQ ;
 scalar_t__ H_IS_LONG_BUSY (long) ;
 int PAGE_SIZE ;
 int dma_unmap_single (struct device*,int ,int,int ) ;
 int free_pages (unsigned long,int) ;
 int kfree (struct ibmvnic_sub_crq_queue*) ;
 int netdev_dbg (int ,char*) ;
 int netdev_err (int ,char*,int ,long) ;
 long plpar_hcall_norets (int ,int ,int ) ;

__attribute__((used)) static void release_sub_crq_queue(struct ibmvnic_adapter *adapter,
      struct ibmvnic_sub_crq_queue *scrq,
      bool do_h_free)
{
 struct device *dev = &adapter->vdev->dev;
 long rc;

 netdev_dbg(adapter->netdev, "Releasing sub-CRQ\n");

 if (do_h_free) {

  do {
   rc = plpar_hcall_norets(H_FREE_SUB_CRQ,
      adapter->vdev->unit_address,
      scrq->crq_num);
  } while (rc == H_BUSY || H_IS_LONG_BUSY(rc));

  if (rc) {
   netdev_err(adapter->netdev,
       "Failed to release sub-CRQ %16lx, rc = %ld\n",
       scrq->crq_num, rc);
  }
 }

 dma_unmap_single(dev, scrq->msg_token, 4 * PAGE_SIZE,
    DMA_BIDIRECTIONAL);
 free_pages((unsigned long)scrq->msgs, 2);
 kfree(scrq);
}
