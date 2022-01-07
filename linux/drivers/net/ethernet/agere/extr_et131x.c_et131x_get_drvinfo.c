
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_drvinfo {int bus_info; int version; int driver; } ;
struct et131x_adapter {int pdev; } ;


 int DRIVER_NAME ;
 int DRIVER_VERSION ;
 struct et131x_adapter* netdev_priv (struct net_device*) ;
 int pci_name (int ) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void et131x_get_drvinfo(struct net_device *netdev,
          struct ethtool_drvinfo *info)
{
 struct et131x_adapter *adapter = netdev_priv(netdev);

 strlcpy(info->driver, DRIVER_NAME, sizeof(info->driver));
 strlcpy(info->version, DRIVER_VERSION, sizeof(info->version));
 strlcpy(info->bus_info, pci_name(adapter->pdev),
  sizeof(info->bus_info));
}
