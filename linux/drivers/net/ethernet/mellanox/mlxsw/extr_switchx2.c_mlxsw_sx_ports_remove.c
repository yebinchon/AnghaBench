
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sx {int ports; int core; } ;


 int kfree (int ) ;
 int mlxsw_core_max_ports (int ) ;
 scalar_t__ mlxsw_sx_port_created (struct mlxsw_sx*,int) ;
 int mlxsw_sx_port_remove (struct mlxsw_sx*,int) ;

__attribute__((used)) static void mlxsw_sx_ports_remove(struct mlxsw_sx *mlxsw_sx)
{
 int i;

 for (i = 1; i < mlxsw_core_max_ports(mlxsw_sx->core); i++)
  if (mlxsw_sx_port_created(mlxsw_sx, i))
   mlxsw_sx_port_remove(mlxsw_sx, i);
 kfree(mlxsw_sx->ports);
}
