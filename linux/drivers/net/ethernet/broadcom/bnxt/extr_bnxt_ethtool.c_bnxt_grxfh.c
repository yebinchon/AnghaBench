
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ethtool_rxnfc {int data; int flow_type; } ;
struct bnxt {int rss_hash_cfg; } ;
 int RXH_IP_DST ;
 int RXH_IP_SRC ;
 int RXH_L4_B_0_1 ;
 int RXH_L4_B_2_3 ;






 int VNIC_RSS_CFG_REQ_HASH_TYPE_TCP_IPV4 ;
 int VNIC_RSS_CFG_REQ_HASH_TYPE_TCP_IPV6 ;
 int VNIC_RSS_CFG_REQ_HASH_TYPE_UDP_IPV4 ;
 int VNIC_RSS_CFG_REQ_HASH_TYPE_UDP_IPV6 ;
 int get_ethtool_ipv4_rss (struct bnxt*) ;
 int get_ethtool_ipv6_rss (struct bnxt*) ;

__attribute__((used)) static int bnxt_grxfh(struct bnxt *bp, struct ethtool_rxnfc *cmd)
{
 cmd->data = 0;
 switch (cmd->flow_type) {
 case 131:
  if (bp->rss_hash_cfg & VNIC_RSS_CFG_REQ_HASH_TYPE_TCP_IPV4)
   cmd->data |= RXH_IP_SRC | RXH_IP_DST |
         RXH_L4_B_0_1 | RXH_L4_B_2_3;
  cmd->data |= get_ethtool_ipv4_rss(bp);
  break;
 case 129:
  if (bp->rss_hash_cfg & VNIC_RSS_CFG_REQ_HASH_TYPE_UDP_IPV4)
   cmd->data |= RXH_IP_SRC | RXH_IP_DST |
         RXH_L4_B_0_1 | RXH_L4_B_2_3;

 case 133:
 case 141:
 case 139:
 case 137:
 case 135:
  cmd->data |= get_ethtool_ipv4_rss(bp);
  break;

 case 130:
  if (bp->rss_hash_cfg & VNIC_RSS_CFG_REQ_HASH_TYPE_TCP_IPV6)
   cmd->data |= RXH_IP_SRC | RXH_IP_DST |
         RXH_L4_B_0_1 | RXH_L4_B_2_3;
  cmd->data |= get_ethtool_ipv6_rss(bp);
  break;
 case 128:
  if (bp->rss_hash_cfg & VNIC_RSS_CFG_REQ_HASH_TYPE_UDP_IPV6)
   cmd->data |= RXH_IP_SRC | RXH_IP_DST |
         RXH_L4_B_0_1 | RXH_L4_B_2_3;

 case 132:
 case 140:
 case 138:
 case 136:
 case 134:
  cmd->data |= get_ethtool_ipv6_rss(bp);
  break;
 }
 return 0;
}
