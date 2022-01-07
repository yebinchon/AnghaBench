
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlxsw_sib {int core; } ;


 int __mlxsw_sib_port_remove (struct mlxsw_sib*,int ) ;
 int mlxsw_core_port_fini (int ,int ) ;

__attribute__((used)) static void mlxsw_sib_port_remove(struct mlxsw_sib *mlxsw_sib, u8 local_port)
{
 __mlxsw_sib_port_remove(mlxsw_sib, local_port);
 mlxsw_core_port_fini(mlxsw_sib->core, local_port);
}
