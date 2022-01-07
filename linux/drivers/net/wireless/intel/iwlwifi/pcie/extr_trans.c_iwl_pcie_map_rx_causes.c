
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iwl_trans_pcie {int shared_vec_mask; } ;
struct iwl_trans {int num_rx_queues; } ;


 int BIT (int) ;
 int CSR_MSIX_FH_INT_MASK_AD ;
 int CSR_MSIX_RX_IVAR (int) ;
 int IWL_SHARED_IRQ_FIRST_RSS ;
 int IWL_SHARED_IRQ_NON_RX ;
 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int MSIX_FH_INT_CAUSES_Q (int) ;
 int MSIX_NON_AUTO_CLEAR_CAUSE ;
 int iwl_write32 (struct iwl_trans*,int ,int) ;
 int iwl_write8 (struct iwl_trans*,int ,int) ;

__attribute__((used)) static void iwl_pcie_map_rx_causes(struct iwl_trans *trans)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);
 u32 offset =
  trans_pcie->shared_vec_mask & IWL_SHARED_IRQ_FIRST_RSS ? 1 : 0;
 u32 val, idx;







 val = BIT(MSIX_FH_INT_CAUSES_Q(0));
 for (idx = 1; idx < trans->num_rx_queues; idx++) {
  iwl_write8(trans, CSR_MSIX_RX_IVAR(idx),
      MSIX_FH_INT_CAUSES_Q(idx - offset));
  val |= BIT(MSIX_FH_INT_CAUSES_Q(idx));
 }
 iwl_write32(trans, CSR_MSIX_FH_INT_MASK_AD, ~val);

 val = MSIX_FH_INT_CAUSES_Q(0);
 if (trans_pcie->shared_vec_mask & IWL_SHARED_IRQ_NON_RX)
  val |= MSIX_NON_AUTO_CLEAR_CAUSE;
 iwl_write8(trans, CSR_MSIX_RX_IVAR(0), val);

 if (trans_pcie->shared_vec_mask & IWL_SHARED_IRQ_FIRST_RSS)
  iwl_write8(trans, CSR_MSIX_RX_IVAR(1), val);
}
