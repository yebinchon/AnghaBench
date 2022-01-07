
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_drvinfo {int bus_info; int version; int driver; } ;
struct atl1c_adapter {int pdev; } ;


 int atl1c_driver_name ;
 int atl1c_driver_version ;
 struct atl1c_adapter* netdev_priv (struct net_device*) ;
 int pci_name (int ) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void atl1c_get_drvinfo(struct net_device *netdev,
  struct ethtool_drvinfo *drvinfo)
{
 struct atl1c_adapter *adapter = netdev_priv(netdev);

 strlcpy(drvinfo->driver, atl1c_driver_name, sizeof(drvinfo->driver));
 strlcpy(drvinfo->version, atl1c_driver_version,
  sizeof(drvinfo->version));
 strlcpy(drvinfo->bus_info, pci_name(adapter->pdev),
  sizeof(drvinfo->bus_info));
}
