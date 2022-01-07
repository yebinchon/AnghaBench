
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct iwl_txq {int n_window; TYPE_3__* entries; int dma_addr; void* tfds; void* first_tb_bufs; int first_tb_dma; struct iwl_trans_pcie* trans_pcie; int stuck_timer; } ;
struct iwl_trans_pcie {size_t tfd_size; } ;
struct iwl_trans {int dev; TYPE_2__* trans_cfg; } ;
struct iwl_pcie_txq_entry {int dummy; } ;
struct iwl_device_cmd {int dummy; } ;
struct TYPE_8__ {struct TYPE_8__* cmd; } ;
struct TYPE_7__ {scalar_t__ use_tfh; TYPE_1__* base_params; } ;
struct TYPE_6__ {size_t max_tfd_queue_size; } ;


 int BUILD_BUG_ON (int) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IWL_FIRST_TB_SIZE_ALIGN ;
 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 scalar_t__ WARN_ON (int) ;
 void* dma_alloc_coherent (int ,size_t,int *,int ) ;
 int dma_free_coherent (int ,size_t,void*,int ) ;
 int iwl_pcie_txq_stuck_timer ;
 TYPE_3__* kcalloc (int,int,int ) ;
 int kfree (TYPE_3__*) ;
 TYPE_3__* kmalloc (int,int ) ;
 int timer_setup (int *,int ,int ) ;

int iwl_pcie_txq_alloc(struct iwl_trans *trans, struct iwl_txq *txq,
         int slots_num, bool cmd_queue)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);
 size_t tfd_sz = trans_pcie->tfd_size *
  trans->trans_cfg->base_params->max_tfd_queue_size;
 size_t tb0_buf_sz;
 int i;

 if (WARN_ON(txq->entries || txq->tfds))
  return -EINVAL;

 if (trans->trans_cfg->use_tfh)
  tfd_sz = trans_pcie->tfd_size * slots_num;

 timer_setup(&txq->stuck_timer, iwl_pcie_txq_stuck_timer, 0);
 txq->trans_pcie = trans_pcie;

 txq->n_window = slots_num;

 txq->entries = kcalloc(slots_num,
          sizeof(struct iwl_pcie_txq_entry),
          GFP_KERNEL);

 if (!txq->entries)
  goto error;

 if (cmd_queue)
  for (i = 0; i < slots_num; i++) {
   txq->entries[i].cmd =
    kmalloc(sizeof(struct iwl_device_cmd),
     GFP_KERNEL);
   if (!txq->entries[i].cmd)
    goto error;
  }



 txq->tfds = dma_alloc_coherent(trans->dev, tfd_sz,
           &txq->dma_addr, GFP_KERNEL);
 if (!txq->tfds)
  goto error;

 BUILD_BUG_ON(IWL_FIRST_TB_SIZE_ALIGN != sizeof(*txq->first_tb_bufs));

 tb0_buf_sz = sizeof(*txq->first_tb_bufs) * slots_num;

 txq->first_tb_bufs = dma_alloc_coherent(trans->dev, tb0_buf_sz,
           &txq->first_tb_dma,
           GFP_KERNEL);
 if (!txq->first_tb_bufs)
  goto err_free_tfds;

 return 0;
err_free_tfds:
 dma_free_coherent(trans->dev, tfd_sz, txq->tfds, txq->dma_addr);
error:
 if (txq->entries && cmd_queue)
  for (i = 0; i < slots_num; i++)
   kfree(txq->entries[i].cmd);
 kfree(txq->entries);
 txq->entries = ((void*)0);

 return -ENOMEM;

}
