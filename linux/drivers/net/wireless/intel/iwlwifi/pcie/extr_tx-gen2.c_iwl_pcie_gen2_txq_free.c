
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_txq {int n_window; int stuck_timer; TYPE_1__* entries; } ;
struct iwl_trans_pcie {int cmd_queue; int queue_used; struct iwl_txq** txq; } ;
struct iwl_trans {int dummy; } ;
struct TYPE_2__ {int free_buf; int cmd; } ;


 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 scalar_t__ WARN_ON (int) ;
 int clear_bit (int,int ) ;
 int del_timer_sync (int *) ;
 int iwl_pcie_gen2_txq_free_memory (struct iwl_trans*,struct iwl_txq*) ;
 int iwl_pcie_gen2_txq_unmap (struct iwl_trans*,int) ;
 int kzfree (int ) ;

__attribute__((used)) static void iwl_pcie_gen2_txq_free(struct iwl_trans *trans, int txq_id)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);
 struct iwl_txq *txq = trans_pcie->txq[txq_id];
 int i;

 if (WARN_ON(!txq))
  return;

 iwl_pcie_gen2_txq_unmap(trans, txq_id);


 if (txq_id == trans_pcie->cmd_queue)
  for (i = 0; i < txq->n_window; i++) {
   kzfree(txq->entries[i].cmd);
   kzfree(txq->entries[i].free_buf);
  }
 del_timer_sync(&txq->stuck_timer);

 iwl_pcie_gen2_txq_free_memory(trans, txq);

 trans_pcie->txq[txq_id] = ((void*)0);

 clear_bit(txq_id, trans_pcie->queue_used);
}
