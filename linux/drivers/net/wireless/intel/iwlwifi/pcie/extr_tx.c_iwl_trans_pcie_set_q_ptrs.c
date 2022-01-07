
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_txq {int write_ptr; int read_ptr; int lock; } ;
struct iwl_trans_pcie {struct iwl_txq** txq; } ;
struct iwl_trans {int dummy; } ;


 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void iwl_trans_pcie_set_q_ptrs(struct iwl_trans *trans, int txq_id, int ptr)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);
 struct iwl_txq *txq = trans_pcie->txq[txq_id];

 spin_lock_bh(&txq->lock);

 txq->write_ptr = ptr;
 txq->read_ptr = txq->write_ptr;

 spin_unlock_bh(&txq->lock);
}
