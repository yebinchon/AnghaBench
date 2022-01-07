
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct iavf_adapter {int pdev; } ;
struct ethtool_drvinfo {int n_priv_flags; int bus_info; int fw_version; int version; int driver; } ;


 int IAVF_PRIV_FLAGS_STR_LEN ;
 char* iavf_driver_name ;
 char* iavf_driver_version ;
 struct iavf_adapter* netdev_priv (struct net_device*) ;
 char* pci_name (int ) ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static void iavf_get_drvinfo(struct net_device *netdev,
        struct ethtool_drvinfo *drvinfo)
{
 struct iavf_adapter *adapter = netdev_priv(netdev);

 strlcpy(drvinfo->driver, iavf_driver_name, 32);
 strlcpy(drvinfo->version, iavf_driver_version, 32);
 strlcpy(drvinfo->fw_version, "N/A", 4);
 strlcpy(drvinfo->bus_info, pci_name(adapter->pdev), 32);
 drvinfo->n_priv_flags = IAVF_PRIV_FLAGS_STR_LEN;
}
