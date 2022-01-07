
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlxsw_core {int dummy; } ;
struct devlink_resource_size_params {int dummy; } ;
struct devlink {int dummy; } ;


 int DEVLINK_RESOURCE_ID_PARENT_TOP ;
 int DEVLINK_RESOURCE_UNIT_ENTRY ;
 int EIO ;
 int KVD_SIZE ;
 int MLXSW_CORE_RES_GET (struct mlxsw_core*,int ) ;
 int MLXSW_CORE_RES_VALID (struct mlxsw_core*,int ) ;
 int MLXSW_SP_KVD_GRANULARITY ;
 int MLXSW_SP_RESOURCE_KVD ;
 int MLXSW_SP_RESOURCE_NAME_KVD ;
 int devlink_resource_register (struct devlink*,int ,int ,int ,int ,struct devlink_resource_size_params*) ;
 int devlink_resource_size_params_init (struct devlink_resource_size_params*,int ,int ,int ,int ) ;
 struct devlink* priv_to_devlink (struct mlxsw_core*) ;

__attribute__((used)) static int mlxsw_sp2_resources_kvd_register(struct mlxsw_core *mlxsw_core)
{
 struct devlink *devlink = priv_to_devlink(mlxsw_core);
 struct devlink_resource_size_params kvd_size_params;
 u32 kvd_size;

 if (!MLXSW_CORE_RES_VALID(mlxsw_core, KVD_SIZE))
  return -EIO;

 kvd_size = MLXSW_CORE_RES_GET(mlxsw_core, KVD_SIZE);
 devlink_resource_size_params_init(&kvd_size_params, kvd_size, kvd_size,
       MLXSW_SP_KVD_GRANULARITY,
       DEVLINK_RESOURCE_UNIT_ENTRY);

 return devlink_resource_register(devlink, MLXSW_SP_RESOURCE_NAME_KVD,
      kvd_size, MLXSW_SP_RESOURCE_KVD,
      DEVLINK_RESOURCE_ID_PARENT_TOP,
      &kvd_size_params);
}
