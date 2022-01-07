
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct iwl_txq {int dma_addr; scalar_t__ write_ptr; scalar_t__ read_ptr; } ;
struct TYPE_6__ {int dma; } ;
struct iwl_trans_pcie {TYPE_3__ kw; struct iwl_txq** txq; } ;
struct iwl_trans {TYPE_2__* trans_cfg; } ;
struct TYPE_5__ {scalar_t__ use_tfh; TYPE_1__* base_params; int gen2; } ;
struct TYPE_4__ {int num_of_queues; } ;


 int FH_KW_MEM_ADDR_REG ;
 int FH_MEM_CBBC_QUEUE (struct iwl_trans*,int) ;
 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 scalar_t__ WARN_ON_ONCE (int ) ;
 int iwl_pcie_tx_start (struct iwl_trans*,int ) ;
 int iwl_pcie_txq_unmap (struct iwl_trans*,int) ;
 int iwl_write_direct32 (struct iwl_trans*,int ,int) ;
 int iwl_write_direct64 (struct iwl_trans*,int ,int) ;

void iwl_trans_pcie_tx_reset(struct iwl_trans *trans)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);
 int txq_id;





 if (WARN_ON_ONCE(trans->trans_cfg->gen2))
  return;

 for (txq_id = 0; txq_id < trans->trans_cfg->base_params->num_of_queues;
      txq_id++) {
  struct iwl_txq *txq = trans_pcie->txq[txq_id];
  if (trans->trans_cfg->use_tfh)
   iwl_write_direct64(trans,
        FH_MEM_CBBC_QUEUE(trans, txq_id),
        txq->dma_addr);
  else
   iwl_write_direct32(trans,
        FH_MEM_CBBC_QUEUE(trans, txq_id),
        txq->dma_addr >> 8);
  iwl_pcie_txq_unmap(trans, txq_id);
  txq->read_ptr = 0;
  txq->write_ptr = 0;
 }


 iwl_write_direct32(trans, FH_KW_MEM_ADDR_REG,
      trans_pcie->kw.dma >> 4);






 iwl_pcie_tx_start(trans, 0);
}
