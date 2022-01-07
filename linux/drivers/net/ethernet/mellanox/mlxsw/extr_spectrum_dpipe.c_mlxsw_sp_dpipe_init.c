
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp {int core; } ;
struct devlink {int dummy; } ;


 int devlink_dpipe_headers_register (struct devlink*,int *) ;
 int devlink_dpipe_headers_unregister (struct devlink*) ;
 int mlxsw_sp_dpipe_adj_table_init (struct mlxsw_sp*) ;
 int mlxsw_sp_dpipe_erif_table_fini (struct mlxsw_sp*) ;
 int mlxsw_sp_dpipe_erif_table_init (struct mlxsw_sp*) ;
 int mlxsw_sp_dpipe_headers ;
 int mlxsw_sp_dpipe_host4_table_fini (struct mlxsw_sp*) ;
 int mlxsw_sp_dpipe_host4_table_init (struct mlxsw_sp*) ;
 int mlxsw_sp_dpipe_host6_table_fini (struct mlxsw_sp*) ;
 int mlxsw_sp_dpipe_host6_table_init (struct mlxsw_sp*) ;
 struct devlink* priv_to_devlink (int ) ;

int mlxsw_sp_dpipe_init(struct mlxsw_sp *mlxsw_sp)
{
 struct devlink *devlink = priv_to_devlink(mlxsw_sp->core);
 int err;

 err = devlink_dpipe_headers_register(devlink,
          &mlxsw_sp_dpipe_headers);
 if (err)
  return err;
 err = mlxsw_sp_dpipe_erif_table_init(mlxsw_sp);
 if (err)
  goto err_erif_table_init;

 err = mlxsw_sp_dpipe_host4_table_init(mlxsw_sp);
 if (err)
  goto err_host4_table_init;

 err = mlxsw_sp_dpipe_host6_table_init(mlxsw_sp);
 if (err)
  goto err_host6_table_init;

 err = mlxsw_sp_dpipe_adj_table_init(mlxsw_sp);
 if (err)
  goto err_adj_table_init;

 return 0;
err_adj_table_init:
 mlxsw_sp_dpipe_host6_table_fini(mlxsw_sp);
err_host6_table_init:
 mlxsw_sp_dpipe_host4_table_fini(mlxsw_sp);
err_host4_table_init:
 mlxsw_sp_dpipe_erif_table_fini(mlxsw_sp);
err_erif_table_init:
 devlink_dpipe_headers_unregister(priv_to_devlink(mlxsw_sp->core));
 return err;
}
