
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_drvinfo {int bus_info; int version; int driver; } ;
struct dmfe_board_info {int pdev; } ;


 int DRV_NAME ;
 int DRV_VERSION ;
 struct dmfe_board_info* netdev_priv (struct net_device*) ;
 int pci_name (int ) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void dmfe_ethtool_get_drvinfo(struct net_device *dev,
          struct ethtool_drvinfo *info)
{
 struct dmfe_board_info *np = netdev_priv(dev);

 strlcpy(info->driver, DRV_NAME, sizeof(info->driver));
 strlcpy(info->version, DRV_VERSION, sizeof(info->version));
 strlcpy(info->bus_info, pci_name(np->pdev), sizeof(info->bus_info));
}
