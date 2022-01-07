
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iwl_trans_pcie {int fh_mask; } ;
struct iwl_trans {int dummy; } ;


 int CSR_MSIX_FH_INT_MASK_AD ;
 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int iwl_write32 (struct iwl_trans*,int ,int ) ;

__attribute__((used)) static inline void iwl_enable_fh_int_msk_msix(struct iwl_trans *trans, u32 msk)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);

 iwl_write32(trans, CSR_MSIX_FH_INT_MASK_AD, ~msk);
 trans_pcie->fh_mask = msk;
}
