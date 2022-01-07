
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct netxen_adapter {int pdev; } ;
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int bus_info; int fw_version; int version; int driver; } ;


 int NETXEN_FW_VERSION_MAJOR ;
 int NETXEN_FW_VERSION_MINOR ;
 int NETXEN_FW_VERSION_SUB ;
 int NETXEN_NIC_LINUX_VERSIONID ;
 int NXRD32 (struct netxen_adapter*,int ) ;
 struct netxen_adapter* netdev_priv (struct net_device*) ;
 int netxen_nic_driver_name ;
 int pci_name (int ) ;
 int snprintf (int ,int,char*,int,int,int) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void
netxen_nic_get_drvinfo(struct net_device *dev, struct ethtool_drvinfo *drvinfo)
{
 struct netxen_adapter *adapter = netdev_priv(dev);
 u32 fw_major = 0;
 u32 fw_minor = 0;
 u32 fw_build = 0;

 strlcpy(drvinfo->driver, netxen_nic_driver_name,
  sizeof(drvinfo->driver));
 strlcpy(drvinfo->version, NETXEN_NIC_LINUX_VERSIONID,
  sizeof(drvinfo->version));
 fw_major = NXRD32(adapter, NETXEN_FW_VERSION_MAJOR);
 fw_minor = NXRD32(adapter, NETXEN_FW_VERSION_MINOR);
 fw_build = NXRD32(adapter, NETXEN_FW_VERSION_SUB);
 snprintf(drvinfo->fw_version, sizeof(drvinfo->fw_version),
  "%d.%d.%d", fw_major, fw_minor, fw_build);

 strlcpy(drvinfo->bus_info, pci_name(adapter->pdev),
  sizeof(drvinfo->bus_info));
}
