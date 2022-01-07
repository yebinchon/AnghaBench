
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcnet32_private {scalar_t__ pci_dev; } ;
struct net_device {int base_addr; } ;
struct ethtool_drvinfo {int bus_info; int version; int driver; } ;


 int DRV_NAME ;
 int DRV_VERSION ;
 struct pcnet32_private* netdev_priv (struct net_device*) ;
 int pci_name (scalar_t__) ;
 int snprintf (int ,int,char*,int ) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void pcnet32_get_drvinfo(struct net_device *dev,
    struct ethtool_drvinfo *info)
{
 struct pcnet32_private *lp = netdev_priv(dev);

 strlcpy(info->driver, DRV_NAME, sizeof(info->driver));
 strlcpy(info->version, DRV_VERSION, sizeof(info->version));
 if (lp->pci_dev)
  strlcpy(info->bus_info, pci_name(lp->pci_dev),
   sizeof(info->bus_info));
 else
  snprintf(info->bus_info, sizeof(info->bus_info),
   "VLB 0x%lx", dev->base_addr);
}
