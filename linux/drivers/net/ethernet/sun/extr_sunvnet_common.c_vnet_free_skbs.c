
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {struct sk_buff* next; } ;


 int dev_kfree_skb (struct sk_buff*) ;

__attribute__((used)) static inline void vnet_free_skbs(struct sk_buff *skb)
{
 struct sk_buff *next;

 while (skb) {
  next = skb->next;
  skb->next = ((void*)0);
  dev_kfree_skb(skb);
  skb = next;
 }
}
