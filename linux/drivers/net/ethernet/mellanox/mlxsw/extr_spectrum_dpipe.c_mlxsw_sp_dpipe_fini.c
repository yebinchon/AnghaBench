
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp {int core; } ;
struct devlink {int dummy; } ;


 int devlink_dpipe_headers_unregister (struct devlink*) ;
 int mlxsw_sp_dpipe_adj_table_fini (struct mlxsw_sp*) ;
 int mlxsw_sp_dpipe_erif_table_fini (struct mlxsw_sp*) ;
 int mlxsw_sp_dpipe_host4_table_fini (struct mlxsw_sp*) ;
 int mlxsw_sp_dpipe_host6_table_fini (struct mlxsw_sp*) ;
 struct devlink* priv_to_devlink (int ) ;

void mlxsw_sp_dpipe_fini(struct mlxsw_sp *mlxsw_sp)
{
 struct devlink *devlink = priv_to_devlink(mlxsw_sp->core);

 mlxsw_sp_dpipe_adj_table_fini(mlxsw_sp);
 mlxsw_sp_dpipe_host6_table_fini(mlxsw_sp);
 mlxsw_sp_dpipe_host4_table_fini(mlxsw_sp);
 mlxsw_sp_dpipe_erif_table_fini(mlxsw_sp);
 devlink_dpipe_headers_unregister(devlink);
}
