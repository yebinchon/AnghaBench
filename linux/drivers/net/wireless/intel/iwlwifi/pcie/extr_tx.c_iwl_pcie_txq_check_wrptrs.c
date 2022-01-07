
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iwl_txq {int need_update; int lock; } ;
struct iwl_trans_pcie {int queue_used; struct iwl_txq** txq; } ;
struct iwl_trans {TYPE_2__* trans_cfg; } ;
struct TYPE_4__ {TYPE_1__* base_params; } ;
struct TYPE_3__ {int num_of_queues; } ;


 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int iwl_pcie_txq_inc_wr_ptr (struct iwl_trans*,struct iwl_txq*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int test_bit (int,int ) ;

void iwl_pcie_txq_check_wrptrs(struct iwl_trans *trans)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);
 int i;

 for (i = 0; i < trans->trans_cfg->base_params->num_of_queues; i++) {
  struct iwl_txq *txq = trans_pcie->txq[i];

  if (!test_bit(i, trans_pcie->queue_used))
   continue;

  spin_lock_bh(&txq->lock);
  if (txq->need_update) {
   iwl_pcie_txq_inc_wr_ptr(trans, txq);
   txq->need_update = 0;
  }
  spin_unlock_bh(&txq->lock);
 }
}
