
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct mlxsw_sp {int dummy; } ;
struct TYPE_2__ {scalar_t__ speed; int mask_width; scalar_t__ mask; } ;


 int MLXSW_SP2_PORT_LINK_MODE_LEN ;
 TYPE_1__* mlxsw_sp2_port_link_mode ;
 int mlxsw_sp_port_mask_width_get (int) ;

__attribute__((used)) static u32 mlxsw_sp2_to_ptys_speed(struct mlxsw_sp *mlxsw_sp,
       u8 width, u32 speed)
{
 u8 mask_width = mlxsw_sp_port_mask_width_get(width);
 u32 ptys_proto = 0;
 int i;

 for (i = 0; i < MLXSW_SP2_PORT_LINK_MODE_LEN; i++) {
  if ((speed == mlxsw_sp2_port_link_mode[i].speed) &&
      (mask_width & mlxsw_sp2_port_link_mode[i].mask_width))
   ptys_proto |= mlxsw_sp2_port_link_mode[i].mask;
 }
 return ptys_proto;
}
