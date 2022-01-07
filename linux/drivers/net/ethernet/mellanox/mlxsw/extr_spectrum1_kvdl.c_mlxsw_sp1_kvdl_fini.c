
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
 int devlink_resource_occ_get_unregister (struct devlink*,int ) ;
 int mlxsw_sp1_kvdl_parts_fini (struct mlxsw_sp1_kvdl*) ;
 struct devlink* priv_to_devlink (int ) ;

__attribute__((used)) static void mlxsw_sp1_kvdl_fini(struct mlxsw_sp *mlxsw_sp, void *priv)
{
 struct devlink *devlink = priv_to_devlink(mlxsw_sp->core);
 struct mlxsw_sp1_kvdl *kvdl = priv;

 devlink_resource_occ_get_unregister(devlink,
         MLXSW_SP_RESOURCE_KVD_LINEAR_LARGE_CHUNKS);
 devlink_resource_occ_get_unregister(devlink,
         MLXSW_SP_RESOURCE_KVD_LINEAR_CHUNKS);
 devlink_resource_occ_get_unregister(devlink,
         MLXSW_SP_RESOURCE_KVD_LINEAR_SINGLE);
 devlink_resource_occ_get_unregister(devlink,
         MLXSW_SP_RESOURCE_KVD_LINEAR);
 mlxsw_sp1_kvdl_parts_fini(kvdl);
}
