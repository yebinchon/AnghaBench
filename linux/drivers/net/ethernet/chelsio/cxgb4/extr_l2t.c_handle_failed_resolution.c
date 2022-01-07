
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct l2t_skb_cb {int handle; int (* arp_err_handler ) (int ,struct sk_buff*) ;} ;
struct l2t_entry {int lock; int arpq; } ;
struct adapter {int dummy; } ;


 struct l2t_skb_cb* L2T_SKB_CB (struct sk_buff*) ;
 struct sk_buff* __skb_dequeue (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (int ,struct sk_buff*) ;
 int t4_ofld_send (struct adapter*,struct sk_buff*) ;

__attribute__((used)) static void handle_failed_resolution(struct adapter *adap, struct l2t_entry *e)
{
 struct sk_buff *skb;

 while ((skb = __skb_dequeue(&e->arpq)) != ((void*)0)) {
  const struct l2t_skb_cb *cb = L2T_SKB_CB(skb);

  spin_unlock(&e->lock);
  if (cb->arp_err_handler)
   cb->arp_err_handler(cb->handle, skb);
  else
   t4_ofld_send(adap, skb);
  spin_lock(&e->lock);
 }
}
