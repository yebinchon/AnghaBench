
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp {int core; } ;
struct devlink {int dummy; } ;


 int MLXSW_SP_DPIPE_TABLE_NAME_HOST4 ;
 int MLXSW_SP_DPIPE_TABLE_RESOURCE_UNIT_HOST4 ;
 int MLXSW_SP_RESOURCE_KVD_HASH_SINGLE ;
 int devlink_dpipe_table_register (struct devlink*,int ,int *,struct mlxsw_sp*,int) ;
 int devlink_dpipe_table_resource_set (struct devlink*,int ,int ,int ) ;
 int devlink_dpipe_table_unregister (struct devlink*,int ) ;
 int mlxsw_sp_host4_ops ;
 struct devlink* priv_to_devlink (int ) ;

__attribute__((used)) static int mlxsw_sp_dpipe_host4_table_init(struct mlxsw_sp *mlxsw_sp)
{
 struct devlink *devlink = priv_to_devlink(mlxsw_sp->core);
 int err;

 err = devlink_dpipe_table_register(devlink,
        MLXSW_SP_DPIPE_TABLE_NAME_HOST4,
        &mlxsw_sp_host4_ops,
        mlxsw_sp, 0);
 if (err)
  return err;

 err = devlink_dpipe_table_resource_set(devlink,
            MLXSW_SP_DPIPE_TABLE_NAME_HOST4,
            MLXSW_SP_RESOURCE_KVD_HASH_SINGLE,
            MLXSW_SP_DPIPE_TABLE_RESOURCE_UNIT_HOST4);
 if (err)
  goto err_resource_set;

 return 0;

err_resource_set:
 devlink_dpipe_table_unregister(devlink,
           MLXSW_SP_DPIPE_TABLE_NAME_HOST4);
 return err;
}
