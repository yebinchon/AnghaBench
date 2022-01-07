
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct iwl_txq {int id; int need_update; int write_ptr; int block; int lock; } ;
struct iwl_trans_pcie {int cmd_queue; } ;
struct iwl_trans {TYPE_3__* trans_cfg; int status; } ;
struct TYPE_6__ {TYPE_2__* csr; TYPE_1__* base_params; } ;
struct TYPE_5__ {int flag_mac_access_req; } ;
struct TYPE_4__ {int shadow_reg_enable; } ;


 int BIT (int ) ;
 int CSR_GP_CNTRL ;
 int CSR_UCODE_DRV_GP1 ;
 int CSR_UCODE_DRV_GP1_BIT_MAC_SLEEP ;
 int HBUS_TARG_WRPTR ;
 int IWL_DEBUG_INFO (struct iwl_trans*,char*,int,int) ;
 int IWL_DEBUG_TX (struct iwl_trans*,char*,int,int) ;
 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int STATUS_TPOWER_PMI ;
 int iwl_read32 (struct iwl_trans*,int ) ;
 int iwl_set_bit (struct iwl_trans*,int ,int ) ;
 int iwl_write32 (struct iwl_trans*,int ,int) ;
 int lockdep_assert_held (int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void iwl_pcie_txq_inc_wr_ptr(struct iwl_trans *trans,
        struct iwl_txq *txq)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);
 u32 reg = 0;
 int txq_id = txq->id;

 lockdep_assert_held(&txq->lock);







 if (!trans->trans_cfg->base_params->shadow_reg_enable &&
     txq_id != trans_pcie->cmd_queue &&
     test_bit(STATUS_TPOWER_PMI, &trans->status)) {





  reg = iwl_read32(trans, CSR_UCODE_DRV_GP1);

  if (reg & CSR_UCODE_DRV_GP1_BIT_MAC_SLEEP) {
   IWL_DEBUG_INFO(trans, "Tx queue %d requesting wakeup, GP1 = 0x%x\n",
           txq_id, reg);
   iwl_set_bit(trans, CSR_GP_CNTRL,
        BIT(trans->trans_cfg->csr->flag_mac_access_req));
   txq->need_update = 1;
   return;
  }
 }





 IWL_DEBUG_TX(trans, "Q:%d WR: 0x%x\n", txq_id, txq->write_ptr);
 if (!txq->block)
  iwl_write32(trans, HBUS_TARG_WRPTR,
       txq->write_ptr | (txq_id << 8));
}
