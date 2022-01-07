
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct can_rx_offload {int skb_queue; } ;


 scalar_t__ IS_ERR (struct sk_buff*) ;
 struct sk_buff* can_rx_offload_offload_one (struct can_rx_offload*,int ) ;
 int can_rx_offload_schedule (struct can_rx_offload*) ;
 int skb_queue_tail (int *,struct sk_buff*) ;

int can_rx_offload_irq_offload_fifo(struct can_rx_offload *offload)
{
 struct sk_buff *skb;
 int received = 0;

 while (1) {
  skb = can_rx_offload_offload_one(offload, 0);
  if (IS_ERR(skb))
   continue;
  if (!skb)
   break;

  skb_queue_tail(&offload->skb_queue, skb);
  received++;
 }

 if (received)
  can_rx_offload_schedule(offload);

 return received;
}
