
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iwl_trans_pcie {int txq_memory; int queue_used; int queue_stopped; } ;
struct iwl_trans {TYPE_1__* trans_cfg; } ;
struct TYPE_4__ {int num_of_queues; } ;
struct TYPE_3__ {TYPE_2__* base_params; } ;


 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int iwl_pcie_tx_stop_fh (struct iwl_trans*) ;
 int iwl_pcie_txq_unmap (struct iwl_trans*,int) ;
 int iwl_scd_deactivate_fifos (struct iwl_trans*) ;
 int memset (int ,int ,int) ;

int iwl_pcie_tx_stop(struct iwl_trans *trans)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);
 int txq_id;


 iwl_scd_deactivate_fifos(trans);


 iwl_pcie_tx_stop_fh(trans);






 memset(trans_pcie->queue_stopped, 0, sizeof(trans_pcie->queue_stopped));
 memset(trans_pcie->queue_used, 0, sizeof(trans_pcie->queue_used));


 if (!trans_pcie->txq_memory)
  return 0;


 for (txq_id = 0; txq_id < trans->trans_cfg->base_params->num_of_queues;
      txq_id++)
  iwl_pcie_txq_unmap(trans, txq_id);

 return 0;
}
