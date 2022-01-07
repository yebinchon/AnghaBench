
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mlxsw_sp {int dummy; } ;
struct TYPE_2__ {scalar_t__ speed; int duplex; } ;
struct ethtool_link_ksettings {TYPE_1__ base; } ;


 int DUPLEX_FULL ;
 int DUPLEX_UNKNOWN ;
 scalar_t__ SPEED_UNKNOWN ;
 scalar_t__ mlxsw_sp1_from_ptys_speed (struct mlxsw_sp*,int ) ;

__attribute__((used)) static void
mlxsw_sp1_from_ptys_speed_duplex(struct mlxsw_sp *mlxsw_sp, bool carrier_ok,
     u32 ptys_eth_proto,
     struct ethtool_link_ksettings *cmd)
{
 cmd->base.speed = SPEED_UNKNOWN;
 cmd->base.duplex = DUPLEX_UNKNOWN;

 if (!carrier_ok)
  return;

 cmd->base.speed = mlxsw_sp1_from_ptys_speed(mlxsw_sp, ptys_eth_proto);
 if (cmd->base.speed != SPEED_UNKNOWN)
  cmd->base.duplex = DUPLEX_FULL;
}
