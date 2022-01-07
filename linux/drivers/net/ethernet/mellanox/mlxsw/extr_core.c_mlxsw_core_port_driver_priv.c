
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_core_port {void* port_driver_priv; } ;



void *mlxsw_core_port_driver_priv(struct mlxsw_core_port *mlxsw_core_port)
{
 return mlxsw_core_port->port_driver_priv;
}
