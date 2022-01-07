
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int advertised; int mask; } ;


 int MLXSW_SX_PORT_LINK_MODE_LEN ;
 TYPE_1__* mlxsw_sx_port_link_mode ;

__attribute__((used)) static u32 mlxsw_sx_to_ptys_advert_link(u32 advertising)
{
 u32 ptys_proto = 0;
 int i;

 for (i = 0; i < MLXSW_SX_PORT_LINK_MODE_LEN; i++) {
  if (advertising & mlxsw_sx_port_link_mode[i].advertised)
   ptys_proto |= mlxsw_sx_port_link_mode[i].mask;
 }
 return ptys_proto;
}
