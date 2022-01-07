
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp {int core; } ;
struct devlink {int dummy; } ;


 int MLXSW_SP_DPIPE_TABLE_NAME_ERIF ;
 int devlink_dpipe_table_register (struct devlink*,int ,int *,struct mlxsw_sp*,int) ;
 int mlxsw_sp_erif_ops ;
 struct devlink* priv_to_devlink (int ) ;

__attribute__((used)) static int mlxsw_sp_dpipe_erif_table_init(struct mlxsw_sp *mlxsw_sp)
{
 struct devlink *devlink = priv_to_devlink(mlxsw_sp->core);

 return devlink_dpipe_table_register(devlink,
         MLXSW_SP_DPIPE_TABLE_NAME_ERIF,
         &mlxsw_sp_erif_ops,
         mlxsw_sp, 0);
}
