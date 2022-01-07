
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct ican3_dev {int echoq; } ;
struct can_frame {scalar_t__ can_id; scalar_t__ can_dlc; int data; } ;


 scalar_t__ memcmp (int ,int ,scalar_t__) ;
 struct sk_buff* skb_peek (int *) ;

__attribute__((used)) static bool ican3_echo_skb_matches(struct ican3_dev *mod, struct sk_buff *skb)
{
 struct can_frame *cf = (struct can_frame *)skb->data;
 struct sk_buff *echo_skb = skb_peek(&mod->echoq);
 struct can_frame *echo_cf;

 if (!echo_skb)
  return 0;

 echo_cf = (struct can_frame *)echo_skb->data;
 if (cf->can_id != echo_cf->can_id)
  return 0;

 if (cf->can_dlc != echo_cf->can_dlc)
  return 0;

 return memcmp(cf->data, echo_cf->data, cf->can_dlc) == 0;
}
