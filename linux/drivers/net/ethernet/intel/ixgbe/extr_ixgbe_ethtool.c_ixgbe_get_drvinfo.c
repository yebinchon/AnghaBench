
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ixgbe_adapter {int pdev; int eeprom_id; } ;
struct ethtool_drvinfo {int n_priv_flags; int bus_info; int fw_version; int version; int driver; } ;


 int IXGBE_PRIV_FLAGS_STR_LEN ;
 int ixgbe_driver_name ;
 int ixgbe_driver_version ;
 struct ixgbe_adapter* netdev_priv (struct net_device*) ;
 int pci_name (int ) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void ixgbe_get_drvinfo(struct net_device *netdev,
         struct ethtool_drvinfo *drvinfo)
{
 struct ixgbe_adapter *adapter = netdev_priv(netdev);

 strlcpy(drvinfo->driver, ixgbe_driver_name, sizeof(drvinfo->driver));
 strlcpy(drvinfo->version, ixgbe_driver_version,
  sizeof(drvinfo->version));

 strlcpy(drvinfo->fw_version, adapter->eeprom_id,
  sizeof(drvinfo->fw_version));

 strlcpy(drvinfo->bus_info, pci_name(adapter->pdev),
  sizeof(drvinfo->bus_info));

 drvinfo->n_priv_flags = IXGBE_PRIV_FLAGS_STR_LEN;
}
