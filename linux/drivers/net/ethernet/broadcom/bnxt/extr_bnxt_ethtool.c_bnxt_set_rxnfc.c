
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_rxnfc {int cmd; } ;
struct bnxt {int dummy; } ;


 int EOPNOTSUPP ;

 int bnxt_srxfh (struct bnxt*,struct ethtool_rxnfc*) ;
 struct bnxt* netdev_priv (struct net_device*) ;

__attribute__((used)) static int bnxt_set_rxnfc(struct net_device *dev, struct ethtool_rxnfc *cmd)
{
 struct bnxt *bp = netdev_priv(dev);
 int rc;

 switch (cmd->cmd) {
 case 128:
  rc = bnxt_srxfh(bp, cmd);
  break;

 default:
  rc = -EOPNOTSUPP;
  break;
 }
 return rc;
}
