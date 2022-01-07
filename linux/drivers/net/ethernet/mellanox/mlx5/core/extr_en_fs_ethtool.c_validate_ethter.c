
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ethhdr {scalar_t__ h_proto; int h_source; int h_dest; } ;
struct TYPE_2__ {struct ethhdr ether_spec; } ;
struct ethtool_rx_flow_spec {TYPE_1__ m_u; } ;


 int is_zero_ether_addr (int ) ;

__attribute__((used)) static int validate_ethter(struct ethtool_rx_flow_spec *fs)
{
 struct ethhdr *eth_mask = &fs->m_u.ether_spec;
 int ntuples = 0;

 if (!is_zero_ether_addr(eth_mask->h_dest))
  ntuples++;
 if (!is_zero_ether_addr(eth_mask->h_source))
  ntuples++;
 if (eth_mask->h_proto)
  ntuples++;
 return ntuples;
}
