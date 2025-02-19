
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ethtool_usrip4_spec {int ip4dst; int ip4src; int proto; int tos; int l4_4_bytes; } ;
struct ethtool_tcpip4_spec {int pdst; int psrc; int ip4dst; int ip4src; int tos; } ;
struct TYPE_11__ {int vlan_tci; } ;
struct TYPE_10__ {int vlan_tci; scalar_t__ vlan_etype; int h_dest; } ;
struct ethhdr {int h_proto; int h_dest; int h_source; } ;
struct TYPE_9__ {struct ethhdr ether_spec; struct ethtool_usrip4_spec usr_ip4_spec; struct ethtool_tcpip4_spec tcp_ip4_spec; } ;
struct TYPE_7__ {int ip_ver; } ;
struct TYPE_8__ {TYPE_1__ usr_ip4_spec; } ;
struct TYPE_12__ {scalar_t__ location; int flow_type; TYPE_5__ h_ext; TYPE_4__ m_ext; TYPE_3__ m_u; TYPE_2__ h_u; } ;
struct ethtool_rxnfc {TYPE_6__ fs; } ;


 int EINVAL ;

 int ETH_RX_NFC_IP4 ;
 int FLOW_EXT ;
 int FLOW_MAC_EXT ;

 scalar_t__ MAX_NUM_OF_FS_RULES ;


 scalar_t__ VLAN_N_VID ;
 int VLAN_VID_MASK ;
 int all_zeros_or_all_ones (int ) ;
 scalar_t__ be16_to_cpu (int ) ;
 int cpu_to_be16 (int ) ;
 int is_broadcast_ether_addr (int ) ;
 int is_zero_ether_addr (int ) ;

__attribute__((used)) static int mlx4_en_validate_flow(struct net_device *dev,
     struct ethtool_rxnfc *cmd)
{
 struct ethtool_usrip4_spec *l3_mask;
 struct ethtool_tcpip4_spec *l4_mask;
 struct ethhdr *eth_mask;

 if (cmd->fs.location >= MAX_NUM_OF_FS_RULES)
  return -EINVAL;

 if (cmd->fs.flow_type & FLOW_MAC_EXT) {

  if (!is_broadcast_ether_addr(cmd->fs.m_ext.h_dest))
   return -EINVAL;
 }

 switch (cmd->fs.flow_type & ~(FLOW_EXT | FLOW_MAC_EXT)) {
 case 129:
 case 128:
  if (cmd->fs.m_u.tcp_ip4_spec.tos)
   return -EINVAL;
  l4_mask = &cmd->fs.m_u.tcp_ip4_spec;

  if (!all_zeros_or_all_ones(l4_mask->ip4src) ||
      !all_zeros_or_all_ones(l4_mask->ip4dst) ||
      !all_zeros_or_all_ones(l4_mask->psrc) ||
      !all_zeros_or_all_ones(l4_mask->pdst))
   return -EINVAL;
  break;
 case 130:
  l3_mask = &cmd->fs.m_u.usr_ip4_spec;
  if (l3_mask->l4_4_bytes || l3_mask->tos || l3_mask->proto ||
      cmd->fs.h_u.usr_ip4_spec.ip_ver != ETH_RX_NFC_IP4 ||
      (!l3_mask->ip4src && !l3_mask->ip4dst) ||
      !all_zeros_or_all_ones(l3_mask->ip4src) ||
      !all_zeros_or_all_ones(l3_mask->ip4dst))
   return -EINVAL;
  break;
 case 131:
  eth_mask = &cmd->fs.m_u.ether_spec;

  if (!is_zero_ether_addr(eth_mask->h_source))
   return -EINVAL;


  if (!is_broadcast_ether_addr(eth_mask->h_dest))
   return -EINVAL;

  if (!all_zeros_or_all_ones(eth_mask->h_proto))
   return -EINVAL;
  break;
 default:
  return -EINVAL;
 }

 if ((cmd->fs.flow_type & FLOW_EXT)) {
  if (cmd->fs.m_ext.vlan_etype ||
      !((cmd->fs.m_ext.vlan_tci & cpu_to_be16(VLAN_VID_MASK)) ==
        0 ||
        (cmd->fs.m_ext.vlan_tci & cpu_to_be16(VLAN_VID_MASK)) ==
        cpu_to_be16(VLAN_VID_MASK)))
   return -EINVAL;

  if (cmd->fs.m_ext.vlan_tci) {
   if (be16_to_cpu(cmd->fs.h_ext.vlan_tci) >= VLAN_N_VID)
    return -EINVAL;

  }
 }

 return 0;
}
