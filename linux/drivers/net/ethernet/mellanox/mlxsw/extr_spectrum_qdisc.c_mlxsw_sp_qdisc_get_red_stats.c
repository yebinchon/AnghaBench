
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
typedef scalar_t__ u64 ;
struct tc_qopt_offload_stats {TYPE_2__* qstats; int bstats; } ;
struct mlxsw_sp_qdisc_stats {scalar_t__ tx_packets; scalar_t__ tx_bytes; scalar_t__ overlimits; scalar_t__ drops; scalar_t__ backlog; } ;
struct mlxsw_sp_qdisc {size_t tclass_num; int prio_bitmap; struct mlxsw_sp_qdisc_stats stats_base; } ;
struct mlxsw_sp_port_xstats {scalar_t__* backlog; scalar_t__* tail_drop; scalar_t__* wred_drop; scalar_t__ ecn; } ;
struct TYPE_3__ {struct mlxsw_sp_port_xstats xstats; } ;
struct mlxsw_sp_port {int mlxsw_sp; TYPE_1__ periodic_hw_stats; } ;
struct TYPE_4__ {int backlog; int drops; int overlimits; } ;


 int _bstats_update (int ,scalar_t__,scalar_t__) ;
 scalar_t__ mlxsw_sp_cells_bytes (int ,scalar_t__) ;
 int mlxsw_sp_qdisc_bstats_per_priority_get (struct mlxsw_sp_port_xstats*,int ,scalar_t__*,scalar_t__*) ;

__attribute__((used)) static int
mlxsw_sp_qdisc_get_red_stats(struct mlxsw_sp_port *mlxsw_sp_port,
        struct mlxsw_sp_qdisc *mlxsw_sp_qdisc,
        struct tc_qopt_offload_stats *stats_ptr)
{
 u64 tx_bytes, tx_packets, overlimits, drops, backlog;
 u8 tclass_num = mlxsw_sp_qdisc->tclass_num;
 struct mlxsw_sp_qdisc_stats *stats_base;
 struct mlxsw_sp_port_xstats *xstats;

 xstats = &mlxsw_sp_port->periodic_hw_stats.xstats;
 stats_base = &mlxsw_sp_qdisc->stats_base;

 mlxsw_sp_qdisc_bstats_per_priority_get(xstats,
            mlxsw_sp_qdisc->prio_bitmap,
            &tx_packets, &tx_bytes);
 tx_bytes = tx_bytes - stats_base->tx_bytes;
 tx_packets = tx_packets - stats_base->tx_packets;

 overlimits = xstats->wred_drop[tclass_num] + xstats->ecn -
       stats_base->overlimits;
 drops = xstats->wred_drop[tclass_num] + xstats->tail_drop[tclass_num] -
  stats_base->drops;
 backlog = xstats->backlog[tclass_num];

 _bstats_update(stats_ptr->bstats, tx_bytes, tx_packets);
 stats_ptr->qstats->overlimits += overlimits;
 stats_ptr->qstats->drops += drops;
 stats_ptr->qstats->backlog +=
    mlxsw_sp_cells_bytes(mlxsw_sp_port->mlxsw_sp,
           backlog) -
    mlxsw_sp_cells_bytes(mlxsw_sp_port->mlxsw_sp,
           stats_base->backlog);

 stats_base->backlog = backlog;
 stats_base->drops += drops;
 stats_base->overlimits += overlimits;
 stats_base->tx_bytes += tx_bytes;
 stats_base->tx_packets += tx_packets;
 return 0;
}
