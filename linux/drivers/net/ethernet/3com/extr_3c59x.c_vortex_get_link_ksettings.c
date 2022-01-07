
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vortex_private {int mii; } ;
struct net_device {int dummy; } ;
struct ethtool_link_ksettings {int dummy; } ;


 int mii_ethtool_get_link_ksettings (int *,struct ethtool_link_ksettings*) ;
 struct vortex_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int vortex_get_link_ksettings(struct net_device *dev,
         struct ethtool_link_ksettings *cmd)
{
 struct vortex_private *vp = netdev_priv(dev);

 mii_ethtool_get_link_ksettings(&vp->mii, cmd);

 return 0;
}
