
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ speed; scalar_t__ mask; } ;


 int MLXSW_SX_PORT_LINK_MODE_LEN ;
 TYPE_1__* mlxsw_sx_port_link_mode ;

__attribute__((used)) static u32 mlxsw_sx_to_ptys_speed(u32 speed)
{
 u32 ptys_proto = 0;
 int i;

 for (i = 0; i < MLXSW_SX_PORT_LINK_MODE_LEN; i++) {
  if (speed == mlxsw_sx_port_link_mode[i].speed)
   ptys_proto |= mlxsw_sx_port_link_mode[i].mask;
 }
 return ptys_proto;
}
