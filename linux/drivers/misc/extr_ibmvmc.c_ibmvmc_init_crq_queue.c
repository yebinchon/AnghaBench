
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vio_dev {int irq; int unit_address; } ;
struct ibmvmc_crq_msg {int dummy; } ;
struct crq_queue {int size; struct ibmvmc_crq_msg* msgs; int msg_token; int lock; scalar_t__ cur; } ;
struct crq_server_adapter {int dev; int work_task; struct crq_queue queue; } ;


 int DMA_BIDIRECTIONAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int H_REG_CRQ ;
 int H_RESOURCE ;
 int PAGE_SIZE ;
 int dev_err (int ,char*,int) ;
 int dev_warn (int ,char*) ;
 int dma_map_single (int ,struct ibmvmc_crq_msg*,int,int ) ;
 scalar_t__ dma_mapping_error (int ,int ) ;
 int dma_unmap_single (int ,int ,int,int ) ;
 int free_page (unsigned long) ;
 scalar_t__ get_zeroed_page (int ) ;
 int h_free_crq (int ) ;
 int ibmvmc_handle_event ;
 int ibmvmc_reset_crq_queue (struct crq_server_adapter*) ;
 int ibmvmc_task ;
 int plpar_hcall_norets (int ,int ,int ,int) ;
 scalar_t__ request_irq (int,int ,int ,char*,void*) ;
 int spin_lock_init (int *) ;
 int tasklet_init (int *,int ,unsigned long) ;
 int tasklet_kill (int *) ;
 struct vio_dev* to_vio_dev (int ) ;
 int vio_enable_interrupts (struct vio_dev*) ;

__attribute__((used)) static int ibmvmc_init_crq_queue(struct crq_server_adapter *adapter)
{
 struct vio_dev *vdev = to_vio_dev(adapter->dev);
 struct crq_queue *queue = &adapter->queue;
 int rc = 0;
 int retrc = 0;

 queue->msgs = (struct ibmvmc_crq_msg *)get_zeroed_page(GFP_KERNEL);

 if (!queue->msgs)
  goto malloc_failed;

 queue->size = PAGE_SIZE / sizeof(*queue->msgs);

 queue->msg_token = dma_map_single(adapter->dev, queue->msgs,
       queue->size * sizeof(*queue->msgs),
       DMA_BIDIRECTIONAL);

 if (dma_mapping_error(adapter->dev, queue->msg_token))
  goto map_failed;

 retrc = plpar_hcall_norets(H_REG_CRQ,
       vdev->unit_address,
       queue->msg_token, PAGE_SIZE);
 rc = retrc;

 if (rc == H_RESOURCE)
  rc = ibmvmc_reset_crq_queue(adapter);

 if (rc == 2) {
  dev_warn(adapter->dev, "Partner adapter not ready\n");
  retrc = 0;
 } else if (rc != 0) {
  dev_err(adapter->dev, "Error %d opening adapter\n", rc);
  goto reg_crq_failed;
 }

 queue->cur = 0;
 spin_lock_init(&queue->lock);

 tasklet_init(&adapter->work_task, ibmvmc_task, (unsigned long)adapter);

 if (request_irq(vdev->irq,
   ibmvmc_handle_event,
   0, "ibmvmc", (void *)adapter) != 0) {
  dev_err(adapter->dev, "couldn't register irq 0x%x\n",
   vdev->irq);
  goto req_irq_failed;
 }

 rc = vio_enable_interrupts(vdev);
 if (rc != 0) {
  dev_err(adapter->dev, "Error %d enabling interrupts!!!\n", rc);
  goto req_irq_failed;
 }

 return retrc;

req_irq_failed:



 tasklet_kill(&adapter->work_task);
 h_free_crq(vdev->unit_address);
reg_crq_failed:
 dma_unmap_single(adapter->dev,
    queue->msg_token,
    queue->size * sizeof(*queue->msgs), DMA_BIDIRECTIONAL);
map_failed:
 free_page((unsigned long)queue->msgs);
malloc_failed:
 return -ENOMEM;
}
