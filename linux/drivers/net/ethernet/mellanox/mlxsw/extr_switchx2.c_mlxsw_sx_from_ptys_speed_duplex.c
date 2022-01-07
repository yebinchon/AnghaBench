
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_3__ {int speed; int duplex; } ;
struct ethtool_link_ksettings {TYPE_1__ base; } ;
struct TYPE_4__ {int mask; int speed; } ;


 int DUPLEX_FULL ;
 int DUPLEX_UNKNOWN ;
 int MLXSW_SX_PORT_LINK_MODE_LEN ;
 int SPEED_UNKNOWN ;
 TYPE_2__* mlxsw_sx_port_link_mode ;

__attribute__((used)) static void mlxsw_sx_from_ptys_speed_duplex(bool carrier_ok, u32 ptys_eth_proto,
         struct ethtool_link_ksettings *cmd)
{
 u32 speed = SPEED_UNKNOWN;
 u8 duplex = DUPLEX_UNKNOWN;
 int i;

 if (!carrier_ok)
  goto out;

 for (i = 0; i < MLXSW_SX_PORT_LINK_MODE_LEN; i++) {
  if (ptys_eth_proto & mlxsw_sx_port_link_mode[i].mask) {
   speed = mlxsw_sx_port_link_mode[i].speed;
   duplex = DUPLEX_FULL;
   break;
  }
 }
out:
 cmd->base.speed = speed;
 cmd->base.duplex = duplex;
}
