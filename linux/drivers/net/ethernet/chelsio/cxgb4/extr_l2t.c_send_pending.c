
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct l2t_entry {int arpq; } ;
struct adapter {int dummy; } ;


 struct sk_buff* __skb_dequeue (int *) ;
 int t4_ofld_send (struct adapter*,struct sk_buff*) ;

__attribute__((used)) static void send_pending(struct adapter *adap, struct l2t_entry *e)
{
 struct sk_buff *skb;

 while ((skb = __skb_dequeue(&e->arpq)) != ((void*)0))
  t4_ofld_send(adap, skb);
}
