
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct gem {int wake_on_lan; int has_wol; } ;
struct ethtool_wolinfo {int wolopts; } ;


 int EOPNOTSUPP ;
 int WOL_SUPPORTED_MASK ;
 struct gem* netdev_priv (struct net_device*) ;

__attribute__((used)) static int gem_set_wol(struct net_device *dev, struct ethtool_wolinfo *wol)
{
 struct gem *gp = netdev_priv(dev);

 if (!gp->has_wol)
  return -EOPNOTSUPP;
 gp->wake_on_lan = wol->wolopts & WOL_SUPPORTED_MASK;
 return 0;
}
