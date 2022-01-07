
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_core {int dummy; } ;


 int MLXSW_PORT_CPU_PORT ;
 int __mlxsw_core_port_fini (struct mlxsw_core*,int ) ;

void mlxsw_core_cpu_port_fini(struct mlxsw_core *mlxsw_core)
{
 __mlxsw_core_port_fini(mlxsw_core, MLXSW_PORT_CPU_PORT);
}
