
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ entries; scalar_t__ index; } ;
struct ef4_rx_queue {TYPE_3__ rxd; scalar_t__ scatter_n; struct ef4_nic* efx; } ;
struct ef4_nic {TYPE_1__* type; int net_dev; scalar_t__ rx_scatter; } ;
typedef int ef4_oword_t ;
struct TYPE_5__ {int channel; } ;
struct TYPE_4__ {int rxd_ptr_tbl_base; } ;


 int EF4_POPULATE_OWORD_10 (int ,int ,int,int ,int,int ,scalar_t__,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int,int ,int) ;
 scalar_t__ EF4_REV_FALCON_B0 ;
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
 int ef4_init_special_buffer (struct ef4_nic*,TYPE_3__*) ;
 scalar_t__ ef4_nic_rev (struct ef4_nic*) ;
 TYPE_2__* ef4_rx_queue_channel (struct ef4_rx_queue*) ;
 int ef4_rx_queue_index (struct ef4_rx_queue*) ;
 int ef4_writeo_table (struct ef4_nic*,int *,int ,int ) ;
 int hw ;
 int netif_dbg (struct ef4_nic*,int ,int ,char*,int ,scalar_t__,scalar_t__) ;

void ef4_farch_rx_init(struct ef4_rx_queue *rx_queue)
{
 ef4_oword_t rx_desc_ptr;
 struct ef4_nic *efx = rx_queue->efx;
 bool is_b0 = ef4_nic_rev(efx) >= EF4_REV_FALCON_B0;
 bool iscsi_digest_en = is_b0;
 bool jumbo_en;






 jumbo_en = !is_b0 || efx->rx_scatter;

 netif_dbg(efx, hw, efx->net_dev,
    "RX queue %d ring in special buffers %d-%d\n",
    ef4_rx_queue_index(rx_queue), rx_queue->rxd.index,
    rx_queue->rxd.index + rx_queue->rxd.entries - 1);

 rx_queue->scatter_n = 0;


 ef4_init_special_buffer(efx, &rx_queue->rxd);


 EF4_POPULATE_OWORD_10(rx_desc_ptr,
         FRF_AZ_RX_ISCSI_DDIG_EN, iscsi_digest_en,
         FRF_AZ_RX_ISCSI_HDIG_EN, iscsi_digest_en,
         FRF_AZ_RX_DESCQ_BUF_BASE_ID, rx_queue->rxd.index,
         FRF_AZ_RX_DESCQ_EVQ_ID,
         ef4_rx_queue_channel(rx_queue)->channel,
         FRF_AZ_RX_DESCQ_OWNER_ID, 0,
         FRF_AZ_RX_DESCQ_LABEL,
         ef4_rx_queue_index(rx_queue),
         FRF_AZ_RX_DESCQ_SIZE,
         __ffs(rx_queue->rxd.entries),
         FRF_AZ_RX_DESCQ_TYPE, 0 ,
         FRF_AZ_RX_DESCQ_JUMBO, jumbo_en,
         FRF_AZ_RX_DESCQ_EN, 1);
 ef4_writeo_table(efx, &rx_desc_ptr, efx->type->rxd_ptr_tbl_base,
    ef4_rx_queue_index(rx_queue));
}
