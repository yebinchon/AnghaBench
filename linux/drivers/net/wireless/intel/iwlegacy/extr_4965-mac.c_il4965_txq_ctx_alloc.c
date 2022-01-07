
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int dma; } ;
struct TYPE_4__ {int max_txq_num; int scd_bc_tbls_size; } ;
struct il_priv {TYPE_2__ scd_bc_tbls; TYPE_2__ kw; TYPE_1__ hw_params; int lock; } ;


 int FH49_KW_MEM_ADDR_REG ;
 int IL_ERR (char*,...) ;
 int IL_KW_SIZE ;
 int il4965_alloc_dma_ptr (struct il_priv*,TYPE_2__*,int ) ;
 int il4965_free_dma_ptr (struct il_priv*,TYPE_2__*) ;
 int il4965_hw_txq_ctx_free (struct il_priv*) ;
 int il4965_txq_set_sched (struct il_priv*,int ) ;
 int il_alloc_txq_mem (struct il_priv*) ;
 int il_tx_queue_init (struct il_priv*,int) ;
 int il_wr (struct il_priv*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int
il4965_txq_ctx_alloc(struct il_priv *il)
{
 int ret, txq_id;
 unsigned long flags;


 il4965_hw_txq_ctx_free(il);

 ret =
     il4965_alloc_dma_ptr(il, &il->scd_bc_tbls,
     il->hw_params.scd_bc_tbls_size);
 if (ret) {
  IL_ERR("Scheduler BC Table allocation failed\n");
  goto error_bc_tbls;
 }

 ret = il4965_alloc_dma_ptr(il, &il->kw, IL_KW_SIZE);
 if (ret) {
  IL_ERR("Keep Warm allocation failed\n");
  goto error_kw;
 }


 ret = il_alloc_txq_mem(il);
 if (ret)
  goto error;

 spin_lock_irqsave(&il->lock, flags);


 il4965_txq_set_sched(il, 0);


 il_wr(il, FH49_KW_MEM_ADDR_REG, il->kw.dma >> 4);

 spin_unlock_irqrestore(&il->lock, flags);


 for (txq_id = 0; txq_id < il->hw_params.max_txq_num; txq_id++) {
  ret = il_tx_queue_init(il, txq_id);
  if (ret) {
   IL_ERR("Tx %d queue init failed\n", txq_id);
   goto error;
  }
 }

 return ret;

error:
 il4965_hw_txq_ctx_free(il);
 il4965_free_dma_ptr(il, &il->kw);
error_kw:
 il4965_free_dma_ptr(il, &il->scd_bc_tbls);
error_bc_tbls:
 return ret;
}
