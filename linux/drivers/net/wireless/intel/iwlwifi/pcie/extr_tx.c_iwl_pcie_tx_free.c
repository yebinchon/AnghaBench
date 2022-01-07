
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iwl_trans_pcie {int scd_bc_tbls; int kw; int * txq_memory; int ** txq; int queue_used; } ;
struct iwl_trans {TYPE_2__* trans_cfg; } ;
struct TYPE_4__ {TYPE_1__* base_params; } ;
struct TYPE_3__ {int num_of_queues; } ;


 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int iwl_pcie_free_dma_ptr (struct iwl_trans*,int *) ;
 int iwl_pcie_txq_free (struct iwl_trans*,int) ;
 int kfree (int *) ;
 int memset (int ,int ,int) ;

void iwl_pcie_tx_free(struct iwl_trans *trans)
{
 int txq_id;
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);

 memset(trans_pcie->queue_used, 0, sizeof(trans_pcie->queue_used));


 if (trans_pcie->txq_memory) {
  for (txq_id = 0;
       txq_id < trans->trans_cfg->base_params->num_of_queues;
       txq_id++) {
   iwl_pcie_txq_free(trans, txq_id);
   trans_pcie->txq[txq_id] = ((void*)0);
  }
 }

 kfree(trans_pcie->txq_memory);
 trans_pcie->txq_memory = ((void*)0);

 iwl_pcie_free_dma_ptr(trans, &trans_pcie->kw);

 iwl_pcie_free_dma_ptr(trans, &trans_pcie->scd_bc_tbls);
}
