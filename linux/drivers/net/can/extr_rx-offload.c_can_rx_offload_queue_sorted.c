
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct can_rx_offload_cb {int timestamp; } ;
struct TYPE_3__ {int lock; } ;
struct can_rx_offload {scalar_t__ skb_queue_len_max; TYPE_1__ skb_queue; } ;


 int ENOBUFS ;
 int __skb_queue_add_sort (TYPE_1__*,struct sk_buff*,int ) ;
 int can_rx_offload_compare ;
 struct can_rx_offload_cb* can_rx_offload_get_cb (struct sk_buff*) ;
 int can_rx_offload_schedule (struct can_rx_offload*) ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ skb_queue_len (TYPE_1__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int can_rx_offload_queue_sorted(struct can_rx_offload *offload,
    struct sk_buff *skb, u32 timestamp)
{
 struct can_rx_offload_cb *cb;
 unsigned long flags;

 if (skb_queue_len(&offload->skb_queue) >
     offload->skb_queue_len_max) {
  kfree_skb(skb);
  return -ENOBUFS;
 }

 cb = can_rx_offload_get_cb(skb);
 cb->timestamp = timestamp;

 spin_lock_irqsave(&offload->skb_queue.lock, flags);
 __skb_queue_add_sort(&offload->skb_queue, skb, can_rx_offload_compare);
 spin_unlock_irqrestore(&offload->skb_queue.lock, flags);

 can_rx_offload_schedule(offload);

 return 0;
}
