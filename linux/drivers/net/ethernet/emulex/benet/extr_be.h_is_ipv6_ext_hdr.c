
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_4__ {int version; } ;
struct TYPE_3__ {int nexthdr; } ;


 TYPE_2__* ip_hdr (struct sk_buff*) ;
 int ipv6_ext_hdr (int ) ;
 TYPE_1__* ipv6_hdr (struct sk_buff*) ;

__attribute__((used)) static inline bool is_ipv6_ext_hdr(struct sk_buff *skb)
{
 if (ip_hdr(skb)->version == 6)
  return ipv6_ext_hdr(ipv6_hdr(skb)->nexthdr);
 else
  return 0;
}
