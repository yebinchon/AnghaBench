
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ixgb_adapter {int pdev; } ;
struct ethtool_drvinfo {int bus_info; int version; int driver; } ;


 int ixgb_driver_name ;
 int ixgb_driver_version ;
 struct ixgb_adapter* netdev_priv (struct net_device*) ;
 int pci_name (int ) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void
ixgb_get_drvinfo(struct net_device *netdev,
     struct ethtool_drvinfo *drvinfo)
{
 struct ixgb_adapter *adapter = netdev_priv(netdev);

 strlcpy(drvinfo->driver, ixgb_driver_name,
  sizeof(drvinfo->driver));
 strlcpy(drvinfo->version, ixgb_driver_version,
  sizeof(drvinfo->version));
 strlcpy(drvinfo->bus_info, pci_name(adapter->pdev),
  sizeof(drvinfo->bus_info));
}
