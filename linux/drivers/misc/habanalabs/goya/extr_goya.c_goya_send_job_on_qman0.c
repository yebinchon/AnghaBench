
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct packet_msg_prot {int addr; void* value; void* ctl; } ;
struct hl_device {TYPE_1__* asic_funcs; int dev; scalar_t__ pldm; } ;
struct hl_cs_job {int job_cb_size; struct hl_cb* patched_cb; } ;
struct hl_cb {int kernel_address; int bus_address; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int* (* asic_dma_pool_zalloc ) (struct hl_device*,int,int ,int *) ;int (* asic_dma_pool_free ) (struct hl_device*,void*,int ) ;int (* is_device_idle ) (struct hl_device*,int *,int *) ;} ;


 int EBUSY ;
 int ENOMEM ;
 int ETIMEDOUT ;
 int GFP_KERNEL ;
 int GOYA_PKT_CTL_EB_SHIFT ;
 int GOYA_PKT_CTL_MB_SHIFT ;
 int GOYA_PKT_CTL_OPCODE_SHIFT ;
 int GOYA_PLDM_QMAN0_TIMEOUT_USEC ;
 int GOYA_QMAN0_FENCE_VAL ;
 int GOYA_QUEUE_ID_DMA_0 ;
 int HL_DEVICE_TIMEOUT_USEC ;
 int PACKET_MSG_PROT ;
 void* cpu_to_le32 (int) ;
 int cpu_to_le64 (int ) ;
 int dev_err (int ,char*,...) ;
 int dev_err_ratelimited (int ,char*) ;
 int goya_qman0_set_security (struct hl_device*,int) ;
 int hl_hw_queue_inc_ci_kernel (struct hl_device*,int ) ;
 int hl_hw_queue_send_cb_no_cmpl (struct hl_device*,int ,int,int ) ;
 int hl_poll_timeout_memory (struct hl_device*,int*,int,int,int,int,int) ;
 int stub1 (struct hl_device*,int *,int *) ;
 int* stub2 (struct hl_device*,int,int ,int *) ;
 int stub3 (struct hl_device*,void*,int ) ;

__attribute__((used)) static int goya_send_job_on_qman0(struct hl_device *hdev, struct hl_cs_job *job)
{
 struct packet_msg_prot *fence_pkt;
 u32 *fence_ptr;
 dma_addr_t fence_dma_addr;
 struct hl_cb *cb;
 u32 tmp, timeout;
 int rc;

 if (hdev->pldm)
  timeout = GOYA_PLDM_QMAN0_TIMEOUT_USEC;
 else
  timeout = HL_DEVICE_TIMEOUT_USEC;

 if (!hdev->asic_funcs->is_device_idle(hdev, ((void*)0), ((void*)0))) {
  dev_err_ratelimited(hdev->dev,
   "Can't send driver job on QMAN0 because the device is not idle\n");
  return -EBUSY;
 }

 fence_ptr = hdev->asic_funcs->asic_dma_pool_zalloc(hdev, 4, GFP_KERNEL,
       &fence_dma_addr);
 if (!fence_ptr) {
  dev_err(hdev->dev,
   "Failed to allocate fence memory for QMAN0\n");
  return -ENOMEM;
 }

 goya_qman0_set_security(hdev, 1);

 cb = job->patched_cb;

 fence_pkt = (struct packet_msg_prot *) (uintptr_t) (cb->kernel_address +
   job->job_cb_size - sizeof(struct packet_msg_prot));

 tmp = (PACKET_MSG_PROT << GOYA_PKT_CTL_OPCODE_SHIFT) |
   (1 << GOYA_PKT_CTL_EB_SHIFT) |
   (1 << GOYA_PKT_CTL_MB_SHIFT);
 fence_pkt->ctl = cpu_to_le32(tmp);
 fence_pkt->value = cpu_to_le32(GOYA_QMAN0_FENCE_VAL);
 fence_pkt->addr = cpu_to_le64(fence_dma_addr);

 rc = hl_hw_queue_send_cb_no_cmpl(hdev, GOYA_QUEUE_ID_DMA_0,
     job->job_cb_size, cb->bus_address);
 if (rc) {
  dev_err(hdev->dev, "Failed to send CB on QMAN0, %d\n", rc);
  goto free_fence_ptr;
 }

 rc = hl_poll_timeout_memory(hdev, fence_ptr, tmp,
    (tmp == GOYA_QMAN0_FENCE_VAL), 1000,
    timeout, 1);

 hl_hw_queue_inc_ci_kernel(hdev, GOYA_QUEUE_ID_DMA_0);

 if (rc == -ETIMEDOUT) {
  dev_err(hdev->dev, "QMAN0 Job timeout (0x%x)\n", tmp);
  goto free_fence_ptr;
 }

free_fence_ptr:
 hdev->asic_funcs->asic_dma_pool_free(hdev, (void *) fence_ptr,
     fence_dma_addr);

 goya_qman0_set_security(hdev, 0);

 return rc;
}
