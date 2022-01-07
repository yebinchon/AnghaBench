
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_drvinfo {int bus_info; int version; int driver; } ;
struct ef4_nic {int pci_dev; } ;


 int EF4_DRIVER_VERSION ;
 int KBUILD_MODNAME ;
 struct ef4_nic* netdev_priv (struct net_device*) ;
 int pci_name (int ) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void ef4_ethtool_get_drvinfo(struct net_device *net_dev,
        struct ethtool_drvinfo *info)
{
 struct ef4_nic *efx = netdev_priv(net_dev);

 strlcpy(info->driver, KBUILD_MODNAME, sizeof(info->driver));
 strlcpy(info->version, EF4_DRIVER_VERSION, sizeof(info->version));
 strlcpy(info->bus_info, pci_name(efx->pci_dev), sizeof(info->bus_info));
}
