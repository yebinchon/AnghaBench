
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 unsigned int ICE_MAX_BUF_TXD ;
 int __ice_chk_linearize (struct sk_buff*) ;
 scalar_t__ likely (int) ;
 scalar_t__ skb_is_gso (struct sk_buff*) ;

__attribute__((used)) static bool ice_chk_linearize(struct sk_buff *skb, unsigned int count)
{

 if (likely(count < ICE_MAX_BUF_TXD))
  return 0;

 if (skb_is_gso(skb))
  return __ice_chk_linearize(skb);


 return count != ICE_MAX_BUF_TXD;
}
