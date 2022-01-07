
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skb_data {int state; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {scalar_t__ cb; } ;
typedef enum skb_state { ____Placeholder_skb_state } skb_state ;


 int __skb_queue_tail (struct sk_buff_head*,struct sk_buff*) ;

__attribute__((used)) static void lan78xx_queue_skb(struct sk_buff_head *list,
         struct sk_buff *newsk, enum skb_state state)
{
 struct skb_data *entry = (struct skb_data *)newsk->cb;

 __skb_queue_tail(list, newsk);
 entry->state = state;
}
