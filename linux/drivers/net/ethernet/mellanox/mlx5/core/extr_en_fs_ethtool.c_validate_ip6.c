
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct in6_addr {int dummy; } ;
struct ethtool_usrip6_spec {scalar_t__ l4_proto; scalar_t__ ip6dst; scalar_t__ ip6src; scalar_t__ tclass; scalar_t__ l4_4_bytes; } ;
struct TYPE_2__ {struct ethtool_usrip6_spec usr_ip6_spec; } ;
struct ethtool_rx_flow_spec {TYPE_1__ m_u; } ;


 int EINVAL ;
 int ipv6_addr_any (struct in6_addr*) ;

__attribute__((used)) static int validate_ip6(struct ethtool_rx_flow_spec *fs)
{
 struct ethtool_usrip6_spec *l3_mask = &fs->m_u.usr_ip6_spec;
 int ntuples = 0;

 if (l3_mask->l4_4_bytes || l3_mask->tclass)
  return -EINVAL;
 if (!ipv6_addr_any((struct in6_addr *)l3_mask->ip6src))
  ntuples++;

 if (!ipv6_addr_any((struct in6_addr *)l3_mask->ip6dst))
  ntuples++;
 if (l3_mask->l4_proto)
  ntuples++;

 return ++ntuples;
}
