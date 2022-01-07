
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {int len; scalar_t__ dma_addr; } ;
struct TYPE_4__ {TYPE_1__ buf; } ;
struct efx_rx_queue {TYPE_2__ rxd; scalar_t__ ptr_mask; scalar_t__ scatter_len; scalar_t__ scatter_n; struct efx_nic* efx; } ;
struct efx_nic {int net_dev; struct efx_ef10_nic_data* nic_data; } ;
struct efx_ef10_nic_data {scalar_t__ vport_id; } ;
struct efx_channel {scalar_t__ channel; } ;
typedef scalar_t__ dma_addr_t ;


 int BUILD_BUG_ON (int) ;
 int EFX_BUF_SIZE ;
 int EFX_MAX_DMAQ_SIZE ;
 int INIT_RXQ_IN_DMA_ADDR ;
 int INIT_RXQ_IN_FLAGS ;
 int INIT_RXQ_IN_FLAG_PREFIX ;
 int INIT_RXQ_IN_FLAG_TIMESTAMP ;
 int INIT_RXQ_IN_INSTANCE ;
 int INIT_RXQ_IN_LABEL ;
 int INIT_RXQ_IN_OWNER_ID ;
 int INIT_RXQ_IN_PORT_ID ;
 int INIT_RXQ_IN_SIZE ;
 int INIT_RXQ_IN_TARGET_EVQ ;
 int MCDI_DECLARE_BUF (int ,size_t) ;
 int MCDI_POPULATE_DWORD_2 (int ,int ,int ,int,int ,int) ;
 int MCDI_SET_ARRAY_QWORD (int ,int ,int,scalar_t__) ;
 int MCDI_SET_DWORD (int ,int ,scalar_t__) ;
 int MC_CMD_INIT_RXQ ;
 size_t MC_CMD_INIT_RXQ_IN_LEN (size_t) ;
 scalar_t__ MC_CMD_INIT_RXQ_OUT_LEN ;
 int efx_mcdi_rpc (struct efx_nic*,int ,int ,size_t,int *,int ,int *) ;
 struct efx_channel* efx_rx_queue_channel (struct efx_rx_queue*) ;
 scalar_t__ efx_rx_queue_index (struct efx_rx_queue*) ;
 int hw ;
 int inbuf ;
 int netdev_WARN (int ,char*,scalar_t__) ;
 int netif_dbg (struct efx_nic*,int ,int ,char*,scalar_t__,size_t,int ) ;

__attribute__((used)) static void efx_ef10_rx_init(struct efx_rx_queue *rx_queue)
{
 MCDI_DECLARE_BUF(inbuf,
    MC_CMD_INIT_RXQ_IN_LEN(EFX_MAX_DMAQ_SIZE * 8 /
      EFX_BUF_SIZE));
 struct efx_channel *channel = efx_rx_queue_channel(rx_queue);
 size_t entries = rx_queue->rxd.buf.len / EFX_BUF_SIZE;
 struct efx_nic *efx = rx_queue->efx;
 struct efx_ef10_nic_data *nic_data = efx->nic_data;
 size_t inlen;
 dma_addr_t dma_addr;
 int rc;
 int i;
 BUILD_BUG_ON(MC_CMD_INIT_RXQ_OUT_LEN != 0);

 rx_queue->scatter_n = 0;
 rx_queue->scatter_len = 0;

 MCDI_SET_DWORD(inbuf, INIT_RXQ_IN_SIZE, rx_queue->ptr_mask + 1);
 MCDI_SET_DWORD(inbuf, INIT_RXQ_IN_TARGET_EVQ, channel->channel);
 MCDI_SET_DWORD(inbuf, INIT_RXQ_IN_LABEL, efx_rx_queue_index(rx_queue));
 MCDI_SET_DWORD(inbuf, INIT_RXQ_IN_INSTANCE,
         efx_rx_queue_index(rx_queue));
 MCDI_POPULATE_DWORD_2(inbuf, INIT_RXQ_IN_FLAGS,
         INIT_RXQ_IN_FLAG_PREFIX, 1,
         INIT_RXQ_IN_FLAG_TIMESTAMP, 1);
 MCDI_SET_DWORD(inbuf, INIT_RXQ_IN_OWNER_ID, 0);
 MCDI_SET_DWORD(inbuf, INIT_RXQ_IN_PORT_ID, nic_data->vport_id);

 dma_addr = rx_queue->rxd.buf.dma_addr;

 netif_dbg(efx, hw, efx->net_dev, "pushing RXQ %d. %zu entries (%llx)\n",
    efx_rx_queue_index(rx_queue), entries, (u64)dma_addr);

 for (i = 0; i < entries; ++i) {
  MCDI_SET_ARRAY_QWORD(inbuf, INIT_RXQ_IN_DMA_ADDR, i, dma_addr);
  dma_addr += EFX_BUF_SIZE;
 }

 inlen = MC_CMD_INIT_RXQ_IN_LEN(entries);

 rc = efx_mcdi_rpc(efx, MC_CMD_INIT_RXQ, inbuf, inlen,
     ((void*)0), 0, ((void*)0));
 if (rc)
  netdev_WARN(efx->net_dev, "failed to initialise RXQ %d\n",
       efx_rx_queue_index(rx_queue));
}
