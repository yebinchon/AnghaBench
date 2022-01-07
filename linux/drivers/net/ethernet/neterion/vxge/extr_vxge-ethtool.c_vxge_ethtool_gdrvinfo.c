
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vxgedev {int pdev; int fw_version; } ;
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int bus_info; int fw_version; int version; int driver; } ;


 int DRV_VERSION ;
 int VXGE_DRIVER_NAME ;
 struct vxgedev* netdev_priv (struct net_device*) ;
 int pci_name (int ) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void vxge_ethtool_gdrvinfo(struct net_device *dev,
      struct ethtool_drvinfo *info)
{
 struct vxgedev *vdev = netdev_priv(dev);
 strlcpy(info->driver, VXGE_DRIVER_NAME, sizeof(info->driver));
 strlcpy(info->version, DRV_VERSION, sizeof(info->version));
 strlcpy(info->fw_version, vdev->fw_version, sizeof(info->fw_version));
 strlcpy(info->bus_info, pci_name(vdev->pdev), sizeof(info->bus_info));
}
