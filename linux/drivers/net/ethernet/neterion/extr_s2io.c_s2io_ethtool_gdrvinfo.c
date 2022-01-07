
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s2io_nic {int pdev; } ;
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int bus_info; int version; int driver; } ;


 struct s2io_nic* netdev_priv (struct net_device*) ;
 int pci_name (int ) ;
 int s2io_driver_name ;
 int s2io_driver_version ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void s2io_ethtool_gdrvinfo(struct net_device *dev,
      struct ethtool_drvinfo *info)
{
 struct s2io_nic *sp = netdev_priv(dev);

 strlcpy(info->driver, s2io_driver_name, sizeof(info->driver));
 strlcpy(info->version, s2io_driver_version, sizeof(info->version));
 strlcpy(info->bus_info, pci_name(sp->pdev), sizeof(info->bus_info));
}
