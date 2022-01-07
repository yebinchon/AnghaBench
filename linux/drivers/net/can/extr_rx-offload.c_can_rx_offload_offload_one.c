
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct can_rx_offload_cb {int timestamp; } ;
struct can_rx_offload {scalar_t__ skb_queue_len_max; int (* mailbox_read ) (struct can_rx_offload*,struct can_frame*,int *,unsigned int) ;TYPE_2__* dev; int skb_queue; } ;
struct can_frame {int dummy; } ;
struct TYPE_3__ {int rx_fifo_errors; int rx_dropped; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;


 int ENOBUFS ;
 int ENOMEM ;
 struct sk_buff* ERR_PTR (int) ;
 struct sk_buff* alloc_can_skb (TYPE_2__*,struct can_frame**) ;
 struct can_rx_offload_cb* can_rx_offload_get_cb (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ likely (int) ;
 scalar_t__ skb_queue_len (int *) ;
 int stub1 (struct can_rx_offload*,struct can_frame*,int *,unsigned int) ;
 int stub2 (struct can_rx_offload*,struct can_frame*,int *,unsigned int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct sk_buff *
can_rx_offload_offload_one(struct can_rx_offload *offload, unsigned int n)
{
 struct sk_buff *skb = ((void*)0), *skb_error = ((void*)0);
 struct can_rx_offload_cb *cb;
 struct can_frame *cf;
 int ret;

 if (likely(skb_queue_len(&offload->skb_queue) <
     offload->skb_queue_len_max)) {
  skb = alloc_can_skb(offload->dev, &cf);
  if (unlikely(!skb))
   skb_error = ERR_PTR(-ENOMEM);
 } else {
  skb_error = ERR_PTR(-ENOBUFS);
 }




 if (unlikely(skb_error)) {
  struct can_frame cf_overflow;
  u32 timestamp;

  ret = offload->mailbox_read(offload, &cf_overflow,
         &timestamp, n);


  if (unlikely(!ret))
   return ((void*)0);






  offload->dev->stats.rx_dropped++;
  offload->dev->stats.rx_fifo_errors++;




  if (unlikely(ret < 0))
   return ERR_PTR(ret);

  return skb_error;
 }

 cb = can_rx_offload_get_cb(skb);
 ret = offload->mailbox_read(offload, cf, &cb->timestamp, n);


 if (unlikely(!ret)) {
  kfree_skb(skb);
  return ((void*)0);
 }


 if (unlikely(ret < 0)) {
  kfree_skb(skb);

  offload->dev->stats.rx_dropped++;
  offload->dev->stats.rx_fifo_errors++;

  return ERR_PTR(ret);
 }


 return skb;
}
