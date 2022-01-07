
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct mlx4_ptys_reg {int eth_proto_lp_adv; int eth_proto_admin; int eth_proto_cap; int eth_proto_oper; int proto_mask; int local_port; } ;
struct TYPE_9__ {int flags; } ;
struct mlx4_en_priv {TYPE_4__ port_state; TYPE_2__* prof; TYPE_1__* mdev; int port; } ;
struct TYPE_10__ {int eth_tp_mdix_ctrl; int eth_tp_mdix; scalar_t__ mdio_support; scalar_t__ phy_address; int autoneg; int port; } ;
struct TYPE_8__ {int lp_advertising; int advertising; int supported; } ;
struct ethtool_link_ksettings {TYPE_5__ base; TYPE_3__ link_modes; } ;
typedef int ptys_reg ;
struct TYPE_7__ {int tx_pause; int rx_pause; } ;
struct TYPE_6__ {int dev; } ;


 int ADVERTISED ;
 int AUTONEG_DISABLE ;
 int AUTONEG_ENABLE ;
 int Asym_Pause ;
 int Autoneg ;
 int DRV ;
 int ETH_TP_MDI_AUTO ;
 int ETH_TP_MDI_INVALID ;
 int MLX4_ACCESS_REG_QUERY ;
 int MLX4_EN_PORT_ANC ;
 int MLX4_PTYS_EN ;
 int Pause ;
 int SUPPORTED ;
 int advertising ;
 int be32_to_cpu (int ) ;
 int en_dbg (int ,struct mlx4_en_priv*,char*,int ) ;
 int en_warn (struct mlx4_en_priv*,char*,int) ;
 int ethtool_link_ksettings_add_link_mode (struct ethtool_link_ksettings*,int ,int ) ;
 int ethtool_link_ksettings_zero_link_mode (struct ethtool_link_ksettings*,int ) ;
 int lp_advertising ;
 int memset (struct mlx4_ptys_reg*,int ,int) ;
 int mlx4_ACCESS_PTYS_REG (int ,int ,struct mlx4_ptys_reg*) ;
 scalar_t__ mlx4_en_autoneg_get (struct net_device*) ;
 struct mlx4_en_priv* netdev_priv (struct net_device*) ;
 int ptys2ethtool_update_link_modes (int ,int ,int ) ;
 int ptys2ethtool_update_supported_port (int ,struct mlx4_ptys_reg*) ;
 int ptys_get_active_port (struct mlx4_ptys_reg*) ;
 int supported ;

__attribute__((used)) static int
ethtool_get_ptys_link_ksettings(struct net_device *dev,
    struct ethtool_link_ksettings *link_ksettings)
{
 struct mlx4_en_priv *priv = netdev_priv(dev);
 struct mlx4_ptys_reg ptys_reg;
 u32 eth_proto;
 int ret;

 memset(&ptys_reg, 0, sizeof(ptys_reg));
 ptys_reg.local_port = priv->port;
 ptys_reg.proto_mask = MLX4_PTYS_EN;
 ret = mlx4_ACCESS_PTYS_REG(priv->mdev->dev,
       MLX4_ACCESS_REG_QUERY, &ptys_reg);
 if (ret) {
  en_warn(priv, "Failed to run mlx4_ACCESS_PTYS_REG status(%x)",
   ret);
  return ret;
 }
 en_dbg(DRV, priv, "ptys_reg.proto_mask       %x\n",
        ptys_reg.proto_mask);
 en_dbg(DRV, priv, "ptys_reg.eth_proto_cap    %x\n",
        be32_to_cpu(ptys_reg.eth_proto_cap));
 en_dbg(DRV, priv, "ptys_reg.eth_proto_admin  %x\n",
        be32_to_cpu(ptys_reg.eth_proto_admin));
 en_dbg(DRV, priv, "ptys_reg.eth_proto_oper   %x\n",
        be32_to_cpu(ptys_reg.eth_proto_oper));
 en_dbg(DRV, priv, "ptys_reg.eth_proto_lp_adv %x\n",
        be32_to_cpu(ptys_reg.eth_proto_lp_adv));


 ethtool_link_ksettings_zero_link_mode(link_ksettings, supported);
 ethtool_link_ksettings_zero_link_mode(link_ksettings, advertising);

 ptys2ethtool_update_supported_port(link_ksettings->link_modes.supported,
        &ptys_reg);

 eth_proto = be32_to_cpu(ptys_reg.eth_proto_cap);
 ptys2ethtool_update_link_modes(link_ksettings->link_modes.supported,
           eth_proto, SUPPORTED);

 eth_proto = be32_to_cpu(ptys_reg.eth_proto_admin);
 ptys2ethtool_update_link_modes(link_ksettings->link_modes.advertising,
           eth_proto, ADVERTISED);

 ethtool_link_ksettings_add_link_mode(link_ksettings, supported,
          Pause);
 ethtool_link_ksettings_add_link_mode(link_ksettings, supported,
          Asym_Pause);

 if (priv->prof->tx_pause)
  ethtool_link_ksettings_add_link_mode(link_ksettings,
           advertising, Pause);
 if (priv->prof->tx_pause ^ priv->prof->rx_pause)
  ethtool_link_ksettings_add_link_mode(link_ksettings,
           advertising, Asym_Pause);

 link_ksettings->base.port = ptys_get_active_port(&ptys_reg);

 if (mlx4_en_autoneg_get(dev)) {
  ethtool_link_ksettings_add_link_mode(link_ksettings,
           supported, Autoneg);
  ethtool_link_ksettings_add_link_mode(link_ksettings,
           advertising, Autoneg);
 }

 link_ksettings->base.autoneg
  = (priv->port_state.flags & MLX4_EN_PORT_ANC) ?
  AUTONEG_ENABLE : AUTONEG_DISABLE;

 eth_proto = be32_to_cpu(ptys_reg.eth_proto_lp_adv);

 ethtool_link_ksettings_zero_link_mode(link_ksettings, lp_advertising);
 ptys2ethtool_update_link_modes(
  link_ksettings->link_modes.lp_advertising,
  eth_proto, ADVERTISED);
 if (priv->port_state.flags & MLX4_EN_PORT_ANC)
  ethtool_link_ksettings_add_link_mode(link_ksettings,
           lp_advertising, Autoneg);

 link_ksettings->base.phy_address = 0;
 link_ksettings->base.mdio_support = 0;
 link_ksettings->base.eth_tp_mdix = ETH_TP_MDI_INVALID;
 link_ksettings->base.eth_tp_mdix_ctrl = ETH_TP_MDI_AUTO;

 return ret;
}
