
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_rx_queue {int need_update; int bd; } ;
struct il_priv {int status; int txq; int lock; struct il_rx_queue rxq; } ;


 int CSR_INT_COALESCING ;
 int ENOMEM ;
 int IL_ERR (char*) ;
 int IL_HOST_INT_CALIB_TIMEOUT_DEF ;
 int S_INIT ;
 int il4965_nic_config (struct il_priv*) ;
 int il4965_rx_init (struct il_priv*,struct il_rx_queue*) ;
 int il4965_rx_queue_reset (struct il_priv*,struct il_rx_queue*) ;
 int il4965_rx_replenish (struct il_priv*) ;
 int il4965_set_pwr_vmain (struct il_priv*) ;
 int il4965_txq_ctx_alloc (struct il_priv*) ;
 int il4965_txq_ctx_reset (struct il_priv*) ;
 int il_apm_init (struct il_priv*) ;
 int il_rx_queue_alloc (struct il_priv*) ;
 int il_rx_queue_update_write_ptr (struct il_priv*,struct il_rx_queue*) ;
 int il_write8 (struct il_priv*,int ,int ) ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int
il4965_hw_nic_init(struct il_priv *il)
{
 unsigned long flags;
 struct il_rx_queue *rxq = &il->rxq;
 int ret;

 spin_lock_irqsave(&il->lock, flags);
 il_apm_init(il);

 il_write8(il, CSR_INT_COALESCING, IL_HOST_INT_CALIB_TIMEOUT_DEF);
 spin_unlock_irqrestore(&il->lock, flags);

 il4965_set_pwr_vmain(il);
 il4965_nic_config(il);


 if (!rxq->bd) {
  ret = il_rx_queue_alloc(il);
  if (ret) {
   IL_ERR("Unable to initialize Rx queue\n");
   return -ENOMEM;
  }
 } else
  il4965_rx_queue_reset(il, rxq);

 il4965_rx_replenish(il);

 il4965_rx_init(il, rxq);

 spin_lock_irqsave(&il->lock, flags);

 rxq->need_update = 1;
 il_rx_queue_update_write_ptr(il, rxq);

 spin_unlock_irqrestore(&il->lock, flags);


 if (!il->txq) {
  ret = il4965_txq_ctx_alloc(il);
  if (ret)
   return ret;
 } else
  il4965_txq_ctx_reset(il);

 set_bit(S_INIT, &il->status);

 return 0;
}
