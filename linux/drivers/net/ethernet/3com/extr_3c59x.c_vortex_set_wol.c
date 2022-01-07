
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vortex_private {int enable_wol; } ;
struct net_device {int dummy; } ;
struct ethtool_wolinfo {int wolopts; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int VORTEX_PCI (struct vortex_private*) ;
 int WAKE_MAGIC ;
 int acpi_set_WOL (struct net_device*) ;
 struct vortex_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int vortex_set_wol(struct net_device *dev, struct ethtool_wolinfo *wol)
{
 struct vortex_private *vp = netdev_priv(dev);

 if (!VORTEX_PCI(vp))
  return -EOPNOTSUPP;

 if (wol->wolopts & ~WAKE_MAGIC)
  return -EINVAL;

 if (wol->wolopts & WAKE_MAGIC)
  vp->enable_wol = 1;
 else
  vp->enable_wol = 0;
 acpi_set_WOL(dev);

 return 0;
}
