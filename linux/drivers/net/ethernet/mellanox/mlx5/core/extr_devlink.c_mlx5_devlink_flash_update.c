
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netlink_ext_ack {int dummy; } ;
struct mlx5_core_dev {TYPE_1__* pdev; } ;
struct firmware {int dummy; } ;
struct devlink {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int EOPNOTSUPP ;
 struct mlx5_core_dev* devlink_priv (struct devlink*) ;
 int mlx5_firmware_flash (struct mlx5_core_dev*,struct firmware const*,struct netlink_ext_ack*) ;
 int request_firmware_direct (struct firmware const**,char const*,int *) ;

__attribute__((used)) static int mlx5_devlink_flash_update(struct devlink *devlink,
         const char *file_name,
         const char *component,
         struct netlink_ext_ack *extack)
{
 struct mlx5_core_dev *dev = devlink_priv(devlink);
 const struct firmware *fw;
 int err;

 if (component)
  return -EOPNOTSUPP;

 err = request_firmware_direct(&fw, file_name, &dev->pdev->dev);
 if (err)
  return err;

 return mlx5_firmware_flash(dev, fw, extack);
}
