
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ixgbevf_adapter {int pdev; } ;
struct ethtool_drvinfo {int n_priv_flags; int bus_info; int version; int driver; } ;


 int IXGBEVF_PRIV_FLAGS_STR_LEN ;
 int ixgbevf_driver_name ;
 int ixgbevf_driver_version ;
 struct ixgbevf_adapter* netdev_priv (struct net_device*) ;
 int pci_name (int ) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void ixgbevf_get_drvinfo(struct net_device *netdev,
    struct ethtool_drvinfo *drvinfo)
{
 struct ixgbevf_adapter *adapter = netdev_priv(netdev);

 strlcpy(drvinfo->driver, ixgbevf_driver_name, sizeof(drvinfo->driver));
 strlcpy(drvinfo->version, ixgbevf_driver_version,
  sizeof(drvinfo->version));
 strlcpy(drvinfo->bus_info, pci_name(adapter->pdev),
  sizeof(drvinfo->bus_info));

 drvinfo->n_priv_flags = IXGBEVF_PRIV_FLAGS_STR_LEN;
}
