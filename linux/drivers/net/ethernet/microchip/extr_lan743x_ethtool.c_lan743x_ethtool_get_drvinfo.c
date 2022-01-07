
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct lan743x_adapter {int pdev; } ;
struct ethtool_drvinfo {int bus_info; int driver; } ;


 int DRIVER_NAME ;
 struct lan743x_adapter* netdev_priv (struct net_device*) ;
 int pci_name (int ) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void lan743x_ethtool_get_drvinfo(struct net_device *netdev,
     struct ethtool_drvinfo *info)
{
 struct lan743x_adapter *adapter = netdev_priv(netdev);

 strlcpy(info->driver, DRIVER_NAME, sizeof(info->driver));
 strlcpy(info->bus_info,
  pci_name(adapter->pdev), sizeof(info->bus_info));
}
