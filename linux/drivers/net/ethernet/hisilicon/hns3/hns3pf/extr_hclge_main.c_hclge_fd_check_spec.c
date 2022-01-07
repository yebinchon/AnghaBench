
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {scalar_t__* rule_num; int proto_support; } ;
struct hclge_dev {TYPE_2__ fd_cfg; TYPE_4__* pdev; } ;
struct ethtool_usrip6_spec {int l4_4_bytes; int tclass; int l4_proto; int * ip6dst; int * ip6src; } ;
struct ethtool_usrip4_spec {int ip_ver; int l4_4_bytes; int proto; int tos; int ip4dst; int ip4src; } ;
struct ethtool_tcpip6_spec {int tclass; int pdst; int psrc; int * ip6dst; int * ip6src; } ;
struct ethtool_tcpip4_spec {int tos; int pdst; int psrc; int ip4dst; int ip4src; } ;
struct TYPE_8__ {scalar_t__* data; int h_dest; int vlan_tci; scalar_t__ vlan_etype; } ;
struct TYPE_6__ {scalar_t__ vlan_tci; } ;
struct ethhdr {int h_proto; int h_dest; int h_source; } ;
struct TYPE_10__ {struct ethhdr ether_spec; struct ethtool_usrip6_spec usr_ip6_spec; struct ethtool_tcpip6_spec tcp_ip6_spec; struct ethtool_usrip4_spec usr_ip4_spec; struct ethtool_tcpip4_spec tcp_ip4_spec; } ;
struct ethtool_rx_flow_spec {scalar_t__ location; int flow_type; TYPE_3__ h_ext; TYPE_1__ m_ext; TYPE_5__ h_u; } ;
struct TYPE_9__ {int dev; } ;


 int BIT (int ) ;
 int EINVAL ;
 int EOPNOTSUPP ;

 int ETH_RX_NFC_IP4 ;
 int FLOW_EXT ;
 int FLOW_MAC_EXT ;
 size_t HCLGE_FD_STAGE_1 ;
 int INNER_DST_IP ;
 int INNER_DST_MAC ;
 int INNER_DST_PORT ;
 int INNER_ETH_TYPE ;
 int INNER_IP_PROTO ;
 int INNER_IP_TOS ;
 int INNER_SRC_IP ;
 int INNER_SRC_MAC ;
 int INNER_SRC_PORT ;
 int INNER_VLAN_TAG_FST ;
 scalar_t__ VLAN_N_VID ;
 scalar_t__ be16_to_cpu (int ) ;
 int dev_err (int *,char*) ;
 scalar_t__ is_zero_ether_addr (int ) ;

__attribute__((used)) static int hclge_fd_check_spec(struct hclge_dev *hdev,
          struct ethtool_rx_flow_spec *fs, u32 *unused)
{
 struct ethtool_tcpip4_spec *tcp_ip4_spec;
 struct ethtool_usrip4_spec *usr_ip4_spec;
 struct ethtool_tcpip6_spec *tcp_ip6_spec;
 struct ethtool_usrip6_spec *usr_ip6_spec;
 struct ethhdr *ether_spec;

 if (fs->location >= hdev->fd_cfg.rule_num[HCLGE_FD_STAGE_1])
  return -EINVAL;

 if (!(fs->flow_type & hdev->fd_cfg.proto_support))
  return -EOPNOTSUPP;

 if ((fs->flow_type & FLOW_EXT) &&
     (fs->h_ext.data[0] != 0 || fs->h_ext.data[1] != 0)) {
  dev_err(&hdev->pdev->dev, "user-def bytes are not supported\n");
  return -EOPNOTSUPP;
 }

 switch (fs->flow_type & ~(FLOW_EXT | FLOW_MAC_EXT)) {
 case 133:
 case 131:
 case 129:
  tcp_ip4_spec = &fs->h_u.tcp_ip4_spec;
  *unused |= BIT(INNER_SRC_MAC) | BIT(INNER_DST_MAC);

  if (!tcp_ip4_spec->ip4src)
   *unused |= BIT(INNER_SRC_IP);

  if (!tcp_ip4_spec->ip4dst)
   *unused |= BIT(INNER_DST_IP);

  if (!tcp_ip4_spec->psrc)
   *unused |= BIT(INNER_SRC_PORT);

  if (!tcp_ip4_spec->pdst)
   *unused |= BIT(INNER_DST_PORT);

  if (!tcp_ip4_spec->tos)
   *unused |= BIT(INNER_IP_TOS);

  break;
 case 134:
  usr_ip4_spec = &fs->h_u.usr_ip4_spec;
  *unused |= BIT(INNER_SRC_MAC) | BIT(INNER_DST_MAC) |
   BIT(INNER_SRC_PORT) | BIT(INNER_DST_PORT);

  if (!usr_ip4_spec->ip4src)
   *unused |= BIT(INNER_SRC_IP);

  if (!usr_ip4_spec->ip4dst)
   *unused |= BIT(INNER_DST_IP);

  if (!usr_ip4_spec->tos)
   *unused |= BIT(INNER_IP_TOS);

  if (!usr_ip4_spec->proto)
   *unused |= BIT(INNER_IP_PROTO);

  if (usr_ip4_spec->l4_4_bytes)
   return -EOPNOTSUPP;

  if (usr_ip4_spec->ip_ver != ETH_RX_NFC_IP4)
   return -EOPNOTSUPP;

  break;
 case 132:
 case 130:
 case 128:
  tcp_ip6_spec = &fs->h_u.tcp_ip6_spec;
  *unused |= BIT(INNER_SRC_MAC) | BIT(INNER_DST_MAC) |
   BIT(INNER_IP_TOS);


  if (!tcp_ip6_spec->ip6src[0] && !tcp_ip6_spec->ip6src[1] &&
      !tcp_ip6_spec->ip6src[2] && !tcp_ip6_spec->ip6src[3])
   *unused |= BIT(INNER_SRC_IP);

  if (!tcp_ip6_spec->ip6dst[0] && !tcp_ip6_spec->ip6dst[1] &&
      !tcp_ip6_spec->ip6dst[2] && !tcp_ip6_spec->ip6dst[3])
   *unused |= BIT(INNER_DST_IP);

  if (!tcp_ip6_spec->psrc)
   *unused |= BIT(INNER_SRC_PORT);

  if (!tcp_ip6_spec->pdst)
   *unused |= BIT(INNER_DST_PORT);

  if (tcp_ip6_spec->tclass)
   return -EOPNOTSUPP;

  break;
 case 135:
  usr_ip6_spec = &fs->h_u.usr_ip6_spec;
  *unused |= BIT(INNER_SRC_MAC) | BIT(INNER_DST_MAC) |
   BIT(INNER_IP_TOS) | BIT(INNER_SRC_PORT) |
   BIT(INNER_DST_PORT);


  if (!usr_ip6_spec->ip6src[0] && !usr_ip6_spec->ip6src[1] &&
      !usr_ip6_spec->ip6src[2] && !usr_ip6_spec->ip6src[3])
   *unused |= BIT(INNER_SRC_IP);

  if (!usr_ip6_spec->ip6dst[0] && !usr_ip6_spec->ip6dst[1] &&
      !usr_ip6_spec->ip6dst[2] && !usr_ip6_spec->ip6dst[3])
   *unused |= BIT(INNER_DST_IP);

  if (!usr_ip6_spec->l4_proto)
   *unused |= BIT(INNER_IP_PROTO);

  if (usr_ip6_spec->tclass)
   return -EOPNOTSUPP;

  if (usr_ip6_spec->l4_4_bytes)
   return -EOPNOTSUPP;

  break;
 case 136:
  ether_spec = &fs->h_u.ether_spec;
  *unused |= BIT(INNER_SRC_IP) | BIT(INNER_DST_IP) |
   BIT(INNER_SRC_PORT) | BIT(INNER_DST_PORT) |
   BIT(INNER_IP_TOS) | BIT(INNER_IP_PROTO);

  if (is_zero_ether_addr(ether_spec->h_source))
   *unused |= BIT(INNER_SRC_MAC);

  if (is_zero_ether_addr(ether_spec->h_dest))
   *unused |= BIT(INNER_DST_MAC);

  if (!ether_spec->h_proto)
   *unused |= BIT(INNER_ETH_TYPE);

  break;
 default:
  return -EOPNOTSUPP;
 }

 if ((fs->flow_type & FLOW_EXT)) {
  if (fs->h_ext.vlan_etype)
   return -EOPNOTSUPP;
  if (!fs->h_ext.vlan_tci)
   *unused |= BIT(INNER_VLAN_TAG_FST);

  if (fs->m_ext.vlan_tci) {
   if (be16_to_cpu(fs->h_ext.vlan_tci) >= VLAN_N_VID)
    return -EINVAL;
  }
 } else {
  *unused |= BIT(INNER_VLAN_TAG_FST);
 }

 if (fs->flow_type & FLOW_MAC_EXT) {
  if (!(hdev->fd_cfg.proto_support & 136))
   return -EOPNOTSUPP;

  if (is_zero_ether_addr(fs->h_ext.h_dest))
   *unused |= BIT(INNER_DST_MAC);
  else
   *unused &= ~(BIT(INNER_DST_MAC));
 }

 return 0;
}
