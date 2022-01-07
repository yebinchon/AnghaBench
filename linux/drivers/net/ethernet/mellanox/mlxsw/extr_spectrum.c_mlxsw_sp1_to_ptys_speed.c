
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct mlxsw_sp {int dummy; } ;
struct TYPE_2__ {scalar_t__ speed; scalar_t__ mask; } ;


 int MLXSW_SP1_PORT_LINK_MODE_LEN ;
 TYPE_1__* mlxsw_sp1_port_link_mode ;

__attribute__((used)) static u32 mlxsw_sp1_to_ptys_speed(struct mlxsw_sp *mlxsw_sp, u8 width,
       u32 speed)
{
 u32 ptys_proto = 0;
 int i;

 for (i = 0; i < MLXSW_SP1_PORT_LINK_MODE_LEN; i++) {
  if (speed == mlxsw_sp1_port_link_mode[i].speed)
   ptys_proto |= mlxsw_sp1_port_link_mode[i].mask;
 }
 return ptys_proto;
}
