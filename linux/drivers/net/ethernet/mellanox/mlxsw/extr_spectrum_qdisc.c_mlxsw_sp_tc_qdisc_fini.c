
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_port {int root_qdisc; int tclass_qdiscs; } ;


 int kfree (int ) ;

void mlxsw_sp_tc_qdisc_fini(struct mlxsw_sp_port *mlxsw_sp_port)
{
 kfree(mlxsw_sp_port->tclass_qdiscs);
 kfree(mlxsw_sp_port->root_qdisc);
}
