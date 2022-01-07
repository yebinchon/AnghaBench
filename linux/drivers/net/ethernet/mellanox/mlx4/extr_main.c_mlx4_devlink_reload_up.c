
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netlink_ext_ack {int dummy; } ;
struct mlx4_dev {struct mlx4_dev_persistent* persist; } ;
struct mlx4_priv {struct mlx4_dev dev; } ;
struct mlx4_dev_persistent {int dev; int pdev; } ;
struct devlink {int dummy; } ;


 struct mlx4_priv* devlink_priv (struct devlink*) ;
 int mlx4_err (int ,char*,int) ;
 int mlx4_restart_one_up (int ,int,struct devlink*) ;

__attribute__((used)) static int mlx4_devlink_reload_up(struct devlink *devlink,
      struct netlink_ext_ack *extack)
{
 struct mlx4_priv *priv = devlink_priv(devlink);
 struct mlx4_dev *dev = &priv->dev;
 struct mlx4_dev_persistent *persist = dev->persist;
 int err;

 err = mlx4_restart_one_up(persist->pdev, 1, devlink);
 if (err)
  mlx4_err(persist->dev, "mlx4_restart_one_up failed, ret=%d\n",
    err);

 return err;
}
