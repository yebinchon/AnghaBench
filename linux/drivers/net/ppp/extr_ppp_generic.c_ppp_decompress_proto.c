
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int __ppp_decompress_proto (struct sk_buff*) ;
 int pskb_may_pull (struct sk_buff*,int) ;

__attribute__((used)) static bool ppp_decompress_proto(struct sk_buff *skb)
{

 if (!pskb_may_pull(skb, 1))
  return 0;

 __ppp_decompress_proto(skb);


 return pskb_may_pull(skb, 2);
}
