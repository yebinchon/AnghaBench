
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct iwl_txq {scalar_t__ read_ptr; scalar_t__ write_ptr; int lock; struct iwl_trans_pcie* trans_pcie; } ;
struct iwl_trans_pcie {int dummy; } ;
struct iwl_trans {int dummy; } ;


 struct iwl_txq* from_timer (int ,struct timer_list*,int ) ;
 int iwl_force_nmi (struct iwl_trans*) ;
 struct iwl_trans* iwl_trans_pcie_get_trans (struct iwl_trans_pcie*) ;
 int iwl_trans_pcie_log_scd_error (struct iwl_trans*,struct iwl_txq*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stuck_timer ;
 struct iwl_txq* txq ;

__attribute__((used)) static void iwl_pcie_txq_stuck_timer(struct timer_list *t)
{
 struct iwl_txq *txq = from_timer(txq, t, stuck_timer);
 struct iwl_trans_pcie *trans_pcie = txq->trans_pcie;
 struct iwl_trans *trans = iwl_trans_pcie_get_trans(trans_pcie);

 spin_lock(&txq->lock);

 if (txq->read_ptr == txq->write_ptr) {
  spin_unlock(&txq->lock);
  return;
 }
 spin_unlock(&txq->lock);

 iwl_trans_pcie_log_scd_error(trans, txq);

 iwl_force_nmi(trans);
}
