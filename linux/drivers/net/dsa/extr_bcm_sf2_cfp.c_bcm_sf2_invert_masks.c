
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * data; int vlan_tci; int vlan_etype; } ;
struct TYPE_3__ {int* hdata; } ;
struct ethtool_rx_flow_spec {TYPE_2__ m_ext; TYPE_1__ m_u; } ;


 int cpu_to_be16 (int ) ;
 int cpu_to_be32 (int ) ;

__attribute__((used)) static void bcm_sf2_invert_masks(struct ethtool_rx_flow_spec *flow)
{
 unsigned int i;

 for (i = 0; i < sizeof(flow->m_u); i++)
  flow->m_u.hdata[i] ^= 0xff;

 flow->m_ext.vlan_etype ^= cpu_to_be16(~0);
 flow->m_ext.vlan_tci ^= cpu_to_be16(~0);
 flow->m_ext.data[0] ^= cpu_to_be32(~0);
 flow->m_ext.data[1] ^= cpu_to_be32(~0);
}
