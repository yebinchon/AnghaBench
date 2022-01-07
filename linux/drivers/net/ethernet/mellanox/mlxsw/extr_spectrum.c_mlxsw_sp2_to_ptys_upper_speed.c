
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct mlxsw_sp {int dummy; } ;
struct TYPE_2__ {scalar_t__ speed; scalar_t__ mask; } ;


 int MLXSW_SP2_PORT_LINK_MODE_LEN ;
 TYPE_1__* mlxsw_sp2_port_link_mode ;

__attribute__((used)) static u32
mlxsw_sp2_to_ptys_upper_speed(struct mlxsw_sp *mlxsw_sp, u32 upper_speed)
{
 u32 ptys_proto = 0;
 int i;

 for (i = 0; i < MLXSW_SP2_PORT_LINK_MODE_LEN; i++) {
  if (mlxsw_sp2_port_link_mode[i].speed <= upper_speed)
   ptys_proto |= mlxsw_sp2_port_link_mode[i].mask;
 }
 return ptys_proto;
}
