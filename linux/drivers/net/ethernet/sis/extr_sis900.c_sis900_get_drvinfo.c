
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sis900_private {int pci_dev; } ;
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int bus_info; int version; int driver; } ;


 int SIS900_DRV_VERSION ;
 int SIS900_MODULE_NAME ;
 struct sis900_private* netdev_priv (struct net_device*) ;
 int pci_name (int ) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void sis900_get_drvinfo(struct net_device *net_dev,
          struct ethtool_drvinfo *info)
{
 struct sis900_private *sis_priv = netdev_priv(net_dev);

 strlcpy(info->driver, SIS900_MODULE_NAME, sizeof(info->driver));
 strlcpy(info->version, SIS900_DRV_VERSION, sizeof(info->version));
 strlcpy(info->bus_info, pci_name(sis_priv->pci_dev),
  sizeof(info->bus_info));
}
