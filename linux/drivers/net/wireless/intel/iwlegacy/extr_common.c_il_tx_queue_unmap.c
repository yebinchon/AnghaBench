
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct il_queue {scalar_t__ n_bd; scalar_t__ write_ptr; scalar_t__ read_ptr; } ;
struct il_tx_queue {struct il_queue q; } ;
struct il_priv {TYPE_1__* ops; struct il_tx_queue* txq; } ;
struct TYPE_2__ {int (* txq_free_tfd ) (struct il_priv*,struct il_tx_queue*) ;} ;


 scalar_t__ il_queue_inc_wrap (scalar_t__,scalar_t__) ;
 int stub1 (struct il_priv*,struct il_tx_queue*) ;

void
il_tx_queue_unmap(struct il_priv *il, int txq_id)
{
 struct il_tx_queue *txq = &il->txq[txq_id];
 struct il_queue *q = &txq->q;

 if (q->n_bd == 0)
  return;

 while (q->write_ptr != q->read_ptr) {
  il->ops->txq_free_tfd(il, txq);
  q->read_ptr = il_queue_inc_wrap(q->read_ptr, q->n_bd);
 }
}
