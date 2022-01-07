
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int str; } ;


 int ETH_GSTRING_LEN ;
 int MLXSW_SP_PTP_PORT_STATS_LEN ;
 int memcpy (int *,int ,int ) ;
 TYPE_1__* mlxsw_sp_ptp_port_stats ;

void mlxsw_sp1_get_stats_strings(u8 **p)
{
 int i;

 for (i = 0; i < MLXSW_SP_PTP_PORT_STATS_LEN; i++) {
  memcpy(*p, mlxsw_sp_ptp_port_stats[i].str,
         ETH_GSTRING_LEN);
  *p += ETH_GSTRING_LEN;
 }
}
