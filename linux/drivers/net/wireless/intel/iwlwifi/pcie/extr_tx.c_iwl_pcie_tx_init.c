
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int dma; } ;
struct iwl_trans_pcie {int cmd_queue; TYPE_5__** txq; int irq_lock; TYPE_1__ kw; int txq_memory; } ;
struct iwl_trans {TYPE_4__* trans_cfg; TYPE_2__* cfg; } ;
struct TYPE_10__ {int dma_addr; } ;
struct TYPE_9__ {TYPE_3__* base_params; } ;
struct TYPE_8__ {int num_of_queues; } ;
struct TYPE_7__ {int min_256_ba_txq_size; int min_txq_size; } ;


 int FH_KW_MEM_ADDR_REG ;
 int FH_MEM_CBBC_QUEUE (struct iwl_trans*,int) ;
 int IWL_CMD_QUEUE_SIZE ;
 int IWL_DEFAULT_QUEUE_SIZE ;
 int IWL_ERR (struct iwl_trans*,char*,int) ;
 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int SCD_GP_CTRL ;
 int SCD_GP_CTRL_AUTO_ACTIVE_MODE ;
 int SCD_GP_CTRL_ENABLE_31_QUEUES ;
 int iwl_pcie_tx_alloc (struct iwl_trans*) ;
 int iwl_pcie_tx_free (struct iwl_trans*) ;
 int iwl_pcie_txq_init (struct iwl_trans*,TYPE_5__*,int,int) ;
 int iwl_scd_deactivate_fifos (struct iwl_trans*) ;
 int iwl_set_bits_prph (struct iwl_trans*,int ,int ) ;
 int iwl_write_direct32 (struct iwl_trans*,int ,int) ;
 int max_t (int ,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int u32 ;

int iwl_pcie_tx_init(struct iwl_trans *trans)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);
 int ret;
 int txq_id, slots_num;
 bool alloc = 0;

 if (!trans_pcie->txq_memory) {
  ret = iwl_pcie_tx_alloc(trans);
  if (ret)
   goto error;
  alloc = 1;
 }

 spin_lock(&trans_pcie->irq_lock);


 iwl_scd_deactivate_fifos(trans);


 iwl_write_direct32(trans, FH_KW_MEM_ADDR_REG,
      trans_pcie->kw.dma >> 4);

 spin_unlock(&trans_pcie->irq_lock);


 for (txq_id = 0; txq_id < trans->trans_cfg->base_params->num_of_queues;
      txq_id++) {
  bool cmd_queue = (txq_id == trans_pcie->cmd_queue);

  if (cmd_queue)
   slots_num = max_t(u32, IWL_CMD_QUEUE_SIZE,
       trans->cfg->min_txq_size);
  else
   slots_num = max_t(u32, IWL_DEFAULT_QUEUE_SIZE,
       trans->cfg->min_256_ba_txq_size);
  ret = iwl_pcie_txq_init(trans, trans_pcie->txq[txq_id],
     slots_num, cmd_queue);
  if (ret) {
   IWL_ERR(trans, "Tx %d queue init failed\n", txq_id);
   goto error;
  }







  iwl_write_direct32(trans, FH_MEM_CBBC_QUEUE(trans, txq_id),
       trans_pcie->txq[txq_id]->dma_addr >> 8);
 }

 iwl_set_bits_prph(trans, SCD_GP_CTRL, SCD_GP_CTRL_AUTO_ACTIVE_MODE);
 if (trans->trans_cfg->base_params->num_of_queues > 20)
  iwl_set_bits_prph(trans, SCD_GP_CTRL,
      SCD_GP_CTRL_ENABLE_31_QUEUES);

 return 0;
error:

 if (alloc)
  iwl_pcie_tx_free(trans);
 return ret;
}
