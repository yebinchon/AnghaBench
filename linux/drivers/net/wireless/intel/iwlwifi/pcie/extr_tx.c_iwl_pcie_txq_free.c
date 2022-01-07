
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct iwl_txq {int n_window; int stuck_timer; TYPE_3__* entries; scalar_t__ first_tb_dma; int * first_tb_bufs; int * tfds; scalar_t__ dma_addr; } ;
struct iwl_trans_pcie {int cmd_queue; int tfd_size; struct iwl_txq** txq; } ;
struct iwl_trans {TYPE_2__* trans_cfg; struct device* dev; } ;
struct device {int dummy; } ;
struct TYPE_6__ {int free_buf; int cmd; } ;
struct TYPE_5__ {TYPE_1__* base_params; } ;
struct TYPE_4__ {int max_tfd_queue_size; } ;


 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 scalar_t__ WARN_ON (int) ;
 int del_timer_sync (int *) ;
 int dma_free_coherent (struct device*,int,int *,scalar_t__) ;
 int iwl_pcie_txq_unmap (struct iwl_trans*,int) ;
 int kfree (TYPE_3__*) ;
 int kzfree (int ) ;
 int memset (struct iwl_txq*,int ,int) ;

__attribute__((used)) static void iwl_pcie_txq_free(struct iwl_trans *trans, int txq_id)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);
 struct iwl_txq *txq = trans_pcie->txq[txq_id];
 struct device *dev = trans->dev;
 int i;

 if (WARN_ON(!txq))
  return;

 iwl_pcie_txq_unmap(trans, txq_id);


 if (txq_id == trans_pcie->cmd_queue)
  for (i = 0; i < txq->n_window; i++) {
   kzfree(txq->entries[i].cmd);
   kzfree(txq->entries[i].free_buf);
  }


 if (txq->tfds) {
  dma_free_coherent(dev,
      trans_pcie->tfd_size *
      trans->trans_cfg->base_params->max_tfd_queue_size,
      txq->tfds, txq->dma_addr);
  txq->dma_addr = 0;
  txq->tfds = ((void*)0);

  dma_free_coherent(dev,
      sizeof(*txq->first_tb_bufs) * txq->n_window,
      txq->first_tb_bufs, txq->first_tb_dma);
 }

 kfree(txq->entries);
 txq->entries = ((void*)0);

 del_timer_sync(&txq->stuck_timer);


 memset(txq, 0, sizeof(*txq));
}
