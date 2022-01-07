
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netlink_ext_ack {int dummy; } ;
struct mlx4_dev {struct mlx4_dev_persistent* persist; } ;
struct mlx4_priv {struct mlx4_dev dev; } ;
struct mlx4_dev_persistent {int pdev; int dev; scalar_t__ num_vfs; } ;
struct devlink {int dummy; } ;


 struct mlx4_priv* devlink_priv (struct devlink*) ;
 int mlx4_restart_one_down (int ) ;
 int mlx4_warn (int ,char*) ;

__attribute__((used)) static int mlx4_devlink_reload_down(struct devlink *devlink,
        struct netlink_ext_ack *extack)
{
 struct mlx4_priv *priv = devlink_priv(devlink);
 struct mlx4_dev *dev = &priv->dev;
 struct mlx4_dev_persistent *persist = dev->persist;

 if (persist->num_vfs)
  mlx4_warn(persist->dev, "Reload performed on PF, will cause reset on operating Virtual Functions\n");
 mlx4_restart_one_down(persist->pdev);
 return 0;
}
