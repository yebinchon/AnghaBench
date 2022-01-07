
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dev; } ;
struct mlx5e_priv {struct net_device* netdev; struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;
struct firmware {int dummy; } ;
struct ethtool_flash {scalar_t__ region; int data; } ;


 int EOPNOTSUPP ;
 scalar_t__ ETHTOOL_FLASH_ALL_REGIONS ;
 int dev_hold (struct net_device*) ;
 int dev_put (struct net_device*) ;
 int mlx5_firmware_flash (struct mlx5_core_dev*,struct firmware const*,int *) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware_direct (struct firmware const**,int ,int *) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

int mlx5e_ethtool_flash_device(struct mlx5e_priv *priv,
          struct ethtool_flash *flash)
{
 struct mlx5_core_dev *mdev = priv->mdev;
 struct net_device *dev = priv->netdev;
 const struct firmware *fw;
 int err;

 if (flash->region != ETHTOOL_FLASH_ALL_REGIONS)
  return -EOPNOTSUPP;

 err = request_firmware_direct(&fw, flash->data, &dev->dev);
 if (err)
  return err;

 dev_hold(dev);
 rtnl_unlock();

 err = mlx5_firmware_flash(mdev, fw, ((void*)0));
 release_firmware(fw);

 rtnl_lock();
 dev_put(dev);
 return err;
}
