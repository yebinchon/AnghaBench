
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlxsw_sx {int core; } ;


 int __mlxsw_sx_port_remove (struct mlxsw_sx*,int ) ;
 int mlxsw_core_port_fini (int ,int ) ;

__attribute__((used)) static void mlxsw_sx_port_remove(struct mlxsw_sx *mlxsw_sx, u8 local_port)
{
 __mlxsw_sx_port_remove(mlxsw_sx, local_port);
 mlxsw_core_port_fini(mlxsw_sx->core, local_port);
}
