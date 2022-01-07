
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int I40E_MAX_BUFFER_TXD ;
 int __i40e_chk_linearize (struct sk_buff*) ;
 scalar_t__ likely (int) ;
 scalar_t__ skb_is_gso (struct sk_buff*) ;

__attribute__((used)) static inline bool i40e_chk_linearize(struct sk_buff *skb, int count)
{

 if (likely(count < I40E_MAX_BUFFER_TXD))
  return 0;

 if (skb_is_gso(skb))
  return __i40e_chk_linearize(skb);


 return count != I40E_MAX_BUFFER_TXD;
}
