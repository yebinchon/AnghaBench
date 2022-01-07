
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sib {int ports; } ;


 int MLXSW_PORT_MAX_IB_PORTS ;
 int kfree (int ) ;
 scalar_t__ mlxsw_sib_port_created (struct mlxsw_sib*,int) ;
 int mlxsw_sib_port_remove (struct mlxsw_sib*,int) ;

__attribute__((used)) static void mlxsw_sib_ports_remove(struct mlxsw_sib *mlxsw_sib)
{
 int i;

 for (i = 1; i < MLXSW_PORT_MAX_IB_PORTS; i++)
  if (mlxsw_sib_port_created(mlxsw_sib, i))
   mlxsw_sib_port_remove(mlxsw_sib, i);
 kfree(mlxsw_sib->ports);
}
