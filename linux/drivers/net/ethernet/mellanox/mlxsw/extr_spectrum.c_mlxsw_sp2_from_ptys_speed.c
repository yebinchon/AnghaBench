
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mlxsw_sp {int dummy; } ;
struct TYPE_2__ {int mask; int speed; } ;


 int MLXSW_SP2_PORT_LINK_MODE_LEN ;
 int SPEED_UNKNOWN ;
 TYPE_1__* mlxsw_sp2_port_link_mode ;

__attribute__((used)) static u32
mlxsw_sp2_from_ptys_speed(struct mlxsw_sp *mlxsw_sp, u32 ptys_eth_proto)
{
 int i;

 for (i = 0; i < MLXSW_SP2_PORT_LINK_MODE_LEN; i++) {
  if (ptys_eth_proto & mlxsw_sp2_port_link_mode[i].mask)
   return mlxsw_sp2_port_link_mode[i].speed;
 }

 return SPEED_UNKNOWN;
}
