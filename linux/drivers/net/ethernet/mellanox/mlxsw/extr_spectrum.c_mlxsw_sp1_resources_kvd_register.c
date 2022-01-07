
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mlxsw_core {int dummy; } ;
struct mlxsw_config_profile {scalar_t__ kvd_hash_single_parts; scalar_t__ kvd_hash_double_parts; scalar_t__ kvd_linear_size; } ;
struct devlink_resource_size_params {int dummy; } ;
struct devlink {int dummy; } ;


 int DEVLINK_RESOURCE_ID_PARENT_TOP ;
 int EIO ;
 int KVD_SIZE ;
 scalar_t__ MLXSW_CORE_RES_GET (struct mlxsw_core*,int ) ;
 int MLXSW_CORE_RES_VALID (struct mlxsw_core*,int ) ;
 int MLXSW_SP_KVD_GRANULARITY ;
 int MLXSW_SP_RESOURCE_KVD ;
 int MLXSW_SP_RESOURCE_KVD_HASH_DOUBLE ;
 int MLXSW_SP_RESOURCE_KVD_HASH_SINGLE ;
 int MLXSW_SP_RESOURCE_KVD_LINEAR ;
 int MLXSW_SP_RESOURCE_NAME_KVD ;
 int MLXSW_SP_RESOURCE_NAME_KVD_HASH_DOUBLE ;
 int MLXSW_SP_RESOURCE_NAME_KVD_HASH_SINGLE ;
 int MLXSW_SP_RESOURCE_NAME_KVD_LINEAR ;
 int devlink_resource_register (struct devlink*,int ,scalar_t__,int ,int ,struct devlink_resource_size_params*) ;
 struct mlxsw_config_profile mlxsw_sp1_config_profile ;
 int mlxsw_sp1_kvdl_resources_register (struct mlxsw_core*) ;
 int mlxsw_sp_resource_size_params_prepare (struct mlxsw_core*,struct devlink_resource_size_params*,struct devlink_resource_size_params*,struct devlink_resource_size_params*,struct devlink_resource_size_params*) ;
 struct devlink* priv_to_devlink (struct mlxsw_core*) ;
 scalar_t__ rounddown (scalar_t__,int ) ;

__attribute__((used)) static int mlxsw_sp1_resources_kvd_register(struct mlxsw_core *mlxsw_core)
{
 struct devlink *devlink = priv_to_devlink(mlxsw_core);
 struct devlink_resource_size_params hash_single_size_params;
 struct devlink_resource_size_params hash_double_size_params;
 struct devlink_resource_size_params linear_size_params;
 struct devlink_resource_size_params kvd_size_params;
 u32 kvd_size, single_size, double_size, linear_size;
 const struct mlxsw_config_profile *profile;
 int err;

 profile = &mlxsw_sp1_config_profile;
 if (!MLXSW_CORE_RES_VALID(mlxsw_core, KVD_SIZE))
  return -EIO;

 mlxsw_sp_resource_size_params_prepare(mlxsw_core, &kvd_size_params,
           &linear_size_params,
           &hash_double_size_params,
           &hash_single_size_params);

 kvd_size = MLXSW_CORE_RES_GET(mlxsw_core, KVD_SIZE);
 err = devlink_resource_register(devlink, MLXSW_SP_RESOURCE_NAME_KVD,
     kvd_size, MLXSW_SP_RESOURCE_KVD,
     DEVLINK_RESOURCE_ID_PARENT_TOP,
     &kvd_size_params);
 if (err)
  return err;

 linear_size = profile->kvd_linear_size;
 err = devlink_resource_register(devlink, MLXSW_SP_RESOURCE_NAME_KVD_LINEAR,
     linear_size,
     MLXSW_SP_RESOURCE_KVD_LINEAR,
     MLXSW_SP_RESOURCE_KVD,
     &linear_size_params);
 if (err)
  return err;

 err = mlxsw_sp1_kvdl_resources_register(mlxsw_core);
 if (err)
  return err;

 double_size = kvd_size - linear_size;
 double_size *= profile->kvd_hash_double_parts;
 double_size /= profile->kvd_hash_double_parts +
         profile->kvd_hash_single_parts;
 double_size = rounddown(double_size, MLXSW_SP_KVD_GRANULARITY);
 err = devlink_resource_register(devlink, MLXSW_SP_RESOURCE_NAME_KVD_HASH_DOUBLE,
     double_size,
     MLXSW_SP_RESOURCE_KVD_HASH_DOUBLE,
     MLXSW_SP_RESOURCE_KVD,
     &hash_double_size_params);
 if (err)
  return err;

 single_size = kvd_size - double_size - linear_size;
 err = devlink_resource_register(devlink, MLXSW_SP_RESOURCE_NAME_KVD_HASH_SINGLE,
     single_size,
     MLXSW_SP_RESOURCE_KVD_HASH_SINGLE,
     MLXSW_SP_RESOURCE_KVD,
     &hash_single_size_params);
 if (err)
  return err;

 return 0;
}
