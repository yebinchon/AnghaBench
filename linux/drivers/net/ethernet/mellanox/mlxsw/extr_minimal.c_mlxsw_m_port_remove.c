
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct mlxsw_m_port {int dev; } ;
struct mlxsw_m {int core; struct mlxsw_m_port** ports; } ;


 int free_netdev (int ) ;
 int mlxsw_core_port_clear (int ,size_t,struct mlxsw_m*) ;
 int mlxsw_core_port_fini (int ,size_t) ;
 int unregister_netdev (int ) ;

__attribute__((used)) static void mlxsw_m_port_remove(struct mlxsw_m *mlxsw_m, u8 local_port)
{
 struct mlxsw_m_port *mlxsw_m_port = mlxsw_m->ports[local_port];

 mlxsw_core_port_clear(mlxsw_m->core, local_port, mlxsw_m);
 unregister_netdev(mlxsw_m_port->dev);
 mlxsw_m->ports[local_port] = ((void*)0);
 free_netdev(mlxsw_m_port->dev);
 mlxsw_core_port_fini(mlxsw_m->core, local_port);
}
