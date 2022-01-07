
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct mt76_rx_tid {int nframes; struct sk_buff** reorder_buf; int head; } ;


 int __skb_queue_tail (struct sk_buff_head*,struct sk_buff*) ;
 int ieee80211_sn_inc (int ) ;

__attribute__((used)) static void
mt76_aggr_release(struct mt76_rx_tid *tid, struct sk_buff_head *frames, int idx)
{
 struct sk_buff *skb;

 tid->head = ieee80211_sn_inc(tid->head);

 skb = tid->reorder_buf[idx];
 if (!skb)
  return;

 tid->reorder_buf[idx] = ((void*)0);
 tid->nframes--;
 __skb_queue_tail(frames, skb);
}
