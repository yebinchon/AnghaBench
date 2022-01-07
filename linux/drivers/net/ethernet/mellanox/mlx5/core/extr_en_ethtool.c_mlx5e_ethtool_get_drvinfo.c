
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_priv {struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {char* board_id; int device; } ;
struct ethtool_drvinfo {int bus_info; int fw_version; int version; int driver; } ;


 int DRIVER_NAME ;
 int DRIVER_VERSION ;
 int dev_name (int ) ;
 int fw_rev_maj (struct mlx5_core_dev*) ;
 int fw_rev_min (struct mlx5_core_dev*) ;
 int fw_rev_sub (struct mlx5_core_dev*) ;
 int snprintf (int ,int,char*,int,int,int,char*) ;
 int strlcpy (int ,int ,int) ;

void mlx5e_ethtool_get_drvinfo(struct mlx5e_priv *priv,
          struct ethtool_drvinfo *drvinfo)
{
 struct mlx5_core_dev *mdev = priv->mdev;

 strlcpy(drvinfo->driver, DRIVER_NAME, sizeof(drvinfo->driver));
 strlcpy(drvinfo->version, DRIVER_VERSION,
  sizeof(drvinfo->version));
 snprintf(drvinfo->fw_version, sizeof(drvinfo->fw_version),
   "%d.%d.%04d (%.16s)",
   fw_rev_maj(mdev), fw_rev_min(mdev), fw_rev_sub(mdev),
   mdev->board_id);
 strlcpy(drvinfo->bus_info, dev_name(mdev->device),
  sizeof(drvinfo->bus_info));
}
