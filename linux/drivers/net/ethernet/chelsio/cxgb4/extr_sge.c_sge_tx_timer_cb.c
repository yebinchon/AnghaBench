
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct sge_uld_txq {int qresume_tsk; } ;
struct TYPE_7__ {int in_use; } ;
struct sge_eth_txq {TYPE_3__ q; } ;
struct sge {unsigned long* txq_maperr; unsigned int ethtxq_rover; unsigned int ethqsets; int tx_timer; int * ethtxq; struct sge_eth_txq ptptxq; struct sge_uld_txq** egr_map; int egr_sz; } ;
struct TYPE_5__ {int chip; } ;
struct adapter {int ptp_lock; TYPE_1__ params; struct sge sge; } ;
struct TYPE_6__ {int tx_timer; } ;


 unsigned int BITS_PER_LONG ;
 unsigned int BITS_TO_LONGS (int ) ;
 unsigned int MAX_TIMER_TX_RECLAIM ;
 unsigned long TX_QCHECK_PERIOD ;
 unsigned int __ffs (unsigned long) ;
 struct adapter* adap ;
 int clear_bit (unsigned long,unsigned long*) ;
 int free_tx_desc (struct adapter*,TYPE_3__*,int,int) ;
 struct adapter* from_timer (int ,struct timer_list*,int ) ;
 int is_t4 (int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int reclaimable (TYPE_3__*) ;
 TYPE_2__ sge ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ t4_sge_eth_txq_egress_update (struct adapter*,int *,unsigned int) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static void sge_tx_timer_cb(struct timer_list *t)
{
 struct adapter *adap = from_timer(adap, t, sge.tx_timer);
 struct sge *s = &adap->sge;
 unsigned long m, period;
 unsigned int i, budget;

 for (i = 0; i < BITS_TO_LONGS(s->egr_sz); i++)
  for (m = s->txq_maperr[i]; m; m &= m - 1) {
   unsigned long id = __ffs(m) + i * BITS_PER_LONG;
   struct sge_uld_txq *txq = s->egr_map[id];

   clear_bit(id, s->txq_maperr);
   tasklet_schedule(&txq->qresume_tsk);
  }

 if (!is_t4(adap->params.chip)) {
  struct sge_eth_txq *q = &s->ptptxq;
  int avail;

  spin_lock(&adap->ptp_lock);
  avail = reclaimable(&q->q);

  if (avail) {
   free_tx_desc(adap, &q->q, avail, 0);
   q->q.in_use -= avail;
  }
  spin_unlock(&adap->ptp_lock);
 }

 budget = MAX_TIMER_TX_RECLAIM;
 i = s->ethtxq_rover;
 do {
  budget -= t4_sge_eth_txq_egress_update(adap, &s->ethtxq[i],
             budget);
  if (!budget)
   break;

  if (++i >= s->ethqsets)
   i = 0;
 } while (i != s->ethtxq_rover);
 s->ethtxq_rover = i;

 if (budget == 0) {



  period = 2;
 } else {



  period = TX_QCHECK_PERIOD;
 }

 mod_timer(&s->tx_timer, jiffies + period);
}
