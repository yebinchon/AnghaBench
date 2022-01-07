
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union devlink_param_value {scalar_t__ vu32; } ;
struct mlxsw_core {int dummy; } ;
struct devlink {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int MLXSW_DEVLINK_PARAM_ID_ACL_REGION_REHASH_INTERVAL ;
 int devlink_param_driverinit_value_set (struct devlink*,int ,union devlink_param_value) ;
 int devlink_params_register (struct devlink*,int ,int ) ;
 int mlxsw_sp2_devlink_params ;
 int mlxsw_sp_params_register (struct mlxsw_core*) ;
 int mlxsw_sp_params_unregister (struct mlxsw_core*) ;
 struct devlink* priv_to_devlink (struct mlxsw_core*) ;

__attribute__((used)) static int mlxsw_sp2_params_register(struct mlxsw_core *mlxsw_core)
{
 struct devlink *devlink = priv_to_devlink(mlxsw_core);
 union devlink_param_value value;
 int err;

 err = mlxsw_sp_params_register(mlxsw_core);
 if (err)
  return err;

 err = devlink_params_register(devlink, mlxsw_sp2_devlink_params,
          ARRAY_SIZE(mlxsw_sp2_devlink_params));
 if (err)
  goto err_devlink_params_register;

 value.vu32 = 0;
 devlink_param_driverinit_value_set(devlink,
        MLXSW_DEVLINK_PARAM_ID_ACL_REGION_REHASH_INTERVAL,
        value);
 return 0;

err_devlink_params_register:
 mlxsw_sp_params_unregister(mlxsw_core);
 return err;
}
