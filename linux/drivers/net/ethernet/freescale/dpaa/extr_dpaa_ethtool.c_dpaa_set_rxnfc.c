
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_rxnfc {int cmd; } ;


 int EOPNOTSUPP ;

 int dpaa_set_hash_opts (struct net_device*,struct ethtool_rxnfc*) ;

__attribute__((used)) static int dpaa_set_rxnfc(struct net_device *dev, struct ethtool_rxnfc *cmd)
{
 int ret = -EOPNOTSUPP;

 switch (cmd->cmd) {
 case 128:
  ret = dpaa_set_hash_opts(dev, cmd);
  break;
 default:
  break;
 }

 return ret;
}
