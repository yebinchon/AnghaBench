
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int dst; } ;
struct TYPE_5__ {scalar_t__ dst; } ;
struct TYPE_8__ {TYPE_2__ ipv6; TYPE_1__ ipv4; } ;
struct TYPE_7__ {TYPE_4__ u; } ;
struct ip_tunnel_info {TYPE_3__ key; } ;


 scalar_t__ AF_INET ;
 scalar_t__ ip_tunnel_info_af (struct ip_tunnel_info*) ;
 int ipv6_addr_equal (int *,int *) ;

__attribute__((used)) static bool geneve_dst_addr_equal(struct ip_tunnel_info *a,
      struct ip_tunnel_info *b)
{
 if (ip_tunnel_info_af(a) == AF_INET)
  return a->key.u.ipv4.dst == b->key.u.ipv4.dst;
 else
  return ipv6_addr_equal(&a->key.u.ipv6.dst, &b->key.u.ipv6.dst);
}
