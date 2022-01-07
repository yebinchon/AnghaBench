
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_6__ {int len; scalar_t__ dma_addr; } ;
struct TYPE_7__ {TYPE_2__ buf; } ;
struct efx_tx_queue {int queue; int timestamping; int ptr_mask; int insert_count; int write_count; int tso_version; int handle_tso; TYPE_4__* buffer; TYPE_3__ txd; struct efx_nic* efx; struct efx_channel* channel; } ;
struct efx_nic {int net_dev; TYPE_1__* type; struct efx_ef10_nic_data* nic_data; } ;
struct efx_ef10_nic_data {int licensed_features; int datapath_caps2; int vport_id; int datapath_caps; } ;
struct efx_channel {int channel; } ;
typedef int efx_qword_t ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_8__ {int flags; } ;
struct TYPE_5__ {int (* ptp_set_ts_sync_events ) (struct efx_nic*,int,int) ;} ;


 int BUILD_BUG_ON (int) ;
 int EFX_BUF_SIZE ;
 int EFX_MAX_DMAQ_SIZE ;
 int EFX_POPULATE_QWORD_5 (int ,int ,int,int ,int ,int ,int,int ,int,int ,int) ;
 int EFX_TXQ_TYPE_OFFLOAD ;
 int EFX_TX_BUF_OPTION ;
 int ENOSPC ;
 int ESE_DZ_TX_OPTION_DESC_CRC_CSUM ;
 int ESF_DZ_TX_DESC_IS_OPT ;
 int ESF_DZ_TX_OPTION_IP_CSUM ;
 int ESF_DZ_TX_OPTION_TYPE ;
 int ESF_DZ_TX_OPTION_UDP_TCP_CSUM ;
 int ESF_DZ_TX_TIMESTAMP ;
 int INIT_TXQ_EXT_IN_FLAG_TIMESTAMP ;
 int INIT_TXQ_EXT_IN_FLAG_TSOV2_EN ;
 int INIT_TXQ_IN_DMA_ADDR ;
 int INIT_TXQ_IN_FLAGS ;
 int INIT_TXQ_IN_FLAG_IP_CSUM_DIS ;
 int INIT_TXQ_IN_FLAG_TCP_CSUM_DIS ;
 int INIT_TXQ_IN_INSTANCE ;
 int INIT_TXQ_IN_LABEL ;
 int INIT_TXQ_IN_OWNER_ID ;
 int INIT_TXQ_IN_PORT_ID ;
 int INIT_TXQ_IN_SIZE ;
 int INIT_TXQ_IN_TARGET_EVQ ;
 int LICENSED_V3_FEATURES_TX_TIMESTAMPS_LBN ;
 int MCDI_DECLARE_BUF (int ,size_t) ;
 int MCDI_POPULATE_DWORD_4 (int ,int ,int ,int,int ,int,int ,int,int ,int) ;
 int MCDI_SET_ARRAY_QWORD (int ,int ,int,scalar_t__) ;
 int MCDI_SET_DWORD (int ,int ,int) ;
 int MC_CMD_GET_CAPABILITIES_OUT_TX_TSO_LBN ;
 int MC_CMD_GET_CAPABILITIES_V2_OUT_TX_TSO_V2_LBN ;
 int MC_CMD_INIT_TXQ ;
 int MC_CMD_INIT_TXQ_EXT_IN_LEN ;
 size_t MC_CMD_INIT_TXQ_IN_LEN (size_t) ;
 scalar_t__ MC_CMD_INIT_TXQ_OUT_LEN ;
 int efx_ef10_push_tx_desc (struct efx_tx_queue*,int *) ;
 int efx_ef10_tx_tso_desc ;
 int efx_mcdi_display_error (struct efx_nic*,int ,int ,int *,int ,int) ;
 int efx_mcdi_rpc_quiet (struct efx_nic*,int ,int ,size_t,int *,int ,int *) ;
 int * efx_tx_desc (struct efx_tx_queue*,int ) ;
 int hw ;
 int inbuf ;
 int netdev_WARN (int ,char*,int) ;
 int netif_dbg (struct efx_nic*,int ,int ,char*,int,...) ;
 int netif_warn (struct efx_nic*,int ,int ,char*) ;
 int probe ;
 int stub1 (struct efx_nic*,int,int) ;
 int wmb () ;

__attribute__((used)) static void efx_ef10_tx_init(struct efx_tx_queue *tx_queue)
{
 MCDI_DECLARE_BUF(inbuf, MC_CMD_INIT_TXQ_IN_LEN(EFX_MAX_DMAQ_SIZE * 8 /
             EFX_BUF_SIZE));
 bool csum_offload = tx_queue->queue & EFX_TXQ_TYPE_OFFLOAD;
 size_t entries = tx_queue->txd.buf.len / EFX_BUF_SIZE;
 struct efx_channel *channel = tx_queue->channel;
 struct efx_nic *efx = tx_queue->efx;
 struct efx_ef10_nic_data *nic_data = efx->nic_data;
 bool tso_v2 = 0;
 size_t inlen;
 dma_addr_t dma_addr;
 efx_qword_t *txd;
 int rc;
 int i;
 BUILD_BUG_ON(MC_CMD_INIT_TXQ_OUT_LEN != 0);




 if (!(nic_data->licensed_features &
       (1 << LICENSED_V3_FEATURES_TX_TIMESTAMPS_LBN))) {
  tx_queue->timestamping = 0;

  if (efx->type->ptp_set_ts_sync_events)
   efx->type->ptp_set_ts_sync_events(efx, 0, 0);
 }






 if (csum_offload && (nic_data->datapath_caps2 &
   (1 << MC_CMD_GET_CAPABILITIES_V2_OUT_TX_TSO_V2_LBN)) &&
     !tx_queue->timestamping) {
  tso_v2 = 1;
  netif_dbg(efx, hw, efx->net_dev, "Using TSOv2 for channel %u\n",
    channel->channel);
 }

 MCDI_SET_DWORD(inbuf, INIT_TXQ_IN_SIZE, tx_queue->ptr_mask + 1);
 MCDI_SET_DWORD(inbuf, INIT_TXQ_IN_TARGET_EVQ, channel->channel);
 MCDI_SET_DWORD(inbuf, INIT_TXQ_IN_LABEL, tx_queue->queue);
 MCDI_SET_DWORD(inbuf, INIT_TXQ_IN_INSTANCE, tx_queue->queue);
 MCDI_SET_DWORD(inbuf, INIT_TXQ_IN_OWNER_ID, 0);
 MCDI_SET_DWORD(inbuf, INIT_TXQ_IN_PORT_ID, nic_data->vport_id);

 dma_addr = tx_queue->txd.buf.dma_addr;

 netif_dbg(efx, hw, efx->net_dev, "pushing TXQ %d. %zu entries (%llx)\n",
    tx_queue->queue, entries, (u64)dma_addr);

 for (i = 0; i < entries; ++i) {
  MCDI_SET_ARRAY_QWORD(inbuf, INIT_TXQ_IN_DMA_ADDR, i, dma_addr);
  dma_addr += EFX_BUF_SIZE;
 }

 inlen = MC_CMD_INIT_TXQ_IN_LEN(entries);

 do {
  MCDI_POPULATE_DWORD_4(inbuf, INIT_TXQ_IN_FLAGS,




    INIT_TXQ_EXT_IN_FLAG_TSOV2_EN, tso_v2,
    INIT_TXQ_IN_FLAG_IP_CSUM_DIS, !csum_offload,
    INIT_TXQ_IN_FLAG_TCP_CSUM_DIS, !csum_offload,
    INIT_TXQ_EXT_IN_FLAG_TIMESTAMP,
      tx_queue->timestamping);

  rc = efx_mcdi_rpc_quiet(efx, MC_CMD_INIT_TXQ, inbuf, inlen,
     ((void*)0), 0, ((void*)0));
  if (rc == -ENOSPC && tso_v2) {

   tso_v2 = 0;
   netif_warn(efx, probe, efx->net_dev,
       "TSOv2 context not available to segment in hardware. TCP performance may be reduced.\n");
  } else if (rc) {
   efx_mcdi_display_error(efx, MC_CMD_INIT_TXQ,
            MC_CMD_INIT_TXQ_EXT_IN_LEN,
            ((void*)0), 0, rc);
   goto fail;
  }
 } while (rc);







 tx_queue->buffer[0].flags = EFX_TX_BUF_OPTION;
 tx_queue->insert_count = 1;
 txd = efx_tx_desc(tx_queue, 0);
 EFX_POPULATE_QWORD_5(*txd,
        ESF_DZ_TX_DESC_IS_OPT, 1,
        ESF_DZ_TX_OPTION_TYPE,
        ESE_DZ_TX_OPTION_DESC_CRC_CSUM,
        ESF_DZ_TX_OPTION_UDP_TCP_CSUM, csum_offload,
        ESF_DZ_TX_OPTION_IP_CSUM, csum_offload,
        ESF_DZ_TX_TIMESTAMP, tx_queue->timestamping);
 tx_queue->write_count = 1;

 if (tso_v2) {
  tx_queue->handle_tso = efx_ef10_tx_tso_desc;
  tx_queue->tso_version = 2;
 } else if (nic_data->datapath_caps &
   (1 << MC_CMD_GET_CAPABILITIES_OUT_TX_TSO_LBN)) {
  tx_queue->tso_version = 1;
 }

 wmb();
 efx_ef10_push_tx_desc(tx_queue, txd);

 return;

fail:
 netdev_WARN(efx->net_dev, "failed to initialise TXQ %d\n",
      tx_queue->queue);
}
