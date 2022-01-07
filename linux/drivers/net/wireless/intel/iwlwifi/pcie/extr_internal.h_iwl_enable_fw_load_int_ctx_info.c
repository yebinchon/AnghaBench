
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_trans_pcie {int inta_mask; int fh_init_mask; int msix_enabled; } ;
struct iwl_trans {int dummy; } ;


 int CSR_INT_BIT_ALIVE ;
 int CSR_INT_BIT_FH_RX ;
 int CSR_INT_MASK ;
 int IWL_DEBUG_ISR (struct iwl_trans*,char*) ;
 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int MSIX_HW_INT_CAUSES_REG_ALIVE ;
 int iwl_enable_fh_int_msk_msix (struct iwl_trans*,int ) ;
 int iwl_enable_hw_int_msk_msix (struct iwl_trans*,int ) ;
 int iwl_write32 (struct iwl_trans*,int ,int) ;

__attribute__((used)) static inline void iwl_enable_fw_load_int_ctx_info(struct iwl_trans *trans)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);

 IWL_DEBUG_ISR(trans, "Enabling ALIVE interrupt only\n");

 if (!trans_pcie->msix_enabled) {







  trans_pcie->inta_mask = CSR_INT_BIT_ALIVE | CSR_INT_BIT_FH_RX;
  iwl_write32(trans, CSR_INT_MASK, trans_pcie->inta_mask);
 } else {
  iwl_enable_hw_int_msk_msix(trans,
        MSIX_HW_INT_CAUSES_REG_ALIVE);




  iwl_enable_fh_int_msk_msix(trans, trans_pcie->fh_init_mask);
 }
}
