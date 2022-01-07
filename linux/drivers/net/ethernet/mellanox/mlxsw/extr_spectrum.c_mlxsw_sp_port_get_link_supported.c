
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct mlxsw_sp_port_type_speed_ops {int (* from_ptys_link ) (struct mlxsw_sp*,int ,int ,int ) ;int (* from_ptys_supported_port ) (struct mlxsw_sp*,int ,struct ethtool_link_ksettings*) ;} ;
struct mlxsw_sp {struct mlxsw_sp_port_type_speed_ops* port_type_speed_ops; } ;
struct TYPE_2__ {int supported; } ;
struct ethtool_link_ksettings {TYPE_1__ link_modes; } ;


 int Asym_Pause ;
 int Autoneg ;
 int Pause ;
 int ethtool_link_ksettings_add_link_mode (struct ethtool_link_ksettings*,int ,int ) ;
 int stub1 (struct mlxsw_sp*,int ,struct ethtool_link_ksettings*) ;
 int stub2 (struct mlxsw_sp*,int ,int ,int ) ;
 int supported ;

__attribute__((used)) static void
mlxsw_sp_port_get_link_supported(struct mlxsw_sp *mlxsw_sp, u32 eth_proto_cap,
     u8 width, struct ethtool_link_ksettings *cmd)
{
 const struct mlxsw_sp_port_type_speed_ops *ops;

 ops = mlxsw_sp->port_type_speed_ops;

 ethtool_link_ksettings_add_link_mode(cmd, supported, Asym_Pause);
 ethtool_link_ksettings_add_link_mode(cmd, supported, Autoneg);
 ethtool_link_ksettings_add_link_mode(cmd, supported, Pause);

 ops->from_ptys_supported_port(mlxsw_sp, eth_proto_cap, cmd);
 ops->from_ptys_link(mlxsw_sp, eth_proto_cap, width,
       cmd->link_modes.supported);
}
