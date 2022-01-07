
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ican3_dev {int echoq; } ;


 struct sk_buff* can_create_echo_skb (struct sk_buff*) ;
 int skb_queue_tail (int *,struct sk_buff*) ;

__attribute__((used)) static void ican3_put_echo_skb(struct ican3_dev *mod, struct sk_buff *skb)
{
 skb = can_create_echo_skb(skb);
 if (!skb)
  return;


 skb_queue_tail(&mod->echoq, skb);
}
