
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ioc3_private {int pdev; } ;
struct ethtool_drvinfo {int bus_info; int version; int driver; } ;


 int IOC3_NAME ;
 int IOC3_VERSION ;
 struct ioc3_private* netdev_priv (struct net_device*) ;
 int pci_name (int ) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void ioc3_get_drvinfo(struct net_device *dev,
        struct ethtool_drvinfo *info)
{
 struct ioc3_private *ip = netdev_priv(dev);

 strlcpy(info->driver, IOC3_NAME, sizeof(info->driver));
 strlcpy(info->version, IOC3_VERSION, sizeof(info->version));
 strlcpy(info->bus_info, pci_name(ip->pdev), sizeof(info->bus_info));
}
