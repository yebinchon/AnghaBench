
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vortex_private {scalar_t__ enable_wol; } ;
struct net_device {int dummy; } ;
struct ethtool_wolinfo {int wolopts; int supported; } ;


 int VORTEX_PCI (struct vortex_private*) ;
 int WAKE_MAGIC ;
 struct vortex_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static void vortex_get_wol(struct net_device *dev, struct ethtool_wolinfo *wol)
{
 struct vortex_private *vp = netdev_priv(dev);

 if (!VORTEX_PCI(vp))
  return;

 wol->supported = WAKE_MAGIC;

 wol->wolopts = 0;
 if (vp->enable_wol)
  wol->wolopts |= WAKE_MAGIC;
}
