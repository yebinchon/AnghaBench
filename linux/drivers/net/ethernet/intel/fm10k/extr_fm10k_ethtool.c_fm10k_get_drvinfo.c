
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct fm10k_intfc {int pdev; } ;
struct ethtool_drvinfo {int bus_info; int version; int driver; } ;


 int fm10k_driver_name ;
 int fm10k_driver_version ;
 struct fm10k_intfc* netdev_priv (struct net_device*) ;
 int pci_name (int ) ;
 int strncpy (int ,int ,int) ;

__attribute__((used)) static void fm10k_get_drvinfo(struct net_device *dev,
         struct ethtool_drvinfo *info)
{
 struct fm10k_intfc *interface = netdev_priv(dev);

 strncpy(info->driver, fm10k_driver_name,
  sizeof(info->driver) - 1);
 strncpy(info->version, fm10k_driver_version,
  sizeof(info->version) - 1);
 strncpy(info->bus_info, pci_name(interface->pdev),
  sizeof(info->bus_info) - 1);
}
