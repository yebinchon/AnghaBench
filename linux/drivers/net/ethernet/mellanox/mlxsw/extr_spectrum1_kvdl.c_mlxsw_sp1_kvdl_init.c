
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp1_kvdl {int dummy; } ;
struct mlxsw_sp {int core; } ;
struct devlink {int dummy; } ;


 int MLXSW_SP_RESOURCE_KVD_LINEAR ;
 int MLXSW_SP_RESOURCE_KVD_LINEAR_CHUNKS ;
 int MLXSW_SP_RESOURCE_KVD_LINEAR_LARGE_CHUNKS ;
 int MLXSW_SP_RESOURCE_KVD_LINEAR_SINGLE ;
 int devlink_resource_occ_get_register (struct devlink*,int ,int ,struct mlxsw_sp1_kvdl*) ;
 int mlxsw_sp1_kvdl_chunks_occ_get ;
 int mlxsw_sp1_kvdl_large_chunks_occ_get ;
 int mlxsw_sp1_kvdl_occ_get ;
 int mlxsw_sp1_kvdl_parts_init (struct mlxsw_sp*,struct mlxsw_sp1_kvdl*) ;
 int mlxsw_sp1_kvdl_single_occ_get ;
 struct devlink* priv_to_devlink (int ) ;

__attribute__((used)) static int mlxsw_sp1_kvdl_init(struct mlxsw_sp *mlxsw_sp, void *priv)
{
 struct devlink *devlink = priv_to_devlink(mlxsw_sp->core);
 struct mlxsw_sp1_kvdl *kvdl = priv;
 int err;

 err = mlxsw_sp1_kvdl_parts_init(mlxsw_sp, kvdl);
 if (err)
  return err;
 devlink_resource_occ_get_register(devlink,
       MLXSW_SP_RESOURCE_KVD_LINEAR,
       mlxsw_sp1_kvdl_occ_get,
       kvdl);
 devlink_resource_occ_get_register(devlink,
       MLXSW_SP_RESOURCE_KVD_LINEAR_SINGLE,
       mlxsw_sp1_kvdl_single_occ_get,
       kvdl);
 devlink_resource_occ_get_register(devlink,
       MLXSW_SP_RESOURCE_KVD_LINEAR_CHUNKS,
       mlxsw_sp1_kvdl_chunks_occ_get,
       kvdl);
 devlink_resource_occ_get_register(devlink,
       MLXSW_SP_RESOURCE_KVD_LINEAR_LARGE_CHUNKS,
       mlxsw_sp1_kvdl_large_chunks_occ_get,
       kvdl);
 return 0;
}
