
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct mlxsw_sp {int dummy; } ;
struct TYPE_3__ {int advertising; } ;
struct ethtool_link_ksettings {TYPE_1__ link_modes; } ;
struct TYPE_4__ {int mask; int mask_ethtool; } ;


 int MLXSW_SP1_PORT_LINK_MODE_LEN ;
 TYPE_2__* mlxsw_sp1_port_link_mode ;
 scalar_t__ test_bit (int ,int ) ;

__attribute__((used)) static u32
mlxsw_sp1_to_ptys_advert_link(struct mlxsw_sp *mlxsw_sp, u8 width,
         const struct ethtool_link_ksettings *cmd)
{
 u32 ptys_proto = 0;
 int i;

 for (i = 0; i < MLXSW_SP1_PORT_LINK_MODE_LEN; i++) {
  if (test_bit(mlxsw_sp1_port_link_mode[i].mask_ethtool,
        cmd->link_modes.advertising))
   ptys_proto |= mlxsw_sp1_port_link_mode[i].mask;
 }
 return ptys_proto;
}
