
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_port {int dummy; } ;
struct mlxsw_sp {struct mlxsw_sp_port** ports; int core; } ;


 size_t MLXSW_PORT_CPU_PORT ;
 int kfree (struct mlxsw_sp_port*) ;
 int mlxsw_core_cpu_port_fini (int ) ;

__attribute__((used)) static void mlxsw_sp_cpu_port_remove(struct mlxsw_sp *mlxsw_sp)
{
 struct mlxsw_sp_port *mlxsw_sp_port =
    mlxsw_sp->ports[MLXSW_PORT_CPU_PORT];

 mlxsw_core_cpu_port_fini(mlxsw_sp->core);
 mlxsw_sp->ports[MLXSW_PORT_CPU_PORT] = ((void*)0);
 kfree(mlxsw_sp_port);
}
