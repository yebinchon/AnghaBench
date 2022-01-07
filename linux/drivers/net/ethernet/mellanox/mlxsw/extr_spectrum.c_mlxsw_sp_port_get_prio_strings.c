
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {char* str; } ;


 int ETH_GSTRING_LEN ;
 int MLXSW_SP_PORT_HW_PRIO_STATS_LEN ;
 TYPE_1__* mlxsw_sp_port_hw_prio_stats ;
 int snprintf (int *,int ,char*,char*,int) ;

__attribute__((used)) static void mlxsw_sp_port_get_prio_strings(u8 **p, int prio)
{
 int i;

 for (i = 0; i < MLXSW_SP_PORT_HW_PRIO_STATS_LEN; i++) {
  snprintf(*p, ETH_GSTRING_LEN, "%.29s_%.1d",
    mlxsw_sp_port_hw_prio_stats[i].str, prio);
  *p += ETH_GSTRING_LEN;
 }
}
