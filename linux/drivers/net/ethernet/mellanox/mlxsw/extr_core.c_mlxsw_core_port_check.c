
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_core_port {int * port_driver_priv; } ;



__attribute__((used)) static bool mlxsw_core_port_check(struct mlxsw_core_port *mlxsw_core_port)
{
 return mlxsw_core_port->port_driver_priv != ((void*)0);
}
