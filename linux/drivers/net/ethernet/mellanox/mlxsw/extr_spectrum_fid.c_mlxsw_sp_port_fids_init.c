
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp_port {size_t local_port; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {TYPE_1__* fid_core; } ;
struct TYPE_2__ {scalar_t__* port_fid_mappings; } ;


 int mlxsw_sp_port_vp_mode_set (struct mlxsw_sp_port*,int) ;

int mlxsw_sp_port_fids_init(struct mlxsw_sp_port *mlxsw_sp_port)
{
 struct mlxsw_sp *mlxsw_sp = mlxsw_sp_port->mlxsw_sp;





 mlxsw_sp->fid_core->port_fid_mappings[mlxsw_sp_port->local_port] = 0;

 return mlxsw_sp_port_vp_mode_set(mlxsw_sp_port, 0);
}
