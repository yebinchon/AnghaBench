
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ethtool_rxnfc {scalar_t__ data; int flow_type; } ;
struct bnxt {int flags; int dev; int rss_hash_cfg; } ;






 int BNXT_FLAG_UDP_RSS_CAP ;
 int EINVAL ;




 scalar_t__ RXH_2TUPLE ;
 scalar_t__ RXH_4TUPLE ;






 int VNIC_RSS_CFG_REQ_HASH_TYPE_IPV4 ;
 int VNIC_RSS_CFG_REQ_HASH_TYPE_IPV6 ;
 int VNIC_RSS_CFG_REQ_HASH_TYPE_TCP_IPV4 ;
 int VNIC_RSS_CFG_REQ_HASH_TYPE_TCP_IPV6 ;
 int VNIC_RSS_CFG_REQ_HASH_TYPE_UDP_IPV4 ;
 int VNIC_RSS_CFG_REQ_HASH_TYPE_UDP_IPV6 ;
 int bnxt_close_nic (struct bnxt*,int,int) ;
 int bnxt_open_nic (struct bnxt*,int,int) ;
 scalar_t__ netif_running (int ) ;

__attribute__((used)) static int bnxt_srxfh(struct bnxt *bp, struct ethtool_rxnfc *cmd)
{
 u32 rss_hash_cfg = bp->rss_hash_cfg;
 int tuple, rc = 0;

 if (cmd->data == RXH_4TUPLE)
  tuple = 4;
 else if (cmd->data == RXH_2TUPLE)
  tuple = 2;
 else if (!cmd->data)
  tuple = 0;
 else
  return -EINVAL;

 if (cmd->flow_type == 131) {
  rss_hash_cfg &= ~VNIC_RSS_CFG_REQ_HASH_TYPE_TCP_IPV4;
  if (tuple == 4)
   rss_hash_cfg |= VNIC_RSS_CFG_REQ_HASH_TYPE_TCP_IPV4;
 } else if (cmd->flow_type == 129) {
  if (tuple == 4 && !(bp->flags & BNXT_FLAG_UDP_RSS_CAP))
   return -EINVAL;
  rss_hash_cfg &= ~VNIC_RSS_CFG_REQ_HASH_TYPE_UDP_IPV4;
  if (tuple == 4)
   rss_hash_cfg |= VNIC_RSS_CFG_REQ_HASH_TYPE_UDP_IPV4;
 } else if (cmd->flow_type == 130) {
  rss_hash_cfg &= ~VNIC_RSS_CFG_REQ_HASH_TYPE_TCP_IPV6;
  if (tuple == 4)
   rss_hash_cfg |= VNIC_RSS_CFG_REQ_HASH_TYPE_TCP_IPV6;
 } else if (cmd->flow_type == 128) {
  if (tuple == 4 && !(bp->flags & BNXT_FLAG_UDP_RSS_CAP))
   return -EINVAL;
  rss_hash_cfg &= ~VNIC_RSS_CFG_REQ_HASH_TYPE_UDP_IPV6;
  if (tuple == 4)
   rss_hash_cfg |= VNIC_RSS_CFG_REQ_HASH_TYPE_UDP_IPV6;
 } else if (tuple == 4) {
  return -EINVAL;
 }

 switch (cmd->flow_type) {
 case 131:
 case 129:
 case 133:
 case 141:
 case 139:
 case 137:
 case 135:
  if (tuple == 2)
   rss_hash_cfg |= VNIC_RSS_CFG_REQ_HASH_TYPE_IPV4;
  else if (!tuple)
   rss_hash_cfg &= ~VNIC_RSS_CFG_REQ_HASH_TYPE_IPV4;
  break;

 case 130:
 case 128:
 case 132:
 case 140:
 case 138:
 case 136:
 case 134:
  if (tuple == 2)
   rss_hash_cfg |= VNIC_RSS_CFG_REQ_HASH_TYPE_IPV6;
  else if (!tuple)
   rss_hash_cfg &= ~VNIC_RSS_CFG_REQ_HASH_TYPE_IPV6;
  break;
 }

 if (bp->rss_hash_cfg == rss_hash_cfg)
  return 0;

 bp->rss_hash_cfg = rss_hash_cfg;
 if (netif_running(bp->dev)) {
  bnxt_close_nic(bp, 0, 0);
  rc = bnxt_open_nic(bp, 0, 0);
 }
 return rc;
}
