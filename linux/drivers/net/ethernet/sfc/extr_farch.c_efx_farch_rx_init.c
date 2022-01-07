
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ entries; scalar_t__ index; } ;
struct efx_rx_queue {TYPE_3__ rxd; scalar_t__ scatter_n; struct efx_nic* efx; } ;
struct efx_nic {int rx_scatter; TYPE_1__* type; int net_dev; } ;
typedef int efx_oword_t ;
struct TYPE_5__ {int channel; } ;
struct TYPE_4__ {int rxd_ptr_tbl_base; } ;


 int EFX_POPULATE_OWORD_10 (int ,int ,int,int ,int,int ,scalar_t__,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int,int ,int) ;
 int FRF_AZ_RX_DESCQ_BUF_BASE_ID ;
 int FRF_AZ_RX_DESCQ_EN ;
 int FRF_AZ_RX_DESCQ_EVQ_ID ;
 int FRF_AZ_RX_DESCQ_JUMBO ;
 int FRF_AZ_RX_DESCQ_LABEL ;
 int FRF_AZ_RX_DESCQ_OWNER_ID ;
 int FRF_AZ_RX_DESCQ_SIZE ;
 int FRF_AZ_RX_DESCQ_TYPE ;
 int FRF_AZ_RX_ISCSI_DDIG_EN ;
 int FRF_AZ_RX_ISCSI_HDIG_EN ;
 int __ffs (scalar_t__) ;
 int efx_init_special_buffer (struct efx_nic*,TYPE_3__*) ;
 TYPE_2__* efx_rx_queue_channel (struct efx_rx_queue*) ;
 int efx_rx_queue_index (struct efx_rx_queue*) ;
 int efx_writeo_table (struct efx_nic*,int *,int ,int ) ;
 int hw ;
 int netif_dbg (struct efx_nic*,int ,int ,char*,int ,scalar_t__,scalar_t__) ;

void efx_farch_rx_init(struct efx_rx_queue *rx_queue)
{
 efx_oword_t rx_desc_ptr;
 struct efx_nic *efx = rx_queue->efx;
 bool jumbo_en;


 jumbo_en = efx->rx_scatter;

 netif_dbg(efx, hw, efx->net_dev,
    "RX queue %d ring in special buffers %d-%d\n",
    efx_rx_queue_index(rx_queue), rx_queue->rxd.index,
    rx_queue->rxd.index + rx_queue->rxd.entries - 1);

 rx_queue->scatter_n = 0;


 efx_init_special_buffer(efx, &rx_queue->rxd);


 EFX_POPULATE_OWORD_10(rx_desc_ptr,
         FRF_AZ_RX_ISCSI_DDIG_EN, 1,
         FRF_AZ_RX_ISCSI_HDIG_EN, 1,
         FRF_AZ_RX_DESCQ_BUF_BASE_ID, rx_queue->rxd.index,
         FRF_AZ_RX_DESCQ_EVQ_ID,
         efx_rx_queue_channel(rx_queue)->channel,
         FRF_AZ_RX_DESCQ_OWNER_ID, 0,
         FRF_AZ_RX_DESCQ_LABEL,
         efx_rx_queue_index(rx_queue),
         FRF_AZ_RX_DESCQ_SIZE,
         __ffs(rx_queue->rxd.entries),
         FRF_AZ_RX_DESCQ_TYPE, 0 ,
         FRF_AZ_RX_DESCQ_JUMBO, jumbo_en,
         FRF_AZ_RX_DESCQ_EN, 1);
 efx_writeo_table(efx, &rx_desc_ptr, efx->type->rxd_ptr_tbl_base,
    efx_rx_queue_index(rx_queue));
}
