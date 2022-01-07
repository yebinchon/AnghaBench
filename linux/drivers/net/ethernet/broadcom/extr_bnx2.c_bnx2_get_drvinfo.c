
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_drvinfo {int fw_version; int bus_info; int version; int driver; } ;
struct bnx2 {int fw_version; int pdev; } ;


 int DRV_MODULE_NAME ;
 int DRV_MODULE_VERSION ;
 struct bnx2* netdev_priv (struct net_device*) ;
 int pci_name (int ) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void
bnx2_get_drvinfo(struct net_device *dev, struct ethtool_drvinfo *info)
{
 struct bnx2 *bp = netdev_priv(dev);

 strlcpy(info->driver, DRV_MODULE_NAME, sizeof(info->driver));
 strlcpy(info->version, DRV_MODULE_VERSION, sizeof(info->version));
 strlcpy(info->bus_info, pci_name(bp->pdev), sizeof(info->bus_info));
 strlcpy(info->fw_version, bp->fw_version, sizeof(info->fw_version));
}
