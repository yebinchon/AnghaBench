
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp {TYPE_1__* sb; int core; } ;
struct TYPE_2__ {int * ports; int * prs; } ;


 int kfree (int *) ;
 int mlxsw_core_max_ports (int ) ;
 int mlxsw_sp_sb_port_fini (int *) ;

__attribute__((used)) static void mlxsw_sp_sb_ports_fini(struct mlxsw_sp *mlxsw_sp)
{
 int max_ports = mlxsw_core_max_ports(mlxsw_sp->core);
 int i;

 for (i = max_ports - 1; i >= 0; i--)
  mlxsw_sp_sb_port_fini(&mlxsw_sp->sb->ports[i]);
 kfree(mlxsw_sp->sb->prs);
 kfree(mlxsw_sp->sb->ports);
}
