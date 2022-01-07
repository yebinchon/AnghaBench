
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_rxnfc {int cmd; } ;
struct bnx2x {int dummy; } ;


 int BNX2X_MSG_ETHTOOL ;
 int DP (int ,char*) ;
 int EOPNOTSUPP ;

 int bnx2x_set_rss_flags (struct bnx2x*,struct ethtool_rxnfc*) ;
 struct bnx2x* netdev_priv (struct net_device*) ;

__attribute__((used)) static int bnx2x_set_rxnfc(struct net_device *dev, struct ethtool_rxnfc *info)
{
 struct bnx2x *bp = netdev_priv(dev);

 switch (info->cmd) {
 case 128:
  return bnx2x_set_rss_flags(bp, info);
 default:
  DP(BNX2X_MSG_ETHTOOL, "Command parameters not supported\n");
  return -EOPNOTSUPP;
 }
}
