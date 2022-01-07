
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct net_device {int dummy; } ;
struct mlx4_en_priv {struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {TYPE_3__* dev; } ;
struct ethtool_drvinfo {int bus_info; int fw_version; int version; int driver; } ;
struct TYPE_4__ {int fw_ver; } ;
struct TYPE_6__ {TYPE_2__* persist; TYPE_1__ caps; } ;
struct TYPE_5__ {int pdev; } ;


 int DRV_NAME ;
 int DRV_VERSION ;
 struct mlx4_en_priv* netdev_priv (struct net_device*) ;
 int pci_name (int ) ;
 int snprintf (int ,int,char*,int,int,int) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void
mlx4_en_get_drvinfo(struct net_device *dev, struct ethtool_drvinfo *drvinfo)
{
 struct mlx4_en_priv *priv = netdev_priv(dev);
 struct mlx4_en_dev *mdev = priv->mdev;

 strlcpy(drvinfo->driver, DRV_NAME, sizeof(drvinfo->driver));
 strlcpy(drvinfo->version, DRV_VERSION,
  sizeof(drvinfo->version));
 snprintf(drvinfo->fw_version, sizeof(drvinfo->fw_version),
  "%d.%d.%d",
  (u16) (mdev->dev->caps.fw_ver >> 32),
  (u16) ((mdev->dev->caps.fw_ver >> 16) & 0xffff),
  (u16) (mdev->dev->caps.fw_ver & 0xffff));
 strlcpy(drvinfo->bus_info, pci_name(mdev->dev->persist->pdev),
  sizeof(drvinfo->bus_info));
}
