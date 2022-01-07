
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int h_dest; int vlan_tci; } ;
struct TYPE_3__ {int vlan_tci; int h_dest; } ;
struct ethtool_rx_flow_spec {int flow_type; TYPE_2__ h_ext; TYPE_1__ m_ext; } ;


 int EINVAL ;

 int ETH_ALEN ;
 int FLOW_EXT ;
 int FLOW_MAC_EXT ;


 void* MLX5_ADDR_OF (int ,int*,int ) ;




 int VLAN_VID_MASK ;
 int cpu_to_be16 (int ) ;
 int fte_match_param ;
 int is_zero_ether_addr (int ) ;
 int mask_spec (int ,int ,int ) ;
 int outer_headers ;
 int parse_ether (void*,void*,struct ethtool_rx_flow_spec*) ;
 int parse_ip4 (void*,void*,struct ethtool_rx_flow_spec*) ;
 int parse_ip6 (void*,void*,struct ethtool_rx_flow_spec*) ;
 int parse_tcp4 (void*,void*,struct ethtool_rx_flow_spec*) ;
 int parse_tcp6 (void*,void*,struct ethtool_rx_flow_spec*) ;
 int parse_udp4 (void*,void*,struct ethtool_rx_flow_spec*) ;
 int parse_udp6 (void*,void*,struct ethtool_rx_flow_spec*) ;
 int set_cvlan (void*,void*,int ) ;
 int set_dmac (void*,void*,int ,int ) ;

__attribute__((used)) static int set_flow_attrs(u32 *match_c, u32 *match_v,
     struct ethtool_rx_flow_spec *fs)
{
 void *outer_headers_c = MLX5_ADDR_OF(fte_match_param, match_c,
          outer_headers);
 void *outer_headers_v = MLX5_ADDR_OF(fte_match_param, match_v,
          outer_headers);
 u32 flow_type = fs->flow_type & ~(FLOW_EXT | FLOW_MAC_EXT);

 switch (flow_type) {
 case 131:
  parse_tcp4(outer_headers_c, outer_headers_v, fs);
  break;
 case 129:
  parse_udp4(outer_headers_c, outer_headers_v, fs);
  break;
 case 132:
  parse_ip4(outer_headers_c, outer_headers_v, fs);
  break;
 case 130:
  parse_tcp6(outer_headers_c, outer_headers_v, fs);
  break;
 case 128:
  parse_udp6(outer_headers_c, outer_headers_v, fs);
  break;
 case 133:
  parse_ip6(outer_headers_c, outer_headers_v, fs);
  break;
 case 134:
  parse_ether(outer_headers_c, outer_headers_v, fs);
  break;
 default:
  return -EINVAL;
 }

 if ((fs->flow_type & FLOW_EXT) &&
     (fs->m_ext.vlan_tci & cpu_to_be16(VLAN_VID_MASK)))
  set_cvlan(outer_headers_c, outer_headers_v, fs->h_ext.vlan_tci);

 if (fs->flow_type & FLOW_MAC_EXT &&
     !is_zero_ether_addr(fs->m_ext.h_dest)) {
  mask_spec(fs->m_ext.h_dest, fs->h_ext.h_dest, ETH_ALEN);
  set_dmac(outer_headers_c, outer_headers_v, fs->m_ext.h_dest,
    fs->h_ext.h_dest);
 }

 return 0;
}
