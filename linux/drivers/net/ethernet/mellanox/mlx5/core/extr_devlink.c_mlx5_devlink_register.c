
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devlink {int dummy; } ;
struct device {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int devlink_params_publish (struct devlink*) ;
 int devlink_params_register (struct devlink*,int ,int ) ;
 int devlink_register (struct devlink*,struct device*) ;
 int devlink_unregister (struct devlink*) ;
 int mlx5_devlink_params ;
 int mlx5_devlink_set_params_init_values (struct devlink*) ;

int mlx5_devlink_register(struct devlink *devlink, struct device *dev)
{
 int err;

 err = devlink_register(devlink, dev);
 if (err)
  return err;

 err = devlink_params_register(devlink, mlx5_devlink_params,
          ARRAY_SIZE(mlx5_devlink_params));
 if (err)
  goto params_reg_err;
 mlx5_devlink_set_params_init_values(devlink);
 devlink_params_publish(devlink);
 return 0;

params_reg_err:
 devlink_unregister(devlink);
 return err;
}
