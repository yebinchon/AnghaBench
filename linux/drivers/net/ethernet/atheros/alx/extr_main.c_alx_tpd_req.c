
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int nr_frags; int gso_type; } ;


 int SKB_GSO_TCPV6 ;
 scalar_t__ skb_is_gso (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static int alx_tpd_req(struct sk_buff *skb)
{
 int num;

 num = skb_shinfo(skb)->nr_frags + 1;

 if (skb_is_gso(skb) && skb_shinfo(skb)->gso_type & SKB_GSO_TCPV6)
  num++;

 return num;
}
