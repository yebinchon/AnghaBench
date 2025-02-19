
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u8 ;
typedef size_t u16 ;
struct ibmvmc_hmc {scalar_t__ state; size_t queue_head; size_t* queue_outbound_msgs; size_t queue_tail; int lock; struct ibmvmc_buffer* buffer; } ;
struct TYPE_5__ {int msg_len; } ;
struct TYPE_4__ {int buffer_id; } ;
struct ibmvmc_crq_msg {size_t hmc_session; size_t hmc_index; TYPE_2__ var3; TYPE_1__ var2; } ;
struct ibmvmc_buffer {scalar_t__ valid; scalar_t__ owner; unsigned long msg_len; scalar_t__ free; int dma_addr_local; int dma_addr_remote; } ;
struct crq_server_adapter {int dev; int liobn; int riobn; } ;
struct TYPE_6__ {size_t max_hmc_index; size_t max_buffer_pool_size; } ;


 scalar_t__ VMC_BUF_OWNER_ALPHA ;
 int VMC_MSG_INVALID_BUFFER_ID ;
 int VMC_MSG_INVALID_HMC_INDEX ;
 size_t be16_to_cpu (int ) ;
 unsigned long be32_to_cpu (int ) ;
 int be64_to_cpu (unsigned long) ;
 int dev_dbg (int ,char*,unsigned int,unsigned int,...) ;
 int dev_err (int ,char*,...) ;
 int h_copy_rdma (unsigned long,int ,int ,int ,int ) ;
 struct ibmvmc_hmc* hmcs ;
 scalar_t__ ibmhmc_state_free ;
 TYPE_3__ ibmvmc ;
 size_t ibmvmc_max_buf_pool_size ;
 int ibmvmc_read_wait ;
 int ibmvmc_send_add_buffer_resp (struct crq_server_adapter*,int ,size_t,size_t,size_t) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static int ibmvmc_recv_msg(struct crq_server_adapter *adapter,
      struct ibmvmc_crq_msg *crq)
{
 struct ibmvmc_buffer *buffer;
 struct ibmvmc_hmc *hmc;
 unsigned long msg_len;
 u8 hmc_index;
 u8 hmc_session;
 u16 buffer_id;
 unsigned long flags;
 int rc = 0;

 if (!crq)
  return -1;


 dev_dbg(adapter->dev, "Recv_msg: msg from HV 0x%016llx 0x%016llx\n",
  be64_to_cpu(*((unsigned long *)crq)),
  be64_to_cpu(*(((unsigned long *)crq) + 1)));

 hmc_session = crq->hmc_session;
 hmc_index = crq->hmc_index;
 buffer_id = be16_to_cpu(crq->var2.buffer_id);
 msg_len = be32_to_cpu(crq->var3.msg_len);

 if (hmc_index > ibmvmc.max_hmc_index) {
  dev_err(adapter->dev, "Recv_msg: invalid hmc_index = 0x%x\n",
   hmc_index);
  ibmvmc_send_add_buffer_resp(adapter, VMC_MSG_INVALID_HMC_INDEX,
         hmc_session, hmc_index, buffer_id);
  return -1;
 }

 if (buffer_id >= ibmvmc.max_buffer_pool_size) {
  dev_err(adapter->dev, "Recv_msg: invalid buffer_id = 0x%x\n",
   buffer_id);
  ibmvmc_send_add_buffer_resp(adapter, VMC_MSG_INVALID_BUFFER_ID,
         hmc_session, hmc_index, buffer_id);
  return -1;
 }

 hmc = &hmcs[hmc_index];
 spin_lock_irqsave(&hmc->lock, flags);

 if (hmc->state == ibmhmc_state_free) {
  dev_err(adapter->dev, "Recv_msg: invalid hmc state = 0x%x\n",
   hmc->state);

  spin_unlock_irqrestore(&hmc->lock, flags);
  return -1;
 }

 buffer = &hmc->buffer[buffer_id];

 if (buffer->valid == 0 || buffer->owner == VMC_BUF_OWNER_ALPHA) {
  dev_err(adapter->dev, "Recv_msg: not valid, or not HV.  0x%x 0x%x\n",
   buffer->valid, buffer->owner);
  spin_unlock_irqrestore(&hmc->lock, flags);
  return -1;
 }


 rc = h_copy_rdma(msg_len,
    adapter->riobn,
    buffer->dma_addr_remote,
    adapter->liobn,
    buffer->dma_addr_local);

 dev_dbg(adapter->dev, "Recv_msg: msg_len = 0x%x, buffer_id = 0x%x, queue_head = 0x%x, hmc_idx = 0x%x\n",
  (unsigned int)msg_len, (unsigned int)buffer_id,
  (unsigned int)hmc->queue_head, (unsigned int)hmc_index);
 buffer->msg_len = msg_len;
 buffer->free = 0;
 buffer->owner = VMC_BUF_OWNER_ALPHA;

 if (rc) {
  dev_err(adapter->dev, "Failure in recv_msg: h_copy_rdma = 0x%x\n",
   rc);
  spin_unlock_irqrestore(&hmc->lock, flags);
  return -1;
 }


 hmc->queue_outbound_msgs[hmc->queue_head] = buffer_id;
 hmc->queue_head++;
 if (hmc->queue_head == ibmvmc_max_buf_pool_size)
  hmc->queue_head = 0;

 if (hmc->queue_head == hmc->queue_tail)
  dev_err(adapter->dev, "outbound buffer queue wrapped.\n");

 spin_unlock_irqrestore(&hmc->lock, flags);

 wake_up_interruptible(&ibmvmc_read_wait);

 return 0;
}
