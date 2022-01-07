
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_trans_pcie {struct iwl_rxq* rxq; } ;
struct iwl_trans {int num_rx_queues; } ;
struct iwl_rxq {int need_update; int lock; } ;


 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int iwl_pcie_rxq_inc_wr_ptr (struct iwl_trans*,struct iwl_rxq*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void iwl_pcie_rxq_check_wrptr(struct iwl_trans *trans)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);
 int i;

 for (i = 0; i < trans->num_rx_queues; i++) {
  struct iwl_rxq *rxq = &trans_pcie->rxq[i];

  if (!rxq->need_update)
   continue;
  spin_lock(&rxq->lock);
  iwl_pcie_rxq_inc_wr_ptr(trans, rxq);
  rxq->need_update = 0;
  spin_unlock(&rxq->lock);
 }
}
