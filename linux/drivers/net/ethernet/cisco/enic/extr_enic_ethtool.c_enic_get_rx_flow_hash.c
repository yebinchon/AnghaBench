
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ethtool_rxnfc {int data; int flow_type; } ;
struct enic {int devcmd_lock; int vdev; } ;






 int EINVAL ;




 int NIC_CFG_RSS_HASH_TYPE_UDP_IPV4 ;
 int NIC_CFG_RSS_HASH_TYPE_UDP_IPV6 ;
 int RXH_IP_DST ;
 int RXH_IP_SRC ;
 int RXH_L4_B_0_1 ;
 int RXH_L4_B_2_3 ;






 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int vnic_dev_capable_rss_hash_type (int ,int*) ;

__attribute__((used)) static int enic_get_rx_flow_hash(struct enic *enic, struct ethtool_rxnfc *cmd)
{
 u8 rss_hash_type = 0;
 cmd->data = 0;

 spin_lock_bh(&enic->devcmd_lock);
 (void)vnic_dev_capable_rss_hash_type(enic->vdev, &rss_hash_type);
 spin_unlock_bh(&enic->devcmd_lock);
 switch (cmd->flow_type) {
 case 130:
 case 131:
  cmd->data |= RXH_L4_B_0_1 | RXH_L4_B_2_3 |
        RXH_IP_SRC | RXH_IP_DST;
  break;
 case 128:
  cmd->data |= RXH_IP_SRC | RXH_IP_DST;
  if (rss_hash_type & NIC_CFG_RSS_HASH_TYPE_UDP_IPV6)
   cmd->data |= RXH_L4_B_0_1 | RXH_L4_B_2_3;
  break;
 case 129:
  cmd->data |= RXH_IP_SRC | RXH_IP_DST;
  if (rss_hash_type & NIC_CFG_RSS_HASH_TYPE_UDP_IPV4)
   cmd->data |= RXH_L4_B_0_1 | RXH_L4_B_2_3;
  break;
 case 133:
 case 141:
 case 139:
 case 137:
 case 132:
 case 140:
 case 138:
 case 136:
 case 135:
 case 134:
  cmd->data |= RXH_IP_SRC | RXH_IP_DST;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
