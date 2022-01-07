
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlxsw_core {int dummy; } ;


 int __mlxsw_core_port_fini (struct mlxsw_core*,int ) ;

void mlxsw_core_port_fini(struct mlxsw_core *mlxsw_core, u8 local_port)
{
 __mlxsw_core_port_fini(mlxsw_core, local_port);
}
