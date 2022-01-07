
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct ieee80211_tx_info {scalar_t__ rate_driver_data; } ;
struct carl9170_tx_info {scalar_t__ timeout; } ;
struct ar9170 {TYPE_2__* tx_status; TYPE_1__* hw; } ;
struct TYPE_4__ {int lock; } ;
struct TYPE_3__ {int queues; } ;


 int CARL9170_QUEUE_STUCK_TIMEOUT ;
 int CARL9170_RR_STUCK_TX ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int carl9170_restart (struct ar9170*,int ) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 struct sk_buff* skb_peek (TYPE_2__*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int time_is_before_jiffies (scalar_t__) ;

__attribute__((used)) static void carl9170_check_queue_stop_timeout(struct ar9170 *ar)
{
 int i;
 struct sk_buff *skb;
 struct ieee80211_tx_info *txinfo;
 struct carl9170_tx_info *arinfo;
 bool restart = 0;

 for (i = 0; i < ar->hw->queues; i++) {
  spin_lock_bh(&ar->tx_status[i].lock);

  skb = skb_peek(&ar->tx_status[i]);

  if (!skb)
   goto next;

  txinfo = IEEE80211_SKB_CB(skb);
  arinfo = (void *) txinfo->rate_driver_data;

  if (time_is_before_jiffies(arinfo->timeout +
      msecs_to_jiffies(CARL9170_QUEUE_STUCK_TIMEOUT)) == 1)
   restart = 1;

next:
  spin_unlock_bh(&ar->tx_status[i].lock);
 }

 if (restart) {
  carl9170_restart(ar, CARL9170_RR_STUCK_TX);
 }
}
