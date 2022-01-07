
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct mlxsw_sp {int dummy; } ;
struct TYPE_4__ {int advertising; } ;
struct ethtool_link_ksettings {TYPE_1__ link_modes; } ;
struct TYPE_5__ {int mask_width; int mask; } ;


 int MLXSW_SP2_PORT_LINK_MODE_LEN ;
 TYPE_2__* mlxsw_sp2_port_link_mode ;
 scalar_t__ mlxsw_sp2_test_bit_ethtool (TYPE_2__*,int ) ;
 int mlxsw_sp_port_mask_width_get (int) ;

__attribute__((used)) static u32
mlxsw_sp2_to_ptys_advert_link(struct mlxsw_sp *mlxsw_sp, u8 width,
         const struct ethtool_link_ksettings *cmd)
{
 u8 mask_width = mlxsw_sp_port_mask_width_get(width);
 u32 ptys_proto = 0;
 int i;

 for (i = 0; i < MLXSW_SP2_PORT_LINK_MODE_LEN; i++) {
  if ((mask_width & mlxsw_sp2_port_link_mode[i].mask_width) &&
      mlxsw_sp2_test_bit_ethtool(&mlxsw_sp2_port_link_mode[i],
            cmd->link_modes.advertising))
   ptys_proto |= mlxsw_sp2_port_link_mode[i].mask;
 }
 return ptys_proto;
}
