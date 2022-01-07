
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union devlink_param_value {int vu8; } ;
struct mlxsw_core {int dummy; } ;
struct devlink {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int DEVLINK_PARAM_FW_LOAD_POLICY_VALUE_DRIVER ;
 int DEVLINK_PARAM_GENERIC_ID_FW_LOAD_POLICY ;
 int devlink_param_driverinit_value_set (struct devlink*,int ,union devlink_param_value) ;
 int devlink_params_register (struct devlink*,int ,int ) ;
 int mlxsw_sp_devlink_params ;
 struct devlink* priv_to_devlink (struct mlxsw_core*) ;

__attribute__((used)) static int mlxsw_sp_params_register(struct mlxsw_core *mlxsw_core)
{
 struct devlink *devlink = priv_to_devlink(mlxsw_core);
 union devlink_param_value value;
 int err;

 err = devlink_params_register(devlink, mlxsw_sp_devlink_params,
          ARRAY_SIZE(mlxsw_sp_devlink_params));
 if (err)
  return err;

 value.vu8 = DEVLINK_PARAM_FW_LOAD_POLICY_VALUE_DRIVER;
 devlink_param_driverinit_value_set(devlink,
        DEVLINK_PARAM_GENERIC_ID_FW_LOAD_POLICY,
        value);
 return 0;
}
