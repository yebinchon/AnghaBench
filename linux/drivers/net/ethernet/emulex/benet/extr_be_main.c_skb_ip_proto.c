
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {int version; int protocol; } ;
struct TYPE_3__ {int nexthdr; } ;


 TYPE_2__* ip_hdr (struct sk_buff*) ;
 TYPE_1__* ipv6_hdr (struct sk_buff*) ;

__attribute__((used)) static u16 skb_ip_proto(struct sk_buff *skb)
{
 return (ip_hdr(skb)->version == 4) ?
  ip_hdr(skb)->protocol : ipv6_hdr(skb)->nexthdr;
}
