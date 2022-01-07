
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vio_dev {int dummy; } ;
struct ibmvmc_hmc {int lock; int * queue_outbound_msgs; struct ibmvmc_buffer* buffer; scalar_t__ queue_tail; scalar_t__ queue_head; int state; scalar_t__ index; struct crq_server_adapter* adapter; struct ibmvmc_file_session* file_session; } ;
struct ibmvmc_file_session {scalar_t__ valid; } ;
struct ibmvmc_buffer {int dma_addr_local; int real_addr_local; scalar_t__ valid; } ;
struct crq_server_adapter {int dev; } ;
struct TYPE_2__ {int max_mtu; } ;


 int EIO ;
 int VMC_INVALID_BUFFER_ID ;
 int dev_dbg (int ,char*,unsigned long) ;
 int free_dma_buffer (struct vio_dev*,int ,int ,int ) ;
 int ibmhmc_state_free ;
 TYPE_1__ ibmvmc ;
 unsigned long ibmvmc_max_buf_pool_size ;
 int ibmvmc_read_wait ;
 int memset (struct ibmvmc_buffer*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct vio_dev* to_vio_dev (int ) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static int ibmvmc_return_hmc(struct ibmvmc_hmc *hmc, bool release_readers)
{
 struct ibmvmc_buffer *buffer;
 struct crq_server_adapter *adapter;
 struct vio_dev *vdev;
 unsigned long i;
 unsigned long flags;

 if (!hmc || !hmc->adapter)
  return -EIO;

 if (release_readers) {
  if (hmc->file_session) {
   struct ibmvmc_file_session *session = hmc->file_session;

   session->valid = 0;
   wake_up_interruptible(&ibmvmc_read_wait);
  }
 }

 adapter = hmc->adapter;
 vdev = to_vio_dev(adapter->dev);

 spin_lock_irqsave(&hmc->lock, flags);
 hmc->index = 0;
 hmc->state = ibmhmc_state_free;
 hmc->queue_head = 0;
 hmc->queue_tail = 0;
 buffer = hmc->buffer;
 for (i = 0; i < ibmvmc_max_buf_pool_size; i++) {
  if (buffer[i].valid) {
   free_dma_buffer(vdev,
     ibmvmc.max_mtu,
     buffer[i].real_addr_local,
     buffer[i].dma_addr_local);
   dev_dbg(adapter->dev, "Forgot buffer id 0x%lx\n", i);
  }
  memset(&buffer[i], 0, sizeof(struct ibmvmc_buffer));

  hmc->queue_outbound_msgs[i] = VMC_INVALID_BUFFER_ID;
 }

 spin_unlock_irqrestore(&hmc->lock, flags);

 return 0;
}
