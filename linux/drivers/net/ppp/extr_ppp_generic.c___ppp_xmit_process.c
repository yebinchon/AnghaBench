
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int xq; } ;
struct ppp {int dev; TYPE_1__ file; int xmit_pending; int closing; } ;


 int kfree_skb (struct sk_buff*) ;
 int netif_stop_queue (int ) ;
 int netif_wake_queue (int ) ;
 int ppp_push (struct ppp*) ;
 int ppp_send_frame (struct ppp*,struct sk_buff*) ;
 int ppp_xmit_lock (struct ppp*) ;
 int ppp_xmit_unlock (struct ppp*) ;
 struct sk_buff* skb_dequeue (int *) ;
 int skb_peek (int *) ;
 int skb_queue_tail (int *,struct sk_buff*) ;

__attribute__((used)) static void __ppp_xmit_process(struct ppp *ppp, struct sk_buff *skb)
{
 ppp_xmit_lock(ppp);
 if (!ppp->closing) {
  ppp_push(ppp);

  if (skb)
   skb_queue_tail(&ppp->file.xq, skb);
  while (!ppp->xmit_pending &&
         (skb = skb_dequeue(&ppp->file.xq)))
   ppp_send_frame(ppp, skb);


  if (!ppp->xmit_pending && !skb_peek(&ppp->file.xq))
   netif_wake_queue(ppp->dev);
  else
   netif_stop_queue(ppp->dev);
 } else {
  kfree_skb(skb);
 }
 ppp_xmit_unlock(ppp);
}
