
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct ar9170 {unsigned long* queue_stop_timeout; unsigned long* max_queue_stop_timeout; int tx_flush; int tx_total_queued; int tx_stats_lock; TYPE_2__* hw; TYPE_1__* tx_stats; } ;
struct TYPE_5__ {unsigned int queues; } ;
struct TYPE_4__ {scalar_t__ len; } ;


 scalar_t__ CARL9170_NUM_TX_LIMIT_SOFT ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int complete (int *) ;
 scalar_t__ ieee80211_queue_stopped (TYPE_2__*,unsigned int) ;
 int ieee80211_wake_queue (TYPE_2__*,unsigned int) ;
 int is_mem_full (struct ar9170*) ;
 unsigned long jiffies ;
 int skb_get_queue_mapping (struct sk_buff*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void carl9170_tx_accounting_free(struct ar9170 *ar, struct sk_buff *skb)
{
 int queue;

 queue = skb_get_queue_mapping(skb);

 spin_lock_bh(&ar->tx_stats_lock);

 ar->tx_stats[queue].len--;

 if (!is_mem_full(ar)) {
  unsigned int i;
  for (i = 0; i < ar->hw->queues; i++) {
   if (ar->tx_stats[i].len >= CARL9170_NUM_TX_LIMIT_SOFT)
    continue;

   if (ieee80211_queue_stopped(ar->hw, i)) {
    unsigned long tmp;

    tmp = jiffies - ar->queue_stop_timeout[i];
    if (tmp > ar->max_queue_stop_timeout[i])
     ar->max_queue_stop_timeout[i] = tmp;
   }

   ieee80211_wake_queue(ar->hw, i);
  }
 }

 spin_unlock_bh(&ar->tx_stats_lock);

 if (atomic_dec_and_test(&ar->tx_total_queued))
  complete(&ar->tx_flush);
}
