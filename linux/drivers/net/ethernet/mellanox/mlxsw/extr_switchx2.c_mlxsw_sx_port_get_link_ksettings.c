
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct mlxsw_sx_port {int local_port; struct mlxsw_sx* mlxsw_sx; } ;
struct mlxsw_sx {int core; } ;
struct TYPE_4__ {int lp_advertising; int advertising; int supported; } ;
struct TYPE_3__ {int port; } ;
struct ethtool_link_ksettings {TYPE_2__ link_modes; TYPE_1__ base; } ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_PTYS_LEN ;
 int SUPPORTED_Asym_Pause ;
 int SUPPORTED_Pause ;
 int ethtool_convert_legacy_u32_to_link_mode (int ,int) ;
 int mlxsw_reg_ptys_eth_pack (char*,int ,int ,int) ;
 int mlxsw_reg_ptys_eth_unpack (char*,int*,int*,int*) ;
 int mlxsw_reg_query (int ,int ,char*) ;
 int mlxsw_sx_from_ptys_advert_link (int) ;
 int mlxsw_sx_from_ptys_speed_duplex (int ,int,struct ethtool_link_ksettings*) ;
 int mlxsw_sx_from_ptys_supported_link (int) ;
 int mlxsw_sx_from_ptys_supported_port (int) ;
 int mlxsw_sx_port_connector_port (int) ;
 int netdev_err (struct net_device*,char*) ;
 struct mlxsw_sx_port* netdev_priv (struct net_device*) ;
 int netif_carrier_ok (struct net_device*) ;
 int ptys ;

__attribute__((used)) static int
mlxsw_sx_port_get_link_ksettings(struct net_device *dev,
     struct ethtool_link_ksettings *cmd)
{
 struct mlxsw_sx_port *mlxsw_sx_port = netdev_priv(dev);
 struct mlxsw_sx *mlxsw_sx = mlxsw_sx_port->mlxsw_sx;
 char ptys_pl[MLXSW_REG_PTYS_LEN];
 u32 eth_proto_cap;
 u32 eth_proto_admin;
 u32 eth_proto_oper;
 u32 supported, advertising, lp_advertising;
 int err;

 mlxsw_reg_ptys_eth_pack(ptys_pl, mlxsw_sx_port->local_port, 0, 0);
 err = mlxsw_reg_query(mlxsw_sx->core, MLXSW_REG(ptys), ptys_pl);
 if (err) {
  netdev_err(dev, "Failed to get proto");
  return err;
 }
 mlxsw_reg_ptys_eth_unpack(ptys_pl, &eth_proto_cap,
      &eth_proto_admin, &eth_proto_oper);

 supported = mlxsw_sx_from_ptys_supported_port(eth_proto_cap) |
    mlxsw_sx_from_ptys_supported_link(eth_proto_cap) |
    SUPPORTED_Pause | SUPPORTED_Asym_Pause;
 advertising = mlxsw_sx_from_ptys_advert_link(eth_proto_admin);
 mlxsw_sx_from_ptys_speed_duplex(netif_carrier_ok(dev),
     eth_proto_oper, cmd);

 eth_proto_oper = eth_proto_oper ? eth_proto_oper : eth_proto_cap;
 cmd->base.port = mlxsw_sx_port_connector_port(eth_proto_oper);
 lp_advertising = mlxsw_sx_from_ptys_advert_link(eth_proto_oper);

 ethtool_convert_legacy_u32_to_link_mode(cmd->link_modes.supported,
      supported);
 ethtool_convert_legacy_u32_to_link_mode(cmd->link_modes.advertising,
      advertising);
 ethtool_convert_legacy_u32_to_link_mode(cmd->link_modes.lp_advertising,
      lp_advertising);

 return 0;
}
