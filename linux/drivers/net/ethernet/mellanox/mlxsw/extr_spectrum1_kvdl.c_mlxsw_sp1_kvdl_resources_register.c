
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mlxsw_core {int dummy; } ;
struct devlink_resource_size_params {int dummy; } ;
struct devlink {int dummy; } ;


 int DEVLINK_RESOURCE_UNIT_ENTRY ;
 int KVD_DOUBLE_MIN_SIZE ;
 int KVD_SINGLE_MIN_SIZE ;
 int KVD_SIZE ;
 scalar_t__ MLXSW_CORE_RES_GET (struct mlxsw_core*,int ) ;
 int MLXSW_SP1_KVDL_CHUNKS_ALLOC_SIZE ;
 int MLXSW_SP1_KVDL_CHUNKS_SIZE ;
 int MLXSW_SP1_KVDL_LARGE_CHUNKS_ALLOC_SIZE ;
 int MLXSW_SP1_KVDL_LARGE_CHUNKS_SIZE ;
 int MLXSW_SP1_KVDL_SINGLE_ALLOC_SIZE ;
 int MLXSW_SP1_KVDL_SINGLE_SIZE ;
 int MLXSW_SP_RESOURCE_KVD_LINEAR ;
 int MLXSW_SP_RESOURCE_KVD_LINEAR_CHUNKS ;
 int MLXSW_SP_RESOURCE_KVD_LINEAR_LARGE_CHUNKS ;
 int MLXSW_SP_RESOURCE_KVD_LINEAR_SINGLE ;
 int MLXSW_SP_RESOURCE_NAME_KVD_LINEAR_CHUNKS ;
 int MLXSW_SP_RESOURCE_NAME_KVD_LINEAR_LARGE_CHUNKS ;
 int MLXSW_SP_RESOURCE_NAME_KVD_LINEAR_SINGLES ;
 int devlink_resource_register (struct devlink*,int ,int ,int ,int ,struct devlink_resource_size_params*) ;
 int devlink_resource_size_params_init (struct devlink_resource_size_params*,int ,scalar_t__,int ,int ) ;
 struct devlink* priv_to_devlink (struct mlxsw_core*) ;

int mlxsw_sp1_kvdl_resources_register(struct mlxsw_core *mlxsw_core)
{
 struct devlink *devlink = priv_to_devlink(mlxsw_core);
 static struct devlink_resource_size_params size_params;
 u32 kvdl_max_size;
 int err;

 kvdl_max_size = MLXSW_CORE_RES_GET(mlxsw_core, KVD_SIZE) -
   MLXSW_CORE_RES_GET(mlxsw_core, KVD_SINGLE_MIN_SIZE) -
   MLXSW_CORE_RES_GET(mlxsw_core, KVD_DOUBLE_MIN_SIZE);

 devlink_resource_size_params_init(&size_params, 0, kvdl_max_size,
       MLXSW_SP1_KVDL_SINGLE_ALLOC_SIZE,
       DEVLINK_RESOURCE_UNIT_ENTRY);
 err = devlink_resource_register(devlink, MLXSW_SP_RESOURCE_NAME_KVD_LINEAR_SINGLES,
     MLXSW_SP1_KVDL_SINGLE_SIZE,
     MLXSW_SP_RESOURCE_KVD_LINEAR_SINGLE,
     MLXSW_SP_RESOURCE_KVD_LINEAR,
     &size_params);
 if (err)
  return err;

 devlink_resource_size_params_init(&size_params, 0, kvdl_max_size,
       MLXSW_SP1_KVDL_CHUNKS_ALLOC_SIZE,
       DEVLINK_RESOURCE_UNIT_ENTRY);
 err = devlink_resource_register(devlink, MLXSW_SP_RESOURCE_NAME_KVD_LINEAR_CHUNKS,
     MLXSW_SP1_KVDL_CHUNKS_SIZE,
     MLXSW_SP_RESOURCE_KVD_LINEAR_CHUNKS,
     MLXSW_SP_RESOURCE_KVD_LINEAR,
     &size_params);
 if (err)
  return err;

 devlink_resource_size_params_init(&size_params, 0, kvdl_max_size,
       MLXSW_SP1_KVDL_LARGE_CHUNKS_ALLOC_SIZE,
       DEVLINK_RESOURCE_UNIT_ENTRY);
 err = devlink_resource_register(devlink, MLXSW_SP_RESOURCE_NAME_KVD_LINEAR_LARGE_CHUNKS,
     MLXSW_SP1_KVDL_LARGE_CHUNKS_SIZE,
     MLXSW_SP_RESOURCE_KVD_LINEAR_LARGE_CHUNKS,
     MLXSW_SP_RESOURCE_KVD_LINEAR,
     &size_params);
 return err;
}
