
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct hl_device {int device_cpu_disabled; TYPE_1__* asic_funcs; int send_cpu_message_lock; int dev; scalar_t__ disabled; } ;
struct armcp_packet {int result; int ctl; int fence; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int (* cpu_accessible_dma_pool_free ) (struct hl_device*,int ,struct armcp_packet*) ;struct armcp_packet* (* cpu_accessible_dma_pool_alloc ) (struct hl_device*,int ,int *) ;} ;


 int ARMCP_PACKET_FENCE_VAL ;
 int ARMCP_PKT_CTL_OPCODE_MASK ;
 int ARMCP_PKT_CTL_OPCODE_SHIFT ;
 int ARMCP_PKT_CTL_RC_MASK ;
 int ARMCP_PKT_CTL_RC_SHIFT ;
 int EIO ;
 int ENOMEM ;
 int ETIMEDOUT ;
 int dev_err (int ,char*,...) ;
 int hl_hw_queue_inc_ci_kernel (struct hl_device*,int) ;
 int hl_hw_queue_send_cb_no_cmpl (struct hl_device*,int,int ,int ) ;
 int hl_poll_timeout_memory (struct hl_device*,int *,int,int,int,int,int) ;
 int le32_to_cpu (int ) ;
 scalar_t__ le64_to_cpu (int ) ;
 int memcpy (struct armcp_packet*,int*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct armcp_packet* stub1 (struct hl_device*,int ,int *) ;
 int stub2 (struct hl_device*,int ,struct armcp_packet*) ;

int hl_fw_send_cpu_message(struct hl_device *hdev, u32 hw_queue_id, u32 *msg,
    u16 len, u32 timeout, long *result)
{
 struct armcp_packet *pkt;
 dma_addr_t pkt_dma_addr;
 u32 tmp;
 int rc = 0;

 pkt = hdev->asic_funcs->cpu_accessible_dma_pool_alloc(hdev, len,
        &pkt_dma_addr);
 if (!pkt) {
  dev_err(hdev->dev,
   "Failed to allocate DMA memory for packet to CPU\n");
  return -ENOMEM;
 }

 memcpy(pkt, msg, len);

 mutex_lock(&hdev->send_cpu_message_lock);

 if (hdev->disabled)
  goto out;

 if (hdev->device_cpu_disabled) {
  rc = -EIO;
  goto out;
 }

 rc = hl_hw_queue_send_cb_no_cmpl(hdev, hw_queue_id, len, pkt_dma_addr);
 if (rc) {
  dev_err(hdev->dev, "Failed to send CB on CPU PQ (%d)\n", rc);
  goto out;
 }

 rc = hl_poll_timeout_memory(hdev, &pkt->fence, tmp,
    (tmp == ARMCP_PACKET_FENCE_VAL), 1000,
    timeout, 1);

 hl_hw_queue_inc_ci_kernel(hdev, hw_queue_id);

 if (rc == -ETIMEDOUT) {
  dev_err(hdev->dev, "Device CPU packet timeout (0x%x)\n", tmp);
  hdev->device_cpu_disabled = 1;
  goto out;
 }

 tmp = le32_to_cpu(pkt->ctl);

 rc = (tmp & ARMCP_PKT_CTL_RC_MASK) >> ARMCP_PKT_CTL_RC_SHIFT;
 if (rc) {
  dev_err(hdev->dev, "F/W ERROR %d for CPU packet %d\n",
   rc,
   (tmp & ARMCP_PKT_CTL_OPCODE_MASK)
      >> ARMCP_PKT_CTL_OPCODE_SHIFT);
  rc = -EIO;
 } else if (result) {
  *result = (long) le64_to_cpu(pkt->result);
 }

out:
 mutex_unlock(&hdev->send_cpu_message_lock);

 hdev->asic_funcs->cpu_accessible_dma_pool_free(hdev, len, pkt);

 return rc;
}
