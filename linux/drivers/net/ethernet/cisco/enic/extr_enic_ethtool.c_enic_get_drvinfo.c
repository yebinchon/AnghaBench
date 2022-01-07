
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnic_devcmd_fw_info {int fw_version; } ;
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int bus_info; int fw_version; int version; int driver; } ;
struct enic {int pdev; } ;


 int DRV_NAME ;
 int DRV_VERSION ;
 int ENOMEM ;
 int enic_dev_fw_info (struct enic*,struct vnic_devcmd_fw_info**) ;
 struct enic* netdev_priv (struct net_device*) ;
 int pci_name (int ) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void enic_get_drvinfo(struct net_device *netdev,
 struct ethtool_drvinfo *drvinfo)
{
 struct enic *enic = netdev_priv(netdev);
 struct vnic_devcmd_fw_info *fw_info;
 int err;

 err = enic_dev_fw_info(enic, &fw_info);




 if (err == -ENOMEM)
  return;

 strlcpy(drvinfo->driver, DRV_NAME, sizeof(drvinfo->driver));
 strlcpy(drvinfo->version, DRV_VERSION, sizeof(drvinfo->version));
 strlcpy(drvinfo->fw_version, fw_info->fw_version,
  sizeof(drvinfo->fw_version));
 strlcpy(drvinfo->bus_info, pci_name(enic->pdev),
  sizeof(drvinfo->bus_info));
}
