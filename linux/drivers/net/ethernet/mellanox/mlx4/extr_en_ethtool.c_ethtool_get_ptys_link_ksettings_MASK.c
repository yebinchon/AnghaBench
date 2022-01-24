#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int dummy; } ;
struct mlx4_ptys_reg {int /*<<< orphan*/  eth_proto_lp_adv; int /*<<< orphan*/  eth_proto_admin; int /*<<< orphan*/  eth_proto_cap; int /*<<< orphan*/  eth_proto_oper; int /*<<< orphan*/  proto_mask; int /*<<< orphan*/  local_port; } ;
struct TYPE_9__ {int flags; } ;
struct mlx4_en_priv {TYPE_4__ port_state; TYPE_2__* prof; TYPE_1__* mdev; int /*<<< orphan*/  port; } ;
struct TYPE_10__ {int /*<<< orphan*/  eth_tp_mdix_ctrl; int /*<<< orphan*/  eth_tp_mdix; scalar_t__ mdio_support; scalar_t__ phy_address; int /*<<< orphan*/  autoneg; int /*<<< orphan*/  port; } ;
struct TYPE_8__ {int /*<<< orphan*/  lp_advertising; int /*<<< orphan*/  advertising; int /*<<< orphan*/  supported; } ;
struct ethtool_link_ksettings {TYPE_5__ base; TYPE_3__ link_modes; } ;
typedef  int /*<<< orphan*/  ptys_reg ;
struct TYPE_7__ {int tx_pause; int rx_pause; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADVERTISED ; 
 int /*<<< orphan*/  AUTONEG_DISABLE ; 
 int /*<<< orphan*/  AUTONEG_ENABLE ; 
 int /*<<< orphan*/  Asym_Pause ; 
 int /*<<< orphan*/  Autoneg ; 
 int /*<<< orphan*/  DRV ; 
 int /*<<< orphan*/  ETH_TP_MDI_AUTO ; 
 int /*<<< orphan*/  ETH_TP_MDI_INVALID ; 
 int /*<<< orphan*/  MLX4_ACCESS_REG_QUERY ; 
 int MLX4_EN_PORT_ANC ; 
 int /*<<< orphan*/  MLX4_PTYS_EN ; 
 int /*<<< orphan*/  Pause ; 
 int /*<<< orphan*/  SUPPORTED ; 
 int /*<<< orphan*/  advertising ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct mlx4_en_priv*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx4_en_priv*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ethtool_link_ksettings*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ethtool_link_ksettings*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lp_advertising ; 
 int /*<<< orphan*/  FUNC5 (struct mlx4_ptys_reg*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mlx4_ptys_reg*) ; 
 scalar_t__ FUNC7 (struct net_device*) ; 
 struct mlx4_en_priv* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct mlx4_ptys_reg*) ; 
 int /*<<< orphan*/  FUNC11 (struct mlx4_ptys_reg*) ; 
 int /*<<< orphan*/  supported ; 

__attribute__((used)) static int
FUNC12(struct net_device *dev,
				struct ethtool_link_ksettings *link_ksettings)
{
	struct mlx4_en_priv *priv = FUNC8(dev);
	struct mlx4_ptys_reg ptys_reg;
	u32 eth_proto;
	int ret;

	FUNC5(&ptys_reg, 0, sizeof(ptys_reg));
	ptys_reg.local_port = priv->port;
	ptys_reg.proto_mask = MLX4_PTYS_EN;
	ret = FUNC6(priv->mdev->dev,
				   MLX4_ACCESS_REG_QUERY, &ptys_reg);
	if (ret) {
		FUNC2(priv, "Failed to run mlx4_ACCESS_PTYS_REG status(%x)",
			ret);
		return ret;
	}
	FUNC1(DRV, priv, "ptys_reg.proto_mask       %x\n",
	       ptys_reg.proto_mask);
	FUNC1(DRV, priv, "ptys_reg.eth_proto_cap    %x\n",
	       FUNC0(ptys_reg.eth_proto_cap));
	FUNC1(DRV, priv, "ptys_reg.eth_proto_admin  %x\n",
	       FUNC0(ptys_reg.eth_proto_admin));
	FUNC1(DRV, priv, "ptys_reg.eth_proto_oper   %x\n",
	       FUNC0(ptys_reg.eth_proto_oper));
	FUNC1(DRV, priv, "ptys_reg.eth_proto_lp_adv %x\n",
	       FUNC0(ptys_reg.eth_proto_lp_adv));

	/* reset supported/advertising masks */
	FUNC4(link_ksettings, supported);
	FUNC4(link_ksettings, advertising);

	FUNC10(link_ksettings->link_modes.supported,
					   &ptys_reg);

	eth_proto = FUNC0(ptys_reg.eth_proto_cap);
	FUNC9(link_ksettings->link_modes.supported,
				       eth_proto, SUPPORTED);

	eth_proto = FUNC0(ptys_reg.eth_proto_admin);
	FUNC9(link_ksettings->link_modes.advertising,
				       eth_proto, ADVERTISED);

	FUNC3(link_ksettings, supported,
					     Pause);
	FUNC3(link_ksettings, supported,
					     Asym_Pause);

	if (priv->prof->tx_pause)
		FUNC3(link_ksettings,
						     advertising, Pause);
	if (priv->prof->tx_pause ^ priv->prof->rx_pause)
		FUNC3(link_ksettings,
						     advertising, Asym_Pause);

	link_ksettings->base.port = FUNC11(&ptys_reg);

	if (FUNC7(dev)) {
		FUNC3(link_ksettings,
						     supported, Autoneg);
		FUNC3(link_ksettings,
						     advertising, Autoneg);
	}

	link_ksettings->base.autoneg
		= (priv->port_state.flags & MLX4_EN_PORT_ANC) ?
		AUTONEG_ENABLE : AUTONEG_DISABLE;

	eth_proto = FUNC0(ptys_reg.eth_proto_lp_adv);

	FUNC4(link_ksettings, lp_advertising);
	FUNC9(
		link_ksettings->link_modes.lp_advertising,
		eth_proto, ADVERTISED);
	if (priv->port_state.flags & MLX4_EN_PORT_ANC)
		FUNC3(link_ksettings,
						     lp_advertising, Autoneg);

	link_ksettings->base.phy_address = 0;
	link_ksettings->base.mdio_support = 0;
	link_ksettings->base.eth_tp_mdix = ETH_TP_MDI_INVALID;
	link_ksettings->base.eth_tp_mdix_ctrl = ETH_TP_MDI_AUTO;

	return ret;
}