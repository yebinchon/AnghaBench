
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp {int sb; int core; } ;


 int devlink_sb_unregister (int ,int ) ;
 int kfree (int ) ;
 int mlxsw_sp_sb_ports_fini (struct mlxsw_sp*) ;
 int priv_to_devlink (int ) ;

void mlxsw_sp_buffers_fini(struct mlxsw_sp *mlxsw_sp)
{
 devlink_sb_unregister(priv_to_devlink(mlxsw_sp->core), 0);
 mlxsw_sp_sb_ports_fini(mlxsw_sp);
 kfree(mlxsw_sp->sb);
}
