
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {int version; scalar_t__ protocol; } ;
struct TYPE_3__ {scalar_t__ nexthdr; } ;


 scalar_t__ IPPROTO_UDP ;
 scalar_t__ NEXTHDR_UDP ;
 TYPE_2__* ip_hdr (struct sk_buff*) ;
 TYPE_1__* ipv6_hdr (struct sk_buff*) ;

__attribute__((used)) static inline u8 is_udp_pkt(struct sk_buff *skb)
{
 u8 val = 0;

 if (ip_hdr(skb)->version == 4)
  val = (ip_hdr(skb)->protocol == IPPROTO_UDP);
 else if (ip_hdr(skb)->version == 6)
  val = (ipv6_hdr(skb)->nexthdr == NEXTHDR_UDP);

 return val;
}
