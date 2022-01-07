
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct igb_adapter {int pdev; int fw_version; } ;
struct ethtool_drvinfo {int n_priv_flags; int bus_info; int fw_version; int version; int driver; } ;


 int IGB_PRIV_FLAGS_STR_LEN ;
 int igb_driver_name ;
 int igb_driver_version ;
 struct igb_adapter* netdev_priv (struct net_device*) ;
 int pci_name (int ) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void igb_get_drvinfo(struct net_device *netdev,
       struct ethtool_drvinfo *drvinfo)
{
 struct igb_adapter *adapter = netdev_priv(netdev);

 strlcpy(drvinfo->driver, igb_driver_name, sizeof(drvinfo->driver));
 strlcpy(drvinfo->version, igb_driver_version, sizeof(drvinfo->version));




 strlcpy(drvinfo->fw_version, adapter->fw_version,
  sizeof(drvinfo->fw_version));
 strlcpy(drvinfo->bus_info, pci_name(adapter->pdev),
  sizeof(drvinfo->bus_info));

 drvinfo->n_priv_flags = IGB_PRIV_FLAGS_STR_LEN;
}
