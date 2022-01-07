
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ backlog; } ;
struct mlxsw_sp_qdisc {int tclass_num; TYPE_1__ stats_base; } ;
struct mlxsw_sp_port {struct mlxsw_sp_qdisc* root_qdisc; } ;


 int mlxsw_sp_tclass_congestion_disable (struct mlxsw_sp_port*,int ) ;

__attribute__((used)) static int
mlxsw_sp_qdisc_red_destroy(struct mlxsw_sp_port *mlxsw_sp_port,
      struct mlxsw_sp_qdisc *mlxsw_sp_qdisc)
{
 struct mlxsw_sp_qdisc *root_qdisc = mlxsw_sp_port->root_qdisc;

 if (root_qdisc != mlxsw_sp_qdisc)
  root_qdisc->stats_base.backlog -=
     mlxsw_sp_qdisc->stats_base.backlog;

 return mlxsw_sp_tclass_congestion_disable(mlxsw_sp_port,
        mlxsw_sp_qdisc->tclass_num);
}
