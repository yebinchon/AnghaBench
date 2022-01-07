
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct il_priv {int lock; TYPE_3__* txq; scalar_t__ scd_base_addr; TYPE_1__* cfg; } ;
struct TYPE_5__ {int read_ptr; int write_ptr; } ;
struct TYPE_6__ {TYPE_2__ q; } ;
struct TYPE_4__ {int num_of_ampdu_queues; } ;


 int BUILD_RAxTID (int,int) ;
 int EINVAL ;
 int IL49_FIRST_AMPDU_QUEUE ;
 scalar_t__ IL49_SCD_CONTEXT_QUEUE_OFFSET (int) ;
 int IL49_SCD_INTERRUPT_MASK ;
 int IL49_SCD_QUEUECHAIN_SEL ;
 int IL49_SCD_QUEUE_CTX_REG1_WIN_SIZE_MSK ;
 int IL49_SCD_QUEUE_CTX_REG1_WIN_SIZE_POS ;
 int IL49_SCD_QUEUE_CTX_REG2_FRAME_LIMIT_MSK ;
 int IL49_SCD_QUEUE_CTX_REG2_FRAME_LIMIT_POS ;
 int IL_WARN (char*,int,int,int) ;
 int SCD_FRAME_LIMIT ;
 int SCD_WIN_SIZE ;
 int il4965_set_wr_ptrs (struct il_priv*,int,int) ;
 int il4965_sta_tx_modify_enable_tid (struct il_priv*,int,int) ;
 int il4965_tx_queue_set_q2ratid (struct il_priv*,int,int) ;
 int il4965_tx_queue_set_status (struct il_priv*,TYPE_3__*,int,int) ;
 int il4965_tx_queue_stop_scheduler (struct il_priv*,int) ;
 int il_set_bits_prph (struct il_priv*,int ,int) ;
 int il_write_targ_mem (struct il_priv*,scalar_t__,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int
il4965_txq_agg_enable(struct il_priv *il, int txq_id, int tx_fifo, int sta_id,
        int tid, u16 ssn_idx)
{
 unsigned long flags;
 u16 ra_tid;
 int ret;

 if ((IL49_FIRST_AMPDU_QUEUE > txq_id) ||
     (IL49_FIRST_AMPDU_QUEUE +
      il->cfg->num_of_ampdu_queues <= txq_id)) {
  IL_WARN("queue number out of range: %d, must be %d to %d\n",
   txq_id, IL49_FIRST_AMPDU_QUEUE,
   IL49_FIRST_AMPDU_QUEUE +
   il->cfg->num_of_ampdu_queues - 1);
  return -EINVAL;
 }

 ra_tid = BUILD_RAxTID(sta_id, tid);


 ret = il4965_sta_tx_modify_enable_tid(il, sta_id, tid);
 if (ret)
  return ret;

 spin_lock_irqsave(&il->lock, flags);


 il4965_tx_queue_stop_scheduler(il, txq_id);


 il4965_tx_queue_set_q2ratid(il, ra_tid, txq_id);


 il_set_bits_prph(il, IL49_SCD_QUEUECHAIN_SEL, (1 << txq_id));



 il->txq[txq_id].q.read_ptr = (ssn_idx & 0xff);
 il->txq[txq_id].q.write_ptr = (ssn_idx & 0xff);
 il4965_set_wr_ptrs(il, txq_id, ssn_idx);


 il_write_targ_mem(il,
     il->scd_base_addr +
     IL49_SCD_CONTEXT_QUEUE_OFFSET(txq_id),
     (SCD_WIN_SIZE << IL49_SCD_QUEUE_CTX_REG1_WIN_SIZE_POS)
     & IL49_SCD_QUEUE_CTX_REG1_WIN_SIZE_MSK);

 il_write_targ_mem(il,
     il->scd_base_addr +
     IL49_SCD_CONTEXT_QUEUE_OFFSET(txq_id) + sizeof(u32),
     (SCD_FRAME_LIMIT <<
      IL49_SCD_QUEUE_CTX_REG2_FRAME_LIMIT_POS) &
     IL49_SCD_QUEUE_CTX_REG2_FRAME_LIMIT_MSK);

 il_set_bits_prph(il, IL49_SCD_INTERRUPT_MASK, (1 << txq_id));


 il4965_tx_queue_set_status(il, &il->txq[txq_id], tx_fifo, 1);

 spin_unlock_irqrestore(&il->lock, flags);

 return 0;
}
