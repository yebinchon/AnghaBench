
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct timer_list {int dummy; } ;
struct rxtid_stats {int num_timeouts; } ;
struct rxtid {int timer_mon; int seq_next; int hold_q_sz; int lock; TYPE_1__* hold_q; scalar_t__ aggr; } ;
struct aggr_info_conn {int timer_scheduled; int timer; struct rxtid* rx_tid; struct rxtid_stats* stat; } ;
struct TYPE_2__ {scalar_t__ skb; } ;


 int AGGR_RX_TIMEOUT ;
 int ATH6KL_DBG_AGGR ;
 int ATH6KL_MAX_SEQ_NO ;
 size_t NUM_OF_TIDS ;
 struct aggr_info_conn* aggr_conn ;
 int aggr_deque_frms (struct aggr_info_conn*,size_t,int ,int ) ;
 int ath6kl_dbg (int ,char*,int,int) ;
 struct aggr_info_conn* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int timer ;

__attribute__((used)) static void aggr_timeout(struct timer_list *t)
{
 u8 i, j;
 struct aggr_info_conn *aggr_conn = from_timer(aggr_conn, t, timer);
 struct rxtid *rxtid;
 struct rxtid_stats *stats;

 for (i = 0; i < NUM_OF_TIDS; i++) {
  rxtid = &aggr_conn->rx_tid[i];
  stats = &aggr_conn->stat[i];

  if (!rxtid->aggr || !rxtid->timer_mon)
   continue;

  stats->num_timeouts++;
  ath6kl_dbg(ATH6KL_DBG_AGGR,
      "aggr timeout (st %d end %d)\n",
      rxtid->seq_next,
      ((rxtid->seq_next + rxtid->hold_q_sz-1) &
       ATH6KL_MAX_SEQ_NO));
  aggr_deque_frms(aggr_conn, i, 0, 0);
 }

 aggr_conn->timer_scheduled = 0;

 for (i = 0; i < NUM_OF_TIDS; i++) {
  rxtid = &aggr_conn->rx_tid[i];

  if (rxtid->aggr && rxtid->hold_q) {
   spin_lock_bh(&rxtid->lock);
   for (j = 0; j < rxtid->hold_q_sz; j++) {
    if (rxtid->hold_q[j].skb) {
     aggr_conn->timer_scheduled = 1;
     rxtid->timer_mon = 1;
     break;
    }
   }
   spin_unlock_bh(&rxtid->lock);

   if (j >= rxtid->hold_q_sz)
    rxtid->timer_mon = 0;
  }
 }

 if (aggr_conn->timer_scheduled)
  mod_timer(&aggr_conn->timer,
     jiffies + msecs_to_jiffies(AGGR_RX_TIMEOUT));
}
