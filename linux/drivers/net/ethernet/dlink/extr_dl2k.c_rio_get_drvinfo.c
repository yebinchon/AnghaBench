
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_private {int pdev; } ;
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int bus_info; int version; int driver; } ;


 char* DRV_VERSION ;
 struct netdev_private* netdev_priv (struct net_device*) ;
 char* pci_name (int ) ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static void rio_get_drvinfo(struct net_device *dev, struct ethtool_drvinfo *info)
{
 struct netdev_private *np = netdev_priv(dev);

 strlcpy(info->driver, "dl2k", sizeof(info->driver));
 strlcpy(info->version, DRV_VERSION, sizeof(info->version));
 strlcpy(info->bus_info, pci_name(np->pdev), sizeof(info->bus_info));
}
