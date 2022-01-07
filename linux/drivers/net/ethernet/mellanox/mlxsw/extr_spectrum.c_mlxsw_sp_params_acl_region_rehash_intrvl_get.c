
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mlxsw_sp {int dummy; } ;
struct mlxsw_core {int dummy; } ;
struct TYPE_2__ {int vu32; } ;
struct devlink_param_gset_ctx {TYPE_1__ val; } ;
struct devlink {int dummy; } ;


 struct mlxsw_core* devlink_priv (struct devlink*) ;
 struct mlxsw_sp* mlxsw_core_driver_priv (struct mlxsw_core*) ;
 int mlxsw_sp_acl_region_rehash_intrvl_get (struct mlxsw_sp*) ;

__attribute__((used)) static int
mlxsw_sp_params_acl_region_rehash_intrvl_get(struct devlink *devlink, u32 id,
          struct devlink_param_gset_ctx *ctx)
{
 struct mlxsw_core *mlxsw_core = devlink_priv(devlink);
 struct mlxsw_sp *mlxsw_sp = mlxsw_core_driver_priv(mlxsw_core);

 ctx->val.vu32 = mlxsw_sp_acl_region_rehash_intrvl_get(mlxsw_sp);
 return 0;
}
