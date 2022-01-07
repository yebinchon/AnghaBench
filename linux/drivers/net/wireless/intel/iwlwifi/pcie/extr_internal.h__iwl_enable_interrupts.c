
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_trans_pcie {int hw_mask; int fh_mask; int fh_init_mask; int hw_init_mask; int inta_mask; int msix_enabled; } ;
struct iwl_trans {int status; } ;


 int CSR_INI_SET_MASK ;
 int CSR_INT_MASK ;
 int CSR_MSIX_FH_INT_MASK_AD ;
 int CSR_MSIX_HW_INT_MASK_AD ;
 int IWL_DEBUG_ISR (struct iwl_trans*,char*) ;
 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int STATUS_INT_ENABLED ;
 int iwl_write32 (struct iwl_trans*,int ,int ) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static inline void _iwl_enable_interrupts(struct iwl_trans *trans)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);

 IWL_DEBUG_ISR(trans, "Enabling interrupts\n");
 set_bit(STATUS_INT_ENABLED, &trans->status);
 if (!trans_pcie->msix_enabled) {
  trans_pcie->inta_mask = CSR_INI_SET_MASK;
  iwl_write32(trans, CSR_INT_MASK, trans_pcie->inta_mask);
 } else {




  trans_pcie->hw_mask = trans_pcie->hw_init_mask;
  trans_pcie->fh_mask = trans_pcie->fh_init_mask;
  iwl_write32(trans, CSR_MSIX_FH_INT_MASK_AD,
       ~trans_pcie->fh_mask);
  iwl_write32(trans, CSR_MSIX_HW_INT_MASK_AD,
       ~trans_pcie->hw_mask);
 }
}
