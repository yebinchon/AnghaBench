
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 scalar_t__ eth_skb_pad (struct sk_buff*) ;

__attribute__((used)) static bool ice_cleanup_headers(struct sk_buff *skb)
{

 if (eth_skb_pad(skb))
  return 1;

 return 0;
}
