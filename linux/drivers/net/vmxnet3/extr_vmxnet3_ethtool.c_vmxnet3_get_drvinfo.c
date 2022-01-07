
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmxnet3_adapter {int pdev; } ;
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int bus_info; int version; int driver; } ;


 int VMXNET3_DRIVER_VERSION_REPORT ;
 struct vmxnet3_adapter* netdev_priv (struct net_device*) ;
 int pci_name (int ) ;
 int strlcpy (int ,int ,int) ;
 int vmxnet3_driver_name ;

__attribute__((used)) static void
vmxnet3_get_drvinfo(struct net_device *netdev, struct ethtool_drvinfo *drvinfo)
{
 struct vmxnet3_adapter *adapter = netdev_priv(netdev);

 strlcpy(drvinfo->driver, vmxnet3_driver_name, sizeof(drvinfo->driver));

 strlcpy(drvinfo->version, VMXNET3_DRIVER_VERSION_REPORT,
  sizeof(drvinfo->version));

 strlcpy(drvinfo->bus_info, pci_name(adapter->pdev),
  sizeof(drvinfo->bus_info));
}
