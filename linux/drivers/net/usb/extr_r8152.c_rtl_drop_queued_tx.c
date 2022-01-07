
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff_head {int lock; } ;
struct sk_buff {int dummy; } ;
struct r8152 {struct sk_buff_head tx_queue; TYPE_1__* netdev; } ;
struct net_device_stats {int tx_dropped; } ;
struct TYPE_2__ {struct net_device_stats stats; } ;


 struct sk_buff* __skb_dequeue (struct sk_buff_head*) ;
 int __skb_queue_head_init (struct sk_buff_head*) ;
 int dev_kfree_skb (struct sk_buff*) ;
 scalar_t__ skb_queue_empty (struct sk_buff_head*) ;
 int skb_queue_splice_init (struct sk_buff_head*,struct sk_buff_head*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void rtl_drop_queued_tx(struct r8152 *tp)
{
 struct net_device_stats *stats = &tp->netdev->stats;
 struct sk_buff_head skb_head, *tx_queue = &tp->tx_queue;
 struct sk_buff *skb;

 if (skb_queue_empty(tx_queue))
  return;

 __skb_queue_head_init(&skb_head);
 spin_lock_bh(&tx_queue->lock);
 skb_queue_splice_init(tx_queue, &skb_head);
 spin_unlock_bh(&tx_queue->lock);

 while ((skb = __skb_dequeue(&skb_head))) {
  dev_kfree_skb(skb);
  stats->tx_dropped++;
 }
}
