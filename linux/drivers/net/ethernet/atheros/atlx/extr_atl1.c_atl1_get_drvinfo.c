
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_drvinfo {int bus_info; int version; int driver; } ;
struct atl1_adapter {int pdev; } ;


 int ATLX_DRIVER_NAME ;
 int ATLX_DRIVER_VERSION ;
 struct atl1_adapter* netdev_priv (struct net_device*) ;
 int pci_name (int ) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void atl1_get_drvinfo(struct net_device *netdev,
 struct ethtool_drvinfo *drvinfo)
{
 struct atl1_adapter *adapter = netdev_priv(netdev);

 strlcpy(drvinfo->driver, ATLX_DRIVER_NAME, sizeof(drvinfo->driver));
 strlcpy(drvinfo->version, ATLX_DRIVER_VERSION,
  sizeof(drvinfo->version));
 strlcpy(drvinfo->bus_info, pci_name(adapter->pdev),
  sizeof(drvinfo->bus_info));
}
