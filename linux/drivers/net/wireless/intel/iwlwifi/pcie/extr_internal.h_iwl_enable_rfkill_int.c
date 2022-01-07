
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_trans_pcie {int fh_init_mask; int inta_mask; int msix_enabled; } ;
struct iwl_trans {TYPE_1__* trans_cfg; } ;
struct TYPE_2__ {scalar_t__ device_family; } ;


 int CSR_GP_CNTRL ;
 int CSR_GP_CNTRL_REG_FLAG_RFKILL_WAKE_L1A_EN ;
 int CSR_INT_BIT_RF_KILL ;
 int CSR_INT_MASK ;
 int CSR_MSIX_FH_INT_MASK_AD ;
 int IWL_DEBUG_ISR (struct iwl_trans*,char*) ;
 scalar_t__ IWL_DEVICE_FAMILY_9000 ;
 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int MSIX_HW_INT_CAUSES_REG_RF_KILL ;
 int iwl_enable_hw_int_msk_msix (struct iwl_trans*,int ) ;
 int iwl_set_bit (struct iwl_trans*,int ,int ) ;
 int iwl_write32 (struct iwl_trans*,int ,int ) ;

__attribute__((used)) static inline void iwl_enable_rfkill_int(struct iwl_trans *trans)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);

 IWL_DEBUG_ISR(trans, "Enabling rfkill interrupt\n");
 if (!trans_pcie->msix_enabled) {
  trans_pcie->inta_mask = CSR_INT_BIT_RF_KILL;
  iwl_write32(trans, CSR_INT_MASK, trans_pcie->inta_mask);
 } else {
  iwl_write32(trans, CSR_MSIX_FH_INT_MASK_AD,
       trans_pcie->fh_init_mask);
  iwl_enable_hw_int_msk_msix(trans,
        MSIX_HW_INT_CAUSES_REG_RF_KILL);
 }

 if (trans->trans_cfg->device_family >= IWL_DEVICE_FAMILY_9000) {





  iwl_set_bit(trans, CSR_GP_CNTRL,
       CSR_GP_CNTRL_REG_FLAG_RFKILL_WAKE_L1A_EN);
 }
}
