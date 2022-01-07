
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int str; } ;


 int ETH_GSTRING_LEN ;

 int MLXSW_SX_PORT_HW_STATS_LEN ;
 int memcpy (int *,int ,int ) ;
 TYPE_1__* mlxsw_sx_port_hw_stats ;

__attribute__((used)) static void mlxsw_sx_port_get_strings(struct net_device *dev,
          u32 stringset, u8 *data)
{
 u8 *p = data;
 int i;

 switch (stringset) {
 case 128:
  for (i = 0; i < MLXSW_SX_PORT_HW_STATS_LEN; i++) {
   memcpy(p, mlxsw_sx_port_hw_stats[i].str,
          ETH_GSTRING_LEN);
   p += ETH_GSTRING_LEN;
  }
  break;
 }
}
