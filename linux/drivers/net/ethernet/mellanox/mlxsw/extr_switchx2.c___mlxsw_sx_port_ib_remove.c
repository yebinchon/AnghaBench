
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct mlxsw_sx_port {int dummy; } ;
struct mlxsw_sx {struct mlxsw_sx_port** ports; int core; } ;


 int MLXSW_PORT_SWID_DISABLED_PORT ;
 int kfree (struct mlxsw_sx_port*) ;
 int mlxsw_core_port_clear (int ,size_t,struct mlxsw_sx*) ;
 int mlxsw_sx_port_admin_status_set (struct mlxsw_sx_port*,int) ;
 int mlxsw_sx_port_swid_set (struct mlxsw_sx_port*,int ) ;

__attribute__((used)) static void __mlxsw_sx_port_ib_remove(struct mlxsw_sx *mlxsw_sx, u8 local_port)
{
 struct mlxsw_sx_port *mlxsw_sx_port = mlxsw_sx->ports[local_port];

 mlxsw_core_port_clear(mlxsw_sx->core, local_port, mlxsw_sx);
 mlxsw_sx->ports[local_port] = ((void*)0);
 mlxsw_sx_port_admin_status_set(mlxsw_sx_port, 0);
 mlxsw_sx_port_swid_set(mlxsw_sx_port, MLXSW_PORT_SWID_DISABLED_PORT);
 kfree(mlxsw_sx_port);
}
