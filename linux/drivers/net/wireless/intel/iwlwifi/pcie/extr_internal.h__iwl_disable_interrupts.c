
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_trans_pcie {int fh_init_mask; int hw_init_mask; int msix_enabled; } ;
struct iwl_trans {int status; } ;


 int CSR_FH_INT_STATUS ;
 int CSR_INT ;
 int CSR_INT_MASK ;
 int CSR_MSIX_FH_INT_MASK_AD ;
 int CSR_MSIX_HW_INT_MASK_AD ;
 int IWL_DEBUG_ISR (struct iwl_trans*,char*) ;
 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int STATUS_INT_ENABLED ;
 int clear_bit (int ,int *) ;
 int iwl_write32 (struct iwl_trans*,int ,int) ;

__attribute__((used)) static inline void _iwl_disable_interrupts(struct iwl_trans *trans)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);

 clear_bit(STATUS_INT_ENABLED, &trans->status);
 if (!trans_pcie->msix_enabled) {

  iwl_write32(trans, CSR_INT_MASK, 0x00000000);



  iwl_write32(trans, CSR_INT, 0xffffffff);
  iwl_write32(trans, CSR_FH_INT_STATUS, 0xffffffff);
 } else {

  iwl_write32(trans, CSR_MSIX_FH_INT_MASK_AD,
       trans_pcie->fh_init_mask);
  iwl_write32(trans, CSR_MSIX_HW_INT_MASK_AD,
       trans_pcie->hw_init_mask);
 }
 IWL_DEBUG_ISR(trans, "Disabled interrupts\n");
}
