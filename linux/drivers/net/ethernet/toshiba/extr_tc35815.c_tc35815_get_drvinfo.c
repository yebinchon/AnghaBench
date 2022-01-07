
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc35815_local {int pci_dev; } ;
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int bus_info; int version; int driver; } ;


 int DRV_VERSION ;
 int MODNAME ;
 struct tc35815_local* netdev_priv (struct net_device*) ;
 int pci_name (int ) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void tc35815_get_drvinfo(struct net_device *dev, struct ethtool_drvinfo *info)
{
 struct tc35815_local *lp = netdev_priv(dev);

 strlcpy(info->driver, MODNAME, sizeof(info->driver));
 strlcpy(info->version, DRV_VERSION, sizeof(info->version));
 strlcpy(info->bus_info, pci_name(lp->pci_dev), sizeof(info->bus_info));
}
