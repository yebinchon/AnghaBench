
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int count; } ;
struct macb {TYPE_1__ rx_fs_list; int num_queues; } ;
struct ethtool_rxnfc {int cmd; int rule_cnt; int data; } ;


 int EOPNOTSUPP ;




 int gem_get_all_flow_entries (struct net_device*,struct ethtool_rxnfc*,int *) ;
 int gem_get_flow_entry (struct net_device*,struct ethtool_rxnfc*) ;
 int netdev_err (struct net_device*,char*,int) ;
 struct macb* netdev_priv (struct net_device*) ;

__attribute__((used)) static int gem_get_rxnfc(struct net_device *netdev, struct ethtool_rxnfc *cmd,
  u32 *rule_locs)
{
 struct macb *bp = netdev_priv(netdev);
 int ret = 0;

 switch (cmd->cmd) {
 case 128:
  cmd->data = bp->num_queues;
  break;
 case 130:
  cmd->rule_cnt = bp->rx_fs_list.count;
  break;
 case 129:
  ret = gem_get_flow_entry(netdev, cmd);
  break;
 case 131:
  ret = gem_get_all_flow_entries(netdev, cmd, rule_locs);
  break;
 default:
  netdev_err(netdev,
     "Command parameter %d is not supported\n", cmd->cmd);
  ret = -EOPNOTSUPP;
 }

 return ret;
}
