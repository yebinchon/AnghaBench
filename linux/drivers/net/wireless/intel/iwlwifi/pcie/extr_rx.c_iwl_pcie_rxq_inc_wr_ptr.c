
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct iwl_trans {TYPE_3__* trans_cfg; int status; } ;
struct iwl_rxq {int need_update; int write_actual; int id; int write; int lock; } ;
struct TYPE_6__ {scalar_t__ device_family; scalar_t__ mq_rx_supported; TYPE_2__* csr; TYPE_1__* base_params; } ;
struct TYPE_5__ {int flag_mac_access_req; } ;
struct TYPE_4__ {int shadow_reg_enable; } ;


 int BIT (int ) ;
 int CSR_GP_CNTRL ;
 int CSR_UCODE_DRV_GP1 ;
 int CSR_UCODE_DRV_GP1_BIT_MAC_SLEEP ;
 int FH_RSCSR_CHNL0_WPTR ;
 int FIRST_RX_QUEUE ;
 int HBUS_TARG_WRPTR ;
 int IWL_DEBUG_INFO (struct iwl_trans*,char*,int) ;
 scalar_t__ IWL_DEVICE_FAMILY_22560 ;
 int RFH_Q_FRBDCB_WIDX_TRG (int) ;
 int STATUS_TPOWER_PMI ;
 int iwl_read32 (struct iwl_trans*,int ) ;
 int iwl_set_bit (struct iwl_trans*,int ,int ) ;
 int iwl_write32 (struct iwl_trans*,int ,int) ;
 int lockdep_assert_held (int *) ;
 int round_down (int ,int) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void iwl_pcie_rxq_inc_wr_ptr(struct iwl_trans *trans,
        struct iwl_rxq *rxq)
{
 u32 reg;

 lockdep_assert_held(&rxq->lock);






 if (!trans->trans_cfg->base_params->shadow_reg_enable &&
     test_bit(STATUS_TPOWER_PMI, &trans->status)) {
  reg = iwl_read32(trans, CSR_UCODE_DRV_GP1);

  if (reg & CSR_UCODE_DRV_GP1_BIT_MAC_SLEEP) {
   IWL_DEBUG_INFO(trans, "Rx queue requesting wakeup, GP1 = 0x%x\n",
           reg);
   iwl_set_bit(trans, CSR_GP_CNTRL,
        BIT(trans->trans_cfg->csr->flag_mac_access_req));
   rxq->need_update = 1;
   return;
  }
 }

 rxq->write_actual = round_down(rxq->write, 8);
 if (trans->trans_cfg->device_family == IWL_DEVICE_FAMILY_22560)
  iwl_write32(trans, HBUS_TARG_WRPTR,
       (rxq->write_actual |
        ((FIRST_RX_QUEUE + rxq->id) << 16)));
 else if (trans->trans_cfg->mq_rx_supported)
  iwl_write32(trans, RFH_Q_FRBDCB_WIDX_TRG(rxq->id),
       rxq->write_actual);
 else
  iwl_write32(trans, FH_RSCSR_CHNL0_WPTR, rxq->write_actual);
}
