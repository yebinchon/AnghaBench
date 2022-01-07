
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct mlxsw_sp {int dummy; } ;
struct TYPE_3__ {int mask; int mask_width; } ;


 int MLXSW_SP2_PORT_LINK_MODE_LEN ;
 TYPE_1__* mlxsw_sp2_port_link_mode ;
 int mlxsw_sp2_set_bit_ethtool (TYPE_1__*,unsigned long*) ;
 int mlxsw_sp_port_mask_width_get (int) ;

__attribute__((used)) static void
mlxsw_sp2_from_ptys_link(struct mlxsw_sp *mlxsw_sp, u32 ptys_eth_proto,
    u8 width, unsigned long *mode)
{
 u8 mask_width = mlxsw_sp_port_mask_width_get(width);
 int i;

 for (i = 0; i < MLXSW_SP2_PORT_LINK_MODE_LEN; i++) {
  if ((ptys_eth_proto & mlxsw_sp2_port_link_mode[i].mask) &&
      (mask_width & mlxsw_sp2_port_link_mode[i].mask_width))
   mlxsw_sp2_set_bit_ethtool(&mlxsw_sp2_port_link_mode[i],
        mode);
 }
}
