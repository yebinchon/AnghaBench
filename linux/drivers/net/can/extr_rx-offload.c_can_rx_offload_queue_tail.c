
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct can_rx_offload {scalar_t__ skb_queue_len_max; int skb_queue; } ;


 int ENOBUFS ;
 int can_rx_offload_schedule (struct can_rx_offload*) ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ skb_queue_len (int *) ;
 int skb_queue_tail (int *,struct sk_buff*) ;

int can_rx_offload_queue_tail(struct can_rx_offload *offload,
         struct sk_buff *skb)
{
 if (skb_queue_len(&offload->skb_queue) >
     offload->skb_queue_len_max) {
  kfree_skb(skb);
  return -ENOBUFS;
 }

 skb_queue_tail(&offload->skb_queue, skb);
 can_rx_offload_schedule(offload);

 return 0;
}
