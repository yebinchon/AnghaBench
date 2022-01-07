
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_32__ TYPE_9__ ;
typedef struct TYPE_31__ TYPE_8__ ;
typedef struct TYPE_30__ TYPE_7__ ;
typedef struct TYPE_29__ TYPE_6__ ;
typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;
typedef struct TYPE_23__ TYPE_16__ ;
typedef struct TYPE_22__ TYPE_15__ ;
typedef struct TYPE_21__ TYPE_14__ ;
typedef struct TYPE_20__ TYPE_13__ ;
typedef struct TYPE_19__ TYPE_12__ ;
typedef struct TYPE_18__ TYPE_11__ ;
typedef struct TYPE_17__ TYPE_10__ ;


typedef int u32 ;
struct TYPE_21__ {int ether_proto; int ip_proto; int dst_mac; void* vlan_tag1; int src_mac; void** dst_ip; void** src_ip; void* dst_port; void* src_port; int ip_tos; } ;
struct TYPE_18__ {int dst_mac; void* vlan_tag1; int ip_proto; void* ether_proto; int src_mac; void** dst_ip; void** src_ip; void* dst_port; void* src_port; int ip_tos; } ;
struct hclge_fd_rule {TYPE_14__ tuples_mask; TYPE_11__ tuples; } ;
struct hclge_dev {int dummy; } ;
struct TYPE_17__ {int h_dest; int vlan_tci; } ;
struct TYPE_32__ {int h_dest; int vlan_tci; } ;
struct TYPE_31__ {int h_proto; int h_dest; int h_source; } ;
struct TYPE_29__ {int l4_proto; int ip6dst; int ip6src; } ;
struct TYPE_27__ {int pdst; int psrc; int ip6dst; int ip6src; } ;
struct TYPE_25__ {int proto; int tos; int ip4dst; int ip4src; } ;
struct TYPE_22__ {int tos; int pdst; int psrc; int ip4dst; int ip4src; } ;
struct TYPE_23__ {TYPE_8__ ether_spec; TYPE_6__ usr_ip6_spec; TYPE_4__ tcp_ip6_spec; TYPE_2__ usr_ip4_spec; TYPE_15__ tcp_ip4_spec; } ;
struct TYPE_30__ {int h_proto; int h_dest; int h_source; } ;
struct TYPE_28__ {int l4_proto; int ip6dst; int ip6src; } ;
struct TYPE_26__ {int pdst; int psrc; int ip6dst; int ip6src; } ;
struct TYPE_24__ {int proto; int tos; int ip4dst; int ip4src; } ;
struct TYPE_19__ {int tos; int pdst; int psrc; int ip4dst; int ip4src; } ;
struct TYPE_20__ {TYPE_7__ ether_spec; TYPE_5__ usr_ip6_spec; TYPE_3__ tcp_ip6_spec; TYPE_1__ usr_ip4_spec; TYPE_12__ tcp_ip4_spec; } ;
struct ethtool_rx_flow_spec {int flow_type; TYPE_10__ m_ext; TYPE_9__ h_ext; TYPE_16__ m_u; TYPE_13__ h_u; } ;


 int EOPNOTSUPP ;

 void* ETH_P_IP ;
 void* ETH_P_IPV6 ;
 int FLOW_EXT ;
 int FLOW_MAC_EXT ;
 int IPPROTO_SCTP ;
 int IPPROTO_TCP ;
 int IPPROTO_UDP ;
 size_t IPV4_INDEX ;
 int IPV6_SIZE ;
 void* be16_to_cpu (int ) ;
 void* be32_to_cpu (int ) ;
 int be32_to_cpu_array (void**,int ,int ) ;
 int ether_addr_copy (int ,int ) ;

__attribute__((used)) static int hclge_fd_get_tuple(struct hclge_dev *hdev,
         struct ethtool_rx_flow_spec *fs,
         struct hclge_fd_rule *rule)
{
 u32 flow_type = fs->flow_type & ~(FLOW_EXT | FLOW_MAC_EXT);

 switch (flow_type) {
 case 133:
 case 131:
 case 129:
  rule->tuples.src_ip[IPV4_INDEX] =
    be32_to_cpu(fs->h_u.tcp_ip4_spec.ip4src);
  rule->tuples_mask.src_ip[IPV4_INDEX] =
    be32_to_cpu(fs->m_u.tcp_ip4_spec.ip4src);

  rule->tuples.dst_ip[IPV4_INDEX] =
    be32_to_cpu(fs->h_u.tcp_ip4_spec.ip4dst);
  rule->tuples_mask.dst_ip[IPV4_INDEX] =
    be32_to_cpu(fs->m_u.tcp_ip4_spec.ip4dst);

  rule->tuples.src_port = be16_to_cpu(fs->h_u.tcp_ip4_spec.psrc);
  rule->tuples_mask.src_port =
    be16_to_cpu(fs->m_u.tcp_ip4_spec.psrc);

  rule->tuples.dst_port = be16_to_cpu(fs->h_u.tcp_ip4_spec.pdst);
  rule->tuples_mask.dst_port =
    be16_to_cpu(fs->m_u.tcp_ip4_spec.pdst);

  rule->tuples.ip_tos = fs->h_u.tcp_ip4_spec.tos;
  rule->tuples_mask.ip_tos = fs->m_u.tcp_ip4_spec.tos;

  rule->tuples.ether_proto = ETH_P_IP;
  rule->tuples_mask.ether_proto = 0xFFFF;

  break;
 case 134:
  rule->tuples.src_ip[IPV4_INDEX] =
    be32_to_cpu(fs->h_u.usr_ip4_spec.ip4src);
  rule->tuples_mask.src_ip[IPV4_INDEX] =
    be32_to_cpu(fs->m_u.usr_ip4_spec.ip4src);

  rule->tuples.dst_ip[IPV4_INDEX] =
    be32_to_cpu(fs->h_u.usr_ip4_spec.ip4dst);
  rule->tuples_mask.dst_ip[IPV4_INDEX] =
    be32_to_cpu(fs->m_u.usr_ip4_spec.ip4dst);

  rule->tuples.ip_tos = fs->h_u.usr_ip4_spec.tos;
  rule->tuples_mask.ip_tos = fs->m_u.usr_ip4_spec.tos;

  rule->tuples.ip_proto = fs->h_u.usr_ip4_spec.proto;
  rule->tuples_mask.ip_proto = fs->m_u.usr_ip4_spec.proto;

  rule->tuples.ether_proto = ETH_P_IP;
  rule->tuples_mask.ether_proto = 0xFFFF;

  break;
 case 132:
 case 130:
 case 128:
  be32_to_cpu_array(rule->tuples.src_ip,
      fs->h_u.tcp_ip6_spec.ip6src, IPV6_SIZE);
  be32_to_cpu_array(rule->tuples_mask.src_ip,
      fs->m_u.tcp_ip6_spec.ip6src, IPV6_SIZE);

  be32_to_cpu_array(rule->tuples.dst_ip,
      fs->h_u.tcp_ip6_spec.ip6dst, IPV6_SIZE);
  be32_to_cpu_array(rule->tuples_mask.dst_ip,
      fs->m_u.tcp_ip6_spec.ip6dst, IPV6_SIZE);

  rule->tuples.src_port = be16_to_cpu(fs->h_u.tcp_ip6_spec.psrc);
  rule->tuples_mask.src_port =
    be16_to_cpu(fs->m_u.tcp_ip6_spec.psrc);

  rule->tuples.dst_port = be16_to_cpu(fs->h_u.tcp_ip6_spec.pdst);
  rule->tuples_mask.dst_port =
    be16_to_cpu(fs->m_u.tcp_ip6_spec.pdst);

  rule->tuples.ether_proto = ETH_P_IPV6;
  rule->tuples_mask.ether_proto = 0xFFFF;

  break;
 case 135:
  be32_to_cpu_array(rule->tuples.src_ip,
      fs->h_u.usr_ip6_spec.ip6src, IPV6_SIZE);
  be32_to_cpu_array(rule->tuples_mask.src_ip,
      fs->m_u.usr_ip6_spec.ip6src, IPV6_SIZE);

  be32_to_cpu_array(rule->tuples.dst_ip,
      fs->h_u.usr_ip6_spec.ip6dst, IPV6_SIZE);
  be32_to_cpu_array(rule->tuples_mask.dst_ip,
      fs->m_u.usr_ip6_spec.ip6dst, IPV6_SIZE);

  rule->tuples.ip_proto = fs->h_u.usr_ip6_spec.l4_proto;
  rule->tuples_mask.ip_proto = fs->m_u.usr_ip6_spec.l4_proto;

  rule->tuples.ether_proto = ETH_P_IPV6;
  rule->tuples_mask.ether_proto = 0xFFFF;

  break;
 case 136:
  ether_addr_copy(rule->tuples.src_mac,
    fs->h_u.ether_spec.h_source);
  ether_addr_copy(rule->tuples_mask.src_mac,
    fs->m_u.ether_spec.h_source);

  ether_addr_copy(rule->tuples.dst_mac,
    fs->h_u.ether_spec.h_dest);
  ether_addr_copy(rule->tuples_mask.dst_mac,
    fs->m_u.ether_spec.h_dest);

  rule->tuples.ether_proto =
    be16_to_cpu(fs->h_u.ether_spec.h_proto);
  rule->tuples_mask.ether_proto =
    be16_to_cpu(fs->m_u.ether_spec.h_proto);

  break;
 default:
  return -EOPNOTSUPP;
 }

 switch (flow_type) {
 case 133:
 case 132:
  rule->tuples.ip_proto = IPPROTO_SCTP;
  rule->tuples_mask.ip_proto = 0xFF;
  break;
 case 131:
 case 130:
  rule->tuples.ip_proto = IPPROTO_TCP;
  rule->tuples_mask.ip_proto = 0xFF;
  break;
 case 129:
 case 128:
  rule->tuples.ip_proto = IPPROTO_UDP;
  rule->tuples_mask.ip_proto = 0xFF;
  break;
 default:
  break;
 }

 if ((fs->flow_type & FLOW_EXT)) {
  rule->tuples.vlan_tag1 = be16_to_cpu(fs->h_ext.vlan_tci);
  rule->tuples_mask.vlan_tag1 = be16_to_cpu(fs->m_ext.vlan_tci);
 }

 if (fs->flow_type & FLOW_MAC_EXT) {
  ether_addr_copy(rule->tuples.dst_mac, fs->h_ext.h_dest);
  ether_addr_copy(rule->tuples_mask.dst_mac, fs->m_ext.h_dest);
 }

 return 0;
}
