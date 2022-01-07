
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ family; } ;
struct xfrm_state {TYPE_1__ props; } ;
struct sk_buff {int dummy; } ;
struct TYPE_6__ {int ihl; } ;
struct TYPE_5__ {int nexthdr; } ;


 scalar_t__ AF_INET ;
 TYPE_3__* ip_hdr (struct sk_buff*) ;
 scalar_t__ ipv6_ext_hdr (int ) ;
 TYPE_2__* ipv6_hdr (struct sk_buff*) ;

__attribute__((used)) static bool ixgbe_ipsec_offload_ok(struct sk_buff *skb, struct xfrm_state *xs)
{
 if (xs->props.family == AF_INET) {

  if (ip_hdr(skb)->ihl != 5)
   return 0;
 } else {

  if (ipv6_ext_hdr(ipv6_hdr(skb)->nexthdr))
   return 0;
 }

 return 1;
}
