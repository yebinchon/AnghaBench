
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct mlxsw_sp {int dummy; } ;
struct TYPE_2__ {int mask; int mask_ethtool; } ;


 int MLXSW_SP1_PORT_LINK_MODE_LEN ;
 int __set_bit (int ,unsigned long*) ;
 TYPE_1__* mlxsw_sp1_port_link_mode ;

__attribute__((used)) static void
mlxsw_sp1_from_ptys_link(struct mlxsw_sp *mlxsw_sp, u32 ptys_eth_proto,
    u8 width, unsigned long *mode)
{
 int i;

 for (i = 0; i < MLXSW_SP1_PORT_LINK_MODE_LEN; i++) {
  if (ptys_eth_proto & mlxsw_sp1_port_link_mode[i].mask)
   __set_bit(mlxsw_sp1_port_link_mode[i].mask_ethtool,
      mode);
 }
}
