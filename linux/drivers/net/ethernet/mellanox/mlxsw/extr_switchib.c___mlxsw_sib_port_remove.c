
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct mlxsw_sib_port {int dummy; } ;
struct mlxsw_sib {struct mlxsw_sib_port** ports; int core; } ;


 int MLXSW_PORT_SWID_DISABLED_PORT ;
 int kfree (struct mlxsw_sib_port*) ;
 int mlxsw_core_port_clear (int ,size_t,struct mlxsw_sib*) ;
 int mlxsw_sib_port_admin_status_set (struct mlxsw_sib_port*,int) ;
 int mlxsw_sib_port_swid_set (struct mlxsw_sib_port*,int ) ;

__attribute__((used)) static void __mlxsw_sib_port_remove(struct mlxsw_sib *mlxsw_sib, u8 local_port)
{
 struct mlxsw_sib_port *mlxsw_sib_port = mlxsw_sib->ports[local_port];

 mlxsw_core_port_clear(mlxsw_sib->core, local_port, mlxsw_sib);
 mlxsw_sib->ports[local_port] = ((void*)0);
 mlxsw_sib_port_admin_status_set(mlxsw_sib_port, 0);
 mlxsw_sib_port_swid_set(mlxsw_sib_port, MLXSW_PORT_SWID_DISABLED_PORT);
 kfree(mlxsw_sib_port);
}
