
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hinic_rss_type {int udp_ipv6; int udp_ipv4; int tcp_ipv6; int tcp_ipv4; int member_0; } ;
struct hinic_dev {int flags; int rss_tmpl_idx; } ;
struct ethtool_rxnfc {int data; int flow_type; } ;


 int EINVAL ;
 int HINIC_RSS_ENABLE ;


 int RXH_IP_DST ;
 int RXH_IP_SRC ;
 int RXH_L4_B_0_1 ;
 int RXH_L4_B_2_3 ;




 int hinic_get_rss_type (struct hinic_dev*,int ,struct hinic_rss_type*) ;

__attribute__((used)) static int hinic_get_rss_hash_opts(struct hinic_dev *nic_dev,
       struct ethtool_rxnfc *cmd)
{
 struct hinic_rss_type rss_type = { 0 };
 int err;

 cmd->data = 0;

 if (!(nic_dev->flags & HINIC_RSS_ENABLE))
  return 0;

 err = hinic_get_rss_type(nic_dev, nic_dev->rss_tmpl_idx,
     &rss_type);
 if (err)
  return err;

 cmd->data = RXH_IP_SRC | RXH_IP_DST;
 switch (cmd->flow_type) {
 case 131:
  if (rss_type.tcp_ipv4)
   cmd->data |= RXH_L4_B_0_1 | RXH_L4_B_2_3;
  break;
 case 130:
  if (rss_type.tcp_ipv6)
   cmd->data |= RXH_L4_B_0_1 | RXH_L4_B_2_3;
  break;
 case 129:
  if (rss_type.udp_ipv4)
   cmd->data |= RXH_L4_B_0_1 | RXH_L4_B_2_3;
  break;
 case 128:
  if (rss_type.udp_ipv6)
   cmd->data |= RXH_L4_B_0_1 | RXH_L4_B_2_3;
  break;
 case 133:
 case 132:
  break;
 default:
  cmd->data = 0;
  return -EINVAL;
 }

 return 0;
}
