
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_drvinfo {int bus_info; int fw_version; int version; int driver; } ;
struct atl1e_adapter {int pdev; } ;


 char* atl1e_driver_name ;
 char* atl1e_driver_version ;
 struct atl1e_adapter* netdev_priv (struct net_device*) ;
 char* pci_name (int ) ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static void atl1e_get_drvinfo(struct net_device *netdev,
  struct ethtool_drvinfo *drvinfo)
{
 struct atl1e_adapter *adapter = netdev_priv(netdev);

 strlcpy(drvinfo->driver, atl1e_driver_name, sizeof(drvinfo->driver));
 strlcpy(drvinfo->version, atl1e_driver_version,
  sizeof(drvinfo->version));
 strlcpy(drvinfo->fw_version, "L1e", sizeof(drvinfo->fw_version));
 strlcpy(drvinfo->bus_info, pci_name(adapter->pdev),
  sizeof(drvinfo->bus_info));
}
