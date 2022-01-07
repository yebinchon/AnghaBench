
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_trans_pcie {int * txq; int queue_used; } ;
struct iwl_trans {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int iwl_pcie_gen2_txq_free (struct iwl_trans*,int) ;
 int memset (int ,int ,int) ;

void iwl_pcie_gen2_tx_free(struct iwl_trans *trans)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);
 int i;

 memset(trans_pcie->queue_used, 0, sizeof(trans_pcie->queue_used));


 for (i = 0; i < ARRAY_SIZE(trans_pcie->txq); i++) {
  if (!trans_pcie->txq[i])
   continue;

  iwl_pcie_gen2_txq_free(trans, i);
 }
}
