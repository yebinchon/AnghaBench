
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ql3_adapter {int pdev; } ;
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int bus_info; int version; int driver; } ;


 struct ql3_adapter* netdev_priv (struct net_device*) ;
 int pci_name (int ) ;
 int ql3xxx_driver_name ;
 int ql3xxx_driver_version ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void ql_get_drvinfo(struct net_device *ndev,
      struct ethtool_drvinfo *drvinfo)
{
 struct ql3_adapter *qdev = netdev_priv(ndev);
 strlcpy(drvinfo->driver, ql3xxx_driver_name, sizeof(drvinfo->driver));
 strlcpy(drvinfo->version, ql3xxx_driver_version,
  sizeof(drvinfo->version));
 strlcpy(drvinfo->bus_info, pci_name(qdev->pdev),
  sizeof(drvinfo->bus_info));
}
