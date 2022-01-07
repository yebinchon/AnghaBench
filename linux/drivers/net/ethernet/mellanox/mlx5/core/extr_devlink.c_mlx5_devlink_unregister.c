
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devlink {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int devlink_params_unregister (struct devlink*,int ,int ) ;
 int devlink_unregister (struct devlink*) ;
 int mlx5_devlink_params ;

void mlx5_devlink_unregister(struct devlink *devlink)
{
 devlink_params_unregister(devlink, mlx5_devlink_params,
      ARRAY_SIZE(mlx5_devlink_params));
 devlink_unregister(devlink);
}
