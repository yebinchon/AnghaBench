
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_drvinfo {int bus_info; int version; int driver; } ;
struct ena_adapter {int pdev; } ;


 int DRV_MODULE_NAME ;
 int DRV_MODULE_VERSION ;
 struct ena_adapter* netdev_priv (struct net_device*) ;
 int pci_name (int ) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void ena_get_drvinfo(struct net_device *dev,
       struct ethtool_drvinfo *info)
{
 struct ena_adapter *adapter = netdev_priv(dev);

 strlcpy(info->driver, DRV_MODULE_NAME, sizeof(info->driver));
 strlcpy(info->version, DRV_MODULE_VERSION, sizeof(info->version));
 strlcpy(info->bus_info, pci_name(adapter->pdev),
  sizeof(info->bus_info));
}
