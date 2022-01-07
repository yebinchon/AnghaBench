
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct ethtool_rxnfc {int cmd; scalar_t__ data; scalar_t__ rule_cnt; } ;
struct TYPE_2__ {int lock; scalar_t__ max; scalar_t__ free; } ;
struct enic {TYPE_1__ rfs_h; scalar_t__ rq_count; } ;


 int EOPNOTSUPP ;





 int enic_get_rx_flow_hash (struct enic*,struct ethtool_rxnfc*) ;
 int enic_grxclsrlall (struct enic*,struct ethtool_rxnfc*,int *) ;
 int enic_grxclsrule (struct enic*,struct ethtool_rxnfc*) ;
 struct enic* netdev_priv (struct net_device*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int enic_get_rxnfc(struct net_device *dev, struct ethtool_rxnfc *cmd,
     u32 *rule_locs)
{
 struct enic *enic = netdev_priv(dev);
 int ret = 0;

 switch (cmd->cmd) {
 case 128:
  cmd->data = enic->rq_count;
  break;
 case 131:
  spin_lock_bh(&enic->rfs_h.lock);
  cmd->rule_cnt = enic->rfs_h.max - enic->rfs_h.free;
  cmd->data = enic->rfs_h.max;
  spin_unlock_bh(&enic->rfs_h.lock);
  break;
 case 132:
  spin_lock_bh(&enic->rfs_h.lock);
  ret = enic_grxclsrlall(enic, cmd, rule_locs);
  spin_unlock_bh(&enic->rfs_h.lock);
  break;
 case 130:
  spin_lock_bh(&enic->rfs_h.lock);
  ret = enic_grxclsrule(enic, cmd);
  spin_unlock_bh(&enic->rfs_h.lock);
  break;
 case 129:
  ret = enic_get_rx_flow_hash(enic, cmd);
  break;
 default:
  ret = -EOPNOTSUPP;
  break;
 }

 return ret;
}
