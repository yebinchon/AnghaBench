
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_drvinfo {int bus_info; int version; int driver; } ;
struct adapter {int pdev; } ;


 int cxgb4_driver_name ;
 int cxgb4_driver_version ;
 struct adapter* netdev2adap (struct net_device*) ;
 int pci_name (int ) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void cxgb4_mgmt_get_drvinfo(struct net_device *dev,
       struct ethtool_drvinfo *info)
{
 struct adapter *adapter = netdev2adap(dev);

 strlcpy(info->driver, cxgb4_driver_name, sizeof(info->driver));
 strlcpy(info->version, cxgb4_driver_version,
  sizeof(info->version));
 strlcpy(info->bus_info, pci_name(adapter->pdev),
  sizeof(info->bus_info));
}
