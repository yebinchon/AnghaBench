
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct il_queue {scalar_t__ read_ptr; scalar_t__ write_ptr; int id; } ;
struct il_tx_queue {unsigned long time_stamp; struct il_queue q; } ;
struct il_priv {TYPE_1__* cfg; struct il_tx_queue* txq; } ;
struct TYPE_2__ {int wd_timeout; } ;


 int EAGAIN ;
 int IL_ERR (char*,int ,int ) ;
 int il_force_reset (struct il_priv*,int) ;
 unsigned long jiffies ;
 int jiffies_to_msecs (unsigned long) ;
 unsigned long msecs_to_jiffies (int ) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

__attribute__((used)) static int
il_check_stuck_queue(struct il_priv *il, int cnt)
{
 struct il_tx_queue *txq = &il->txq[cnt];
 struct il_queue *q = &txq->q;
 unsigned long timeout;
 unsigned long now = jiffies;
 int ret;

 if (q->read_ptr == q->write_ptr) {
  txq->time_stamp = now;
  return 0;
 }

 timeout =
     txq->time_stamp +
     msecs_to_jiffies(il->cfg->wd_timeout);

 if (time_after(now, timeout)) {
  IL_ERR("Queue %d stuck for %u ms.\n", q->id,
         jiffies_to_msecs(now - txq->time_stamp));
  ret = il_force_reset(il, 0);
  return (ret == -EAGAIN) ? 0 : 1;
 }

 return 0;
}
