
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {int stats; } ;
struct mlxsw_sp_port {TYPE_1__ ptp; } ;
typedef int ptrdiff_t ;
struct TYPE_4__ {int offset; } ;


 int MLXSW_SP_PTP_PORT_STATS_LEN ;
 TYPE_2__* mlxsw_sp_ptp_port_stats ;

void mlxsw_sp1_get_stats(struct mlxsw_sp_port *mlxsw_sp_port,
    u64 *data, int data_index)
{
 void *stats = &mlxsw_sp_port->ptp.stats;
 ptrdiff_t offset;
 int i;

 data += data_index;
 for (i = 0; i < MLXSW_SP_PTP_PORT_STATS_LEN; i++) {
  offset = mlxsw_sp_ptp_port_stats[i].offset;
  *data++ = *(u64 *)(stats + offset);
 }
}
