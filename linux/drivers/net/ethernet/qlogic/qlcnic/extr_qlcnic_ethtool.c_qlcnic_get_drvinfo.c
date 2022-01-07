
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qlcnic_adapter {int pdev; } ;
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int version; int driver; int bus_info; int fw_version; } ;


 int QLCNIC_FW_VERSION_MAJOR ;
 int QLCNIC_FW_VERSION_MINOR ;
 int QLCNIC_FW_VERSION_SUB ;
 int QLCNIC_LINUX_VERSIONID ;
 int QLC_SHARED_REG_RD32 (struct qlcnic_adapter*,int ) ;
 struct qlcnic_adapter* netdev_priv (struct net_device*) ;
 int pci_name (int ) ;
 int qlcnic_driver_name ;
 int snprintf (int ,int,char*,int,int,int) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void
qlcnic_get_drvinfo(struct net_device *dev, struct ethtool_drvinfo *drvinfo)
{
 struct qlcnic_adapter *adapter = netdev_priv(dev);
 u32 fw_major, fw_minor, fw_build;
 fw_major = QLC_SHARED_REG_RD32(adapter, QLCNIC_FW_VERSION_MAJOR);
 fw_minor = QLC_SHARED_REG_RD32(adapter, QLCNIC_FW_VERSION_MINOR);
 fw_build = QLC_SHARED_REG_RD32(adapter, QLCNIC_FW_VERSION_SUB);
 snprintf(drvinfo->fw_version, sizeof(drvinfo->fw_version),
  "%d.%d.%d", fw_major, fw_minor, fw_build);

 strlcpy(drvinfo->bus_info, pci_name(adapter->pdev),
  sizeof(drvinfo->bus_info));
 strlcpy(drvinfo->driver, qlcnic_driver_name, sizeof(drvinfo->driver));
 strlcpy(drvinfo->version, QLCNIC_LINUX_VERSIONID,
  sizeof(drvinfo->version));
}
