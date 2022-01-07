
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u16 ;
struct ibmvmc_crq_msg {size_t hmc_session; size_t hmc_index; } ;
struct ibmvmc_buffer {int dma_addr_local; int real_addr_local; scalar_t__ valid; int id; } ;
struct crq_server_adapter {int dev; } ;
struct TYPE_4__ {int lock; } ;
struct TYPE_3__ {size_t max_hmc_index; int max_mtu; } ;


 int VMC_INVALID_BUFFER_ID ;
 int VMC_MSG_INVALID_HMC_INDEX ;
 int VMC_MSG_NO_BUFFER ;
 int VMC_MSG_SUCCESS ;
 int dev_dbg (int ,char*,int ) ;
 int dev_info (int ,char*) ;
 int dev_warn (int ,char*,size_t) ;
 int free_dma_buffer (int ,int ,int ,int ) ;
 TYPE_2__* hmcs ;
 TYPE_1__ ibmvmc ;
 struct ibmvmc_buffer* ibmvmc_get_free_hmc_buffer (struct crq_server_adapter*,size_t) ;
 int ibmvmc_send_rem_buffer_resp (struct crq_server_adapter*,int ,size_t,size_t,int ) ;
 int memset (struct ibmvmc_buffer*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int to_vio_dev (int ) ;

__attribute__((used)) static int ibmvmc_rem_buffer(struct crq_server_adapter *adapter,
        struct ibmvmc_crq_msg *crq)
{
 struct ibmvmc_buffer *buffer;
 u8 hmc_index;
 u8 hmc_session;
 u16 buffer_id = 0;
 unsigned long flags;
 int rc = 0;

 if (!crq)
  return -1;

 hmc_session = crq->hmc_session;
 hmc_index = crq->hmc_index;

 if (hmc_index > ibmvmc.max_hmc_index) {
  dev_warn(adapter->dev, "rem_buffer: invalid hmc_index = 0x%x\n",
    hmc_index);
  ibmvmc_send_rem_buffer_resp(adapter, VMC_MSG_INVALID_HMC_INDEX,
         hmc_session, hmc_index, buffer_id);
  return -1;
 }

 spin_lock_irqsave(&hmcs[hmc_index].lock, flags);
 buffer = ibmvmc_get_free_hmc_buffer(adapter, hmc_index);
 if (!buffer) {
  dev_info(adapter->dev, "rem_buffer: no buffer to remove\n");
  spin_unlock_irqrestore(&hmcs[hmc_index].lock, flags);
  ibmvmc_send_rem_buffer_resp(adapter, VMC_MSG_NO_BUFFER,
         hmc_session, hmc_index,
         VMC_INVALID_BUFFER_ID);
  return -1;
 }

 buffer_id = buffer->id;

 if (buffer->valid)
  free_dma_buffer(to_vio_dev(adapter->dev),
    ibmvmc.max_mtu,
    buffer->real_addr_local,
    buffer->dma_addr_local);

 memset(buffer, 0, sizeof(struct ibmvmc_buffer));
 spin_unlock_irqrestore(&hmcs[hmc_index].lock, flags);

 dev_dbg(adapter->dev, "rem_buffer: removed buffer 0x%x.\n", buffer_id);
 ibmvmc_send_rem_buffer_resp(adapter, VMC_MSG_SUCCESS, hmc_session,
        hmc_index, buffer_id);

 return rc;
}
