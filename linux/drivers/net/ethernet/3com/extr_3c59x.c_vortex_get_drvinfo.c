
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vortex_private {int gendev; } ;
struct net_device {int irq; int base_addr; } ;
struct ethtool_drvinfo {int bus_info; int driver; } ;


 int DRV_NAME ;
 scalar_t__ VORTEX_EISA (struct vortex_private*) ;
 scalar_t__ VORTEX_PCI (struct vortex_private*) ;
 int dev_name (int ) ;
 struct vortex_private* netdev_priv (struct net_device*) ;
 int pci_name (scalar_t__) ;
 int snprintf (int ,int,char*,int ,int ) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void vortex_get_drvinfo(struct net_device *dev,
     struct ethtool_drvinfo *info)
{
 struct vortex_private *vp = netdev_priv(dev);

 strlcpy(info->driver, DRV_NAME, sizeof(info->driver));
 if (VORTEX_PCI(vp)) {
  strlcpy(info->bus_info, pci_name(VORTEX_PCI(vp)),
   sizeof(info->bus_info));
 } else {
  if (VORTEX_EISA(vp))
   strlcpy(info->bus_info, dev_name(vp->gendev),
    sizeof(info->bus_info));
  else
   snprintf(info->bus_info, sizeof(info->bus_info),
    "EISA 0x%lx %d", dev->base_addr, dev->irq);
 }
}
