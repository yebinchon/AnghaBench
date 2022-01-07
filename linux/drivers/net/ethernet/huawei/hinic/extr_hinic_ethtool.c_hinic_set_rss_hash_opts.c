
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hinic_rss_type {int ipv4; int ipv6; } ;
struct hinic_dev {int flags; int rss_tmpl_idx; struct hinic_rss_type rss_type; } ;
struct ethtool_rxnfc {int data; int flow_type; } ;


 int EFAULT ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int HINIC_RSS_ENABLE ;


 int RXH_IP_DST ;
 int RXH_IP_SRC ;
 int RXH_L4_B_0_1 ;
 int RXH_L4_B_2_3 ;




 int hinic_get_rss_type (struct hinic_dev*,int ,struct hinic_rss_type*) ;
 int hinic_set_rss_type (struct hinic_dev*,int ,struct hinic_rss_type) ;
 int set_l4_rss_hash_ops (struct ethtool_rxnfc*,struct hinic_rss_type*) ;

__attribute__((used)) static int hinic_set_rss_hash_opts(struct hinic_dev *nic_dev,
       struct ethtool_rxnfc *cmd)
{
 struct hinic_rss_type *rss_type = &nic_dev->rss_type;
 int err;

 if (!(nic_dev->flags & HINIC_RSS_ENABLE)) {
  cmd->data = 0;
  return -EOPNOTSUPP;
 }




 if (cmd->data & ~(RXH_IP_SRC | RXH_IP_DST | RXH_L4_B_0_1 |
  RXH_L4_B_2_3))
  return -EINVAL;


 if (!(cmd->data & RXH_IP_SRC) || !(cmd->data & RXH_IP_DST))
  return -EINVAL;

 err = hinic_get_rss_type(nic_dev,
     nic_dev->rss_tmpl_idx, rss_type);
 if (err)
  return -EFAULT;

 switch (cmd->flow_type) {
 case 131:
 case 130:
 case 129:
 case 128:
  err = set_l4_rss_hash_ops(cmd, rss_type);
  if (err)
   return err;
  break;
 case 133:
  rss_type->ipv4 = 1;
  break;
 case 132:
  rss_type->ipv6 = 1;
  break;
 default:
  return -EINVAL;
 }

 err = hinic_set_rss_type(nic_dev, nic_dev->rss_tmpl_idx,
     *rss_type);
 if (err)
  return -EFAULT;

 return 0;
}
