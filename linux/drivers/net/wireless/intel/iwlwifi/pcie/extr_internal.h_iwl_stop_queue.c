
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_txq {int id; } ;
struct iwl_trans_pcie {int queue_stopped; } ;
struct iwl_trans {int op_mode; } ;


 int IWL_DEBUG_TX_QUEUES (struct iwl_trans*,char*,int ) ;
 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int iwl_op_mode_queue_full (int ,int ) ;
 int test_and_set_bit (int ,int ) ;

__attribute__((used)) static inline void iwl_stop_queue(struct iwl_trans *trans,
      struct iwl_txq *txq)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);

 if (!test_and_set_bit(txq->id, trans_pcie->queue_stopped)) {
  iwl_op_mode_queue_full(trans->op_mode, txq->id);
  IWL_DEBUG_TX_QUEUES(trans, "Stop hwq %d\n", txq->id);
 } else
  IWL_DEBUG_TX_QUEUES(trans, "hwq %d already stopped\n",
        txq->id);
}
