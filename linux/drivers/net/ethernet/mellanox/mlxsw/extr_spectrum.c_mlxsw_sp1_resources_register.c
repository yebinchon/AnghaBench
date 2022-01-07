
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_core {int dummy; } ;


 int mlxsw_sp1_resources_kvd_register (struct mlxsw_core*) ;

__attribute__((used)) static int mlxsw_sp1_resources_register(struct mlxsw_core *mlxsw_core)
{
 return mlxsw_sp1_resources_kvd_register(mlxsw_core);
}
