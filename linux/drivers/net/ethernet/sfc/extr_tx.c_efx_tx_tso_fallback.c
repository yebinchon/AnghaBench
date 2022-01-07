
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {struct sk_buff* next; } ;
struct efx_tx_queue {int dummy; } ;


 scalar_t__ IS_ERR (struct sk_buff*) ;
 int PTR_ERR (struct sk_buff*) ;
 int dev_consume_skb_any (struct sk_buff*) ;
 int efx_enqueue_skb (struct efx_tx_queue*,struct sk_buff*) ;
 struct sk_buff* skb_gso_segment (struct sk_buff*,int ) ;

__attribute__((used)) static int efx_tx_tso_fallback(struct efx_tx_queue *tx_queue,
          struct sk_buff *skb)
{
 struct sk_buff *segments, *next;

 segments = skb_gso_segment(skb, 0);
 if (IS_ERR(segments))
  return PTR_ERR(segments);

 dev_consume_skb_any(skb);
 skb = segments;

 while (skb) {
  next = skb->next;
  skb->next = ((void*)0);

  efx_enqueue_skb(tx_queue, skb);
  skb = next;
 }

 return 0;
}
