
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct igc_adapter {int pdev; } ;
struct ethtool_drvinfo {int n_priv_flags; int bus_info; int version; int driver; } ;


 int IGC_PRIV_FLAGS_STR_LEN ;
 int igc_driver_name ;
 int igc_driver_version ;
 struct igc_adapter* netdev_priv (struct net_device*) ;
 int pci_name (int ) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void igc_get_drvinfo(struct net_device *netdev,
       struct ethtool_drvinfo *drvinfo)
{
 struct igc_adapter *adapter = netdev_priv(netdev);

 strlcpy(drvinfo->driver, igc_driver_name, sizeof(drvinfo->driver));
 strlcpy(drvinfo->version, igc_driver_version, sizeof(drvinfo->version));


 strlcpy(drvinfo->bus_info, pci_name(adapter->pdev),
  sizeof(drvinfo->bus_info));

 drvinfo->n_priv_flags = IGC_PRIV_FLAGS_STR_LEN;
}
