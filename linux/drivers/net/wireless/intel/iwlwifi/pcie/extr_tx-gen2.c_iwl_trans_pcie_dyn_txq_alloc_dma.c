
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwlagn_scd_bc_tbl {int dummy; } ;
struct iwl_txq {int wd_timeout; int bc_tbl; } ;
struct iwl_trans {TYPE_1__* trans_cfg; } ;
struct iwl_gen3_bc_tbl {int dummy; } ;
struct TYPE_2__ {scalar_t__ device_family; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IWL_DEVICE_FAMILY_22560 ;
 int IWL_ERR (struct iwl_trans*,char*) ;
 int iwl_pcie_alloc_dma_ptr (struct iwl_trans*,int *,int) ;
 int iwl_pcie_gen2_txq_free_memory (struct iwl_trans*,struct iwl_txq*) ;
 int iwl_pcie_txq_alloc (struct iwl_trans*,struct iwl_txq*,int,int) ;
 int iwl_pcie_txq_init (struct iwl_trans*,struct iwl_txq*,int,int) ;
 int kfree (struct iwl_txq*) ;
 struct iwl_txq* kzalloc (int,int ) ;
 int msecs_to_jiffies (unsigned int) ;

int iwl_trans_pcie_dyn_txq_alloc_dma(struct iwl_trans *trans,
         struct iwl_txq **intxq, int size,
         unsigned int timeout)
{
 int ret;

 struct iwl_txq *txq;
 txq = kzalloc(sizeof(*txq), GFP_KERNEL);
 if (!txq)
  return -ENOMEM;
 ret = iwl_pcie_alloc_dma_ptr(trans, &txq->bc_tbl,
         (trans->trans_cfg->device_family >=
          IWL_DEVICE_FAMILY_22560) ?
         sizeof(struct iwl_gen3_bc_tbl) :
         sizeof(struct iwlagn_scd_bc_tbl));
 if (ret) {
  IWL_ERR(trans, "Scheduler BC Table allocation failed\n");
  kfree(txq);
  return -ENOMEM;
 }

 ret = iwl_pcie_txq_alloc(trans, txq, size, 0);
 if (ret) {
  IWL_ERR(trans, "Tx queue alloc failed\n");
  goto error;
 }
 ret = iwl_pcie_txq_init(trans, txq, size, 0);
 if (ret) {
  IWL_ERR(trans, "Tx queue init failed\n");
  goto error;
 }

 txq->wd_timeout = msecs_to_jiffies(timeout);

 *intxq = txq;
 return 0;

error:
 iwl_pcie_gen2_txq_free_memory(trans, txq);
 return ret;
}
