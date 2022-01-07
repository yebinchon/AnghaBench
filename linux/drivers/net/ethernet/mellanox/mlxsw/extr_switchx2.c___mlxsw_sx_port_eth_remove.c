
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct mlxsw_sx_port {int dev; int pcpu_stats; } ;
struct mlxsw_sx {struct mlxsw_sx_port** ports; int core; } ;


 int MLXSW_PORT_SWID_DISABLED_PORT ;
 int free_netdev (int ) ;
 int free_percpu (int ) ;
 int mlxsw_core_port_clear (int ,size_t,struct mlxsw_sx*) ;
 int mlxsw_sx_port_swid_set (struct mlxsw_sx_port*,int ) ;
 int unregister_netdev (int ) ;

__attribute__((used)) static void __mlxsw_sx_port_eth_remove(struct mlxsw_sx *mlxsw_sx, u8 local_port)
{
 struct mlxsw_sx_port *mlxsw_sx_port = mlxsw_sx->ports[local_port];

 mlxsw_core_port_clear(mlxsw_sx->core, local_port, mlxsw_sx);
 unregister_netdev(mlxsw_sx_port->dev);
 mlxsw_sx->ports[local_port] = ((void*)0);
 mlxsw_sx_port_swid_set(mlxsw_sx_port, MLXSW_PORT_SWID_DISABLED_PORT);
 free_percpu(mlxsw_sx_port->pcpu_stats);
 free_netdev(mlxsw_sx_port->dev);
}
