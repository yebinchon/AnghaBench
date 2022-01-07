
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp {int core; } ;
struct devlink {int dummy; } ;


 int MLXSW_SP_DPIPE_TABLE_NAME_ADJ ;
 int devlink_dpipe_table_unregister (struct devlink*,int ) ;
 struct devlink* priv_to_devlink (int ) ;

__attribute__((used)) static void mlxsw_sp_dpipe_adj_table_fini(struct mlxsw_sp *mlxsw_sp)
{
 struct devlink *devlink = priv_to_devlink(mlxsw_sp->core);

 devlink_dpipe_table_unregister(devlink,
           MLXSW_SP_DPIPE_TABLE_NAME_ADJ);
}
