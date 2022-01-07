
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vio_dev {int dev; int unit_address; int irq; } ;
struct ibmvnic_crq_queue {int active; int * msgs; int msg_token; } ;
struct ibmvnic_adapter {int tasklet; int netdev; struct vio_dev* vdev; struct ibmvnic_crq_queue crq; } ;


 int DMA_BIDIRECTIONAL ;
 long H_BUSY ;
 int H_FREE_CRQ ;
 scalar_t__ H_IS_LONG_BUSY (long) ;
 int PAGE_SIZE ;
 int dma_unmap_single (int *,int ,int ,int ) ;
 int free_irq (int ,struct ibmvnic_adapter*) ;
 int free_page (unsigned long) ;
 int netdev_dbg (int ,char*) ;
 long plpar_hcall_norets (int ,int ) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static void release_crq_queue(struct ibmvnic_adapter *adapter)
{
 struct ibmvnic_crq_queue *crq = &adapter->crq;
 struct vio_dev *vdev = adapter->vdev;
 long rc;

 if (!crq->msgs)
  return;

 netdev_dbg(adapter->netdev, "Releasing CRQ\n");
 free_irq(vdev->irq, adapter);
 tasklet_kill(&adapter->tasklet);
 do {
  rc = plpar_hcall_norets(H_FREE_CRQ, vdev->unit_address);
 } while (rc == H_BUSY || H_IS_LONG_BUSY(rc));

 dma_unmap_single(&vdev->dev, crq->msg_token, PAGE_SIZE,
    DMA_BIDIRECTIONAL);
 free_page((unsigned long)crq->msgs);
 crq->msgs = ((void*)0);
 crq->active = 0;
}
