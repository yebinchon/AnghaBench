
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int max; int cur; } ;
struct mlxsw_sp_sb_pm {TYPE_1__ occ; } ;
struct mlxsw_sp_port {int local_port; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int dummy; } ;
struct mlxsw_core_port {int dummy; } ;


 struct mlxsw_sp_port* mlxsw_core_port_driver_priv (struct mlxsw_core_port*) ;
 int mlxsw_sp_cells_bytes (struct mlxsw_sp*,int ) ;
 struct mlxsw_sp_sb_pm* mlxsw_sp_sb_pm_get (struct mlxsw_sp*,int ,int ) ;

int mlxsw_sp_sb_occ_port_pool_get(struct mlxsw_core_port *mlxsw_core_port,
      unsigned int sb_index, u16 pool_index,
      u32 *p_cur, u32 *p_max)
{
 struct mlxsw_sp_port *mlxsw_sp_port =
   mlxsw_core_port_driver_priv(mlxsw_core_port);
 struct mlxsw_sp *mlxsw_sp = mlxsw_sp_port->mlxsw_sp;
 u8 local_port = mlxsw_sp_port->local_port;
 struct mlxsw_sp_sb_pm *pm = mlxsw_sp_sb_pm_get(mlxsw_sp, local_port,
             pool_index);

 *p_cur = mlxsw_sp_cells_bytes(mlxsw_sp, pm->occ.cur);
 *p_max = mlxsw_sp_cells_bytes(mlxsw_sp, pm->occ.max);
 return 0;
}
