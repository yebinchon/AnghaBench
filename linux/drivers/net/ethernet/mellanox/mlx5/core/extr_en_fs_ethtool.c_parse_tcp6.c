
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ethtool_tcpip6_spec {int pdst; int psrc; int ip6dst; int ip6src; } ;
struct TYPE_4__ {struct ethtool_tcpip6_spec tcp_ip6_spec; } ;
struct TYPE_3__ {struct ethtool_tcpip6_spec tcp_ip6_spec; } ;
struct ethtool_rx_flow_spec {TYPE_2__ h_u; TYPE_1__ m_u; } ;


 int set_ip6 (void*,void*,int ,int ,int ,int ) ;
 int set_tcp (void*,void*,int ,int ,int ,int ) ;

__attribute__((used)) static void
parse_tcp6(void *headers_c, void *headers_v, struct ethtool_rx_flow_spec *fs)
{
 struct ethtool_tcpip6_spec *l4_mask = &fs->m_u.tcp_ip6_spec;
 struct ethtool_tcpip6_spec *l4_val = &fs->h_u.tcp_ip6_spec;

 set_ip6(headers_c, headers_v, l4_mask->ip6src,
  l4_val->ip6src, l4_mask->ip6dst, l4_val->ip6dst);

 set_tcp(headers_c, headers_v, l4_mask->psrc, l4_val->psrc,
  l4_mask->pdst, l4_val->pdst);
}
