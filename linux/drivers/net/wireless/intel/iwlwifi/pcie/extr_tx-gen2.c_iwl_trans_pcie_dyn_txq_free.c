
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_trans_pcie {int queue_used; } ;
struct iwl_trans {int status; } ;


 int IWL_DEBUG_TX_QUEUES (struct iwl_trans*,char*,int) ;
 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int STATUS_DEVICE_ENABLED ;
 int WARN_ONCE (int ,char*,int) ;
 int iwl_pcie_gen2_txq_unmap (struct iwl_trans*,int) ;
 int test_and_clear_bit (int,int ) ;
 int test_bit (int ,int *) ;

void iwl_trans_pcie_dyn_txq_free(struct iwl_trans *trans, int queue)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);







 if (!test_and_clear_bit(queue, trans_pcie->queue_used)) {
  WARN_ONCE(test_bit(STATUS_DEVICE_ENABLED, &trans->status),
     "queue %d not used", queue);
  return;
 }

 iwl_pcie_gen2_txq_unmap(trans, queue);

 IWL_DEBUG_TX_QUEUES(trans, "Deactivate queue %d\n", queue);
}
