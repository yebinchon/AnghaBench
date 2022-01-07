
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct macb {int num_queues; int max_tuples; } ;
struct TYPE_2__ {int ring_cookie; int location; } ;
struct ethtool_rxnfc {int cmd; TYPE_1__ fs; } ;


 int EINVAL ;
 int EOPNOTSUPP ;


 int gem_add_flow_filter (struct net_device*,struct ethtool_rxnfc*) ;
 int gem_del_flow_filter (struct net_device*,struct ethtool_rxnfc*) ;
 int netdev_err (struct net_device*,char*,int) ;
 struct macb* netdev_priv (struct net_device*) ;

__attribute__((used)) static int gem_set_rxnfc(struct net_device *netdev, struct ethtool_rxnfc *cmd)
{
 struct macb *bp = netdev_priv(netdev);
 int ret;

 switch (cmd->cmd) {
 case 128:
  if ((cmd->fs.location >= bp->max_tuples)
    || (cmd->fs.ring_cookie >= bp->num_queues)) {
   ret = -EINVAL;
   break;
  }
  ret = gem_add_flow_filter(netdev, cmd);
  break;
 case 129:
  ret = gem_del_flow_filter(netdev, cmd);
  break;
 default:
  netdev_err(netdev,
     "Command parameter %d is not supported\n", cmd->cmd);
  ret = -EOPNOTSUPP;
 }

 return ret;
}
