
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_core {unsigned int max_ports; } ;



unsigned int mlxsw_core_max_ports(const struct mlxsw_core *mlxsw_core)
{
 return mlxsw_core->max_ports;
}
