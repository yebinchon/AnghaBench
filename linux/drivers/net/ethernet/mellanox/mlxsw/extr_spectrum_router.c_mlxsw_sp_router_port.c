
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct mlxsw_sp {int core; } ;


 scalar_t__ mlxsw_core_max_ports (int ) ;

u8 mlxsw_sp_router_port(const struct mlxsw_sp *mlxsw_sp)
{
 return mlxsw_core_max_ports(mlxsw_sp->core) + 1;
}
