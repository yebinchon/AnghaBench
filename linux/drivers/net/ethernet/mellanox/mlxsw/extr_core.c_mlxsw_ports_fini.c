
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_core {int ports; } ;


 int kfree (int ) ;

__attribute__((used)) static void mlxsw_ports_fini(struct mlxsw_core *mlxsw_core)
{
 kfree(mlxsw_core->ports);
}
