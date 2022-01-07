
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mlx5e_priv {struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {char* board_id; } ;
struct ethtool_drvinfo {int fw_version; int version; int driver; } ;


 int UTS_RELEASE ;
 int fw_rev_maj (struct mlx5_core_dev*) ;
 int fw_rev_min (struct mlx5_core_dev*) ;
 int fw_rev_sub (struct mlx5_core_dev*) ;
 int mlx5e_rep_driver_name ;
 struct mlx5e_priv* netdev_priv (struct net_device*) ;
 int snprintf (int ,int,char*,int,int,int,char*) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void mlx5e_rep_get_drvinfo(struct net_device *dev,
      struct ethtool_drvinfo *drvinfo)
{
 struct mlx5e_priv *priv = netdev_priv(dev);
 struct mlx5_core_dev *mdev = priv->mdev;

 strlcpy(drvinfo->driver, mlx5e_rep_driver_name,
  sizeof(drvinfo->driver));
 strlcpy(drvinfo->version, UTS_RELEASE, sizeof(drvinfo->version));
 snprintf(drvinfo->fw_version, sizeof(drvinfo->fw_version),
   "%d.%d.%04d (%.16s)",
   fw_rev_maj(mdev), fw_rev_min(mdev),
   fw_rev_sub(mdev), mdev->board_id);
}
