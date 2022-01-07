
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int priority; } ;
struct mwifiex_ra_list_tbl {int skb_head; } ;


 struct sk_buff* skb_peek (int *) ;
 scalar_t__ skb_queue_empty (int *) ;

__attribute__((used)) static inline int
mwifiex_get_tid(struct mwifiex_ra_list_tbl *ptr)
{
 struct sk_buff *skb;

 if (skb_queue_empty(&ptr->skb_head))
  return 0;

 skb = skb_peek(&ptr->skb_head);

 return skb->priority;
}
