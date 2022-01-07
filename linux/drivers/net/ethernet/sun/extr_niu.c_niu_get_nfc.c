
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct niu {int num_rx_rings; } ;
struct net_device {int dummy; } ;
struct ethtool_rxnfc {int cmd; int rule_cnt; int data; } ;


 int EINVAL ;





 struct niu* netdev_priv (struct net_device*) ;
 int niu_get_ethtool_tcam_all (struct niu*,struct ethtool_rxnfc*,int *) ;
 int niu_get_ethtool_tcam_entry (struct niu*,struct ethtool_rxnfc*) ;
 int niu_get_hash_opts (struct niu*,struct ethtool_rxnfc*) ;
 int tcam_get_valid_entry_cnt (struct niu*) ;

__attribute__((used)) static int niu_get_nfc(struct net_device *dev, struct ethtool_rxnfc *cmd,
         u32 *rule_locs)
{
 struct niu *np = netdev_priv(dev);
 int ret = 0;

 switch (cmd->cmd) {
 case 129:
  ret = niu_get_hash_opts(np, cmd);
  break;
 case 128:
  cmd->data = np->num_rx_rings;
  break;
 case 131:
  cmd->rule_cnt = tcam_get_valid_entry_cnt(np);
  break;
 case 130:
  ret = niu_get_ethtool_tcam_entry(np, cmd);
  break;
 case 132:
  ret = niu_get_ethtool_tcam_all(np, cmd, rule_locs);
  break;
 default:
  ret = -EINVAL;
  break;
 }

 return ret;
}
