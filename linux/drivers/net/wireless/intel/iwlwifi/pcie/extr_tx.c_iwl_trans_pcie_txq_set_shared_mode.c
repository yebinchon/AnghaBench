
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct iwl_txq {int ampdu; } ;
struct iwl_trans_pcie {struct iwl_txq** txq; } ;
struct iwl_trans {int dummy; } ;


 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;

void iwl_trans_pcie_txq_set_shared_mode(struct iwl_trans *trans, u32 txq_id,
     bool shared_mode)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);
 struct iwl_txq *txq = trans_pcie->txq[txq_id];

 txq->ampdu = !shared_mode;
}
