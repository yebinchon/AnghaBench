
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct tc_prio_qopt_offload_params {TYPE_2__* qstats; } ;
struct TYPE_3__ {int backlog; } ;
struct mlxsw_sp_qdisc {TYPE_1__ stats_base; } ;
struct mlxsw_sp_port {int mlxsw_sp; } ;
struct TYPE_4__ {int backlog; } ;


 scalar_t__ mlxsw_sp_cells_bytes (int ,int ) ;

__attribute__((used)) static void
mlxsw_sp_qdisc_prio_unoffload(struct mlxsw_sp_port *mlxsw_sp_port,
         struct mlxsw_sp_qdisc *mlxsw_sp_qdisc,
         void *params)
{
 struct tc_prio_qopt_offload_params *p = params;
 u64 backlog;

 backlog = mlxsw_sp_cells_bytes(mlxsw_sp_port->mlxsw_sp,
           mlxsw_sp_qdisc->stats_base.backlog);
 p->qstats->backlog -= backlog;
}
