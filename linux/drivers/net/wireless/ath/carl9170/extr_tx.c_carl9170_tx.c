
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct ar9170 {int tx_schedule; int tx_janitor; TYPE_1__* hw; int * tx_status; int tx_total_pending; int * tx_pending; } ;
struct TYPE_2__ {unsigned int queues; } ;


 int CARL9170_TX_TIMEOUT ;
 int IS_STARTED (struct ar9170*) ;
 unsigned int __carl9170_get_queue (struct ar9170*,unsigned int) ;
 int atomic_inc (int *) ;
 int carl9170_bar_check (struct ar9170*,struct sk_buff*) ;
 int carl9170_tx_get_skb (struct sk_buff*) ;
 struct sk_buff* carl9170_tx_pick_skb (struct ar9170*,int *) ;
 int carl9170_tx_ps_drop (struct ar9170*,struct sk_buff*) ;
 int carl9170_usb_handle_tx_err (struct ar9170*) ;
 int carl9170_usb_tx (struct ar9170*,struct sk_buff*) ;
 int ieee80211_queue_delayed_work (TYPE_1__*,int *,int ) ;
 int msecs_to_jiffies (int ) ;
 int skb_queue_empty (int *) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void carl9170_tx(struct ar9170 *ar)
{
 struct sk_buff *skb;
 unsigned int i, q;
 bool schedule_garbagecollector = 0;

 ar->tx_schedule = 0;

 if (unlikely(!IS_STARTED(ar)))
  return;

 carl9170_usb_handle_tx_err(ar);

 for (i = 0; i < ar->hw->queues; i++) {
  while (!skb_queue_empty(&ar->tx_pending[i])) {
   skb = carl9170_tx_pick_skb(ar, &ar->tx_pending[i]);
   if (unlikely(!skb))
    break;

   if (unlikely(carl9170_tx_ps_drop(ar, skb)))
    continue;

   carl9170_bar_check(ar, skb);

   atomic_inc(&ar->tx_total_pending);

   q = __carl9170_get_queue(ar, i);




   skb_queue_tail(&ar->tx_status[q], skb);
   carl9170_tx_get_skb(skb);

   carl9170_usb_tx(ar, skb);
   schedule_garbagecollector = 1;
  }
 }

 if (!schedule_garbagecollector)
  return;

 ieee80211_queue_delayed_work(ar->hw, &ar->tx_janitor,
  msecs_to_jiffies(CARL9170_TX_TIMEOUT));
}
