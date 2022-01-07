
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_core {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int devlink_params_unregister (int ,int ,int ) ;
 int mlxsw_sp2_devlink_params ;
 int mlxsw_sp_params_unregister (struct mlxsw_core*) ;
 int priv_to_devlink (struct mlxsw_core*) ;

__attribute__((used)) static void mlxsw_sp2_params_unregister(struct mlxsw_core *mlxsw_core)
{
 devlink_params_unregister(priv_to_devlink(mlxsw_core),
      mlxsw_sp2_devlink_params,
      ARRAY_SIZE(mlxsw_sp2_devlink_params));
 mlxsw_sp_params_unregister(mlxsw_core);
}
