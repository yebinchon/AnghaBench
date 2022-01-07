
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int entries; int index; } ;
struct ef4_tx_queue {int queue; TYPE_3__ txd; TYPE_1__* channel; struct ef4_nic* efx; } ;
struct ef4_nic {TYPE_2__* type; } ;
typedef int ef4_oword_t ;
struct TYPE_5__ {int txd_ptr_tbl_base; } ;
struct TYPE_4__ {int channel; } ;


 int BUILD_BUG_ON (int) ;
 int EF4_MAX_TX_QUEUES ;
 int EF4_POPULATE_OWORD_1 (int ,int ,int ) ;
 int EF4_POPULATE_OWORD_10 (int ,int ,int,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int,int ,int ,int ,int ,int ,int) ;
 scalar_t__ EF4_REV_FALCON_B0 ;
 int EF4_SET_OWORD_FIELD (int ,int ,int) ;
 int EF4_TXQ_TYPE_HIGHPRI ;
 int EF4_TXQ_TYPE_OFFLOAD ;
 int FFE_BZ_TX_PACE_OFF ;
 int FFE_BZ_TX_PACE_RESERVED ;
 int FRF_AZ_TX_DESCQ_BUF_BASE_ID ;
 int FRF_AZ_TX_DESCQ_EN ;
 int FRF_AZ_TX_DESCQ_EVQ_ID ;
 int FRF_AZ_TX_DESCQ_LABEL ;
 int FRF_AZ_TX_DESCQ_OWNER_ID ;
 int FRF_AZ_TX_DESCQ_SIZE ;
 int FRF_AZ_TX_DESCQ_TYPE ;
 int FRF_AZ_TX_ISCSI_DDIG_EN ;
 int FRF_AZ_TX_ISCSI_HDIG_EN ;
 int FRF_BZ_TX_IP_CHKSM_DIS ;
 int FRF_BZ_TX_NON_IP_DROP_DIS ;
 int FRF_BZ_TX_PACE ;
 int FRF_BZ_TX_TCP_CHKSM_DIS ;
 int FR_AA_TX_CHKSM_CFG ;
 int FR_BZ_TX_PACE_TBL ;
 int __clear_bit_le (int,int *) ;
 int __ffs (int ) ;
 int __set_bit_le (int,int *) ;
 int ef4_init_special_buffer (struct ef4_nic*,TYPE_3__*) ;
 scalar_t__ ef4_nic_rev (struct ef4_nic*) ;
 int ef4_reado (struct ef4_nic*,int *,int ) ;
 int ef4_writeo (struct ef4_nic*,int *,int ) ;
 int ef4_writeo_table (struct ef4_nic*,int *,int ,int) ;

void ef4_farch_tx_init(struct ef4_tx_queue *tx_queue)
{
 struct ef4_nic *efx = tx_queue->efx;
 ef4_oword_t reg;


 ef4_init_special_buffer(efx, &tx_queue->txd);


 EF4_POPULATE_OWORD_10(reg,
         FRF_AZ_TX_DESCQ_EN, 1,
         FRF_AZ_TX_ISCSI_DDIG_EN, 0,
         FRF_AZ_TX_ISCSI_HDIG_EN, 0,
         FRF_AZ_TX_DESCQ_BUF_BASE_ID, tx_queue->txd.index,
         FRF_AZ_TX_DESCQ_EVQ_ID,
         tx_queue->channel->channel,
         FRF_AZ_TX_DESCQ_OWNER_ID, 0,
         FRF_AZ_TX_DESCQ_LABEL, tx_queue->queue,
         FRF_AZ_TX_DESCQ_SIZE,
         __ffs(tx_queue->txd.entries),
         FRF_AZ_TX_DESCQ_TYPE, 0,
         FRF_BZ_TX_NON_IP_DROP_DIS, 1);

 if (ef4_nic_rev(efx) >= EF4_REV_FALCON_B0) {
  int csum = tx_queue->queue & EF4_TXQ_TYPE_OFFLOAD;
  EF4_SET_OWORD_FIELD(reg, FRF_BZ_TX_IP_CHKSM_DIS, !csum);
  EF4_SET_OWORD_FIELD(reg, FRF_BZ_TX_TCP_CHKSM_DIS,
        !csum);
 }

 ef4_writeo_table(efx, &reg, efx->type->txd_ptr_tbl_base,
    tx_queue->queue);

 if (ef4_nic_rev(efx) < EF4_REV_FALCON_B0) {

  BUILD_BUG_ON(EF4_MAX_TX_QUEUES > 128);

  ef4_reado(efx, &reg, FR_AA_TX_CHKSM_CFG);
  if (tx_queue->queue & EF4_TXQ_TYPE_OFFLOAD)
   __clear_bit_le(tx_queue->queue, &reg);
  else
   __set_bit_le(tx_queue->queue, &reg);
  ef4_writeo(efx, &reg, FR_AA_TX_CHKSM_CFG);
 }

 if (ef4_nic_rev(efx) >= EF4_REV_FALCON_B0) {
  EF4_POPULATE_OWORD_1(reg,
         FRF_BZ_TX_PACE,
         (tx_queue->queue & EF4_TXQ_TYPE_HIGHPRI) ?
         FFE_BZ_TX_PACE_OFF :
         FFE_BZ_TX_PACE_RESERVED);
  ef4_writeo_table(efx, &reg, FR_BZ_TX_PACE_TBL,
     tx_queue->queue);
 }
}
