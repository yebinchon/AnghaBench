
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int IAVF_MAX_BUFFER_TXD ;
 int __iavf_chk_linearize (struct sk_buff*) ;
 scalar_t__ likely (int) ;
 scalar_t__ skb_is_gso (struct sk_buff*) ;

__attribute__((used)) static inline bool iavf_chk_linearize(struct sk_buff *skb, int count)
{

 if (likely(count < IAVF_MAX_BUFFER_TXD))
  return 0;

 if (skb_is_gso(skb))
  return __iavf_chk_linearize(skb);


 return count != IAVF_MAX_BUFFER_TXD;
}
