
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nic {int pdev; } ;
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int bus_info; int version; int driver; } ;


 int DRV_NAME ;
 int DRV_VERSION ;
 struct nic* netdev_priv (struct net_device*) ;
 int pci_name (int ) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void e100_get_drvinfo(struct net_device *netdev,
 struct ethtool_drvinfo *info)
{
 struct nic *nic = netdev_priv(netdev);
 strlcpy(info->driver, DRV_NAME, sizeof(info->driver));
 strlcpy(info->version, DRV_VERSION, sizeof(info->version));
 strlcpy(info->bus_info, pci_name(nic->pdev),
  sizeof(info->bus_info));
}
