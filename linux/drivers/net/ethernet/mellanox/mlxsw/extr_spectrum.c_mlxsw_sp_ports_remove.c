
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp {int ports; int port_to_module; int core; } ;


 int kfree (int ) ;
 int mlxsw_core_max_ports (int ) ;
 int mlxsw_sp_cpu_port_remove (struct mlxsw_sp*) ;
 scalar_t__ mlxsw_sp_port_created (struct mlxsw_sp*,int) ;
 int mlxsw_sp_port_remove (struct mlxsw_sp*,int) ;

__attribute__((used)) static void mlxsw_sp_ports_remove(struct mlxsw_sp *mlxsw_sp)
{
 int i;

 for (i = 1; i < mlxsw_core_max_ports(mlxsw_sp->core); i++)
  if (mlxsw_sp_port_created(mlxsw_sp, i))
   mlxsw_sp_port_remove(mlxsw_sp, i);
 mlxsw_sp_cpu_port_remove(mlxsw_sp);
 kfree(mlxsw_sp->port_to_module);
 kfree(mlxsw_sp->ports);
}
