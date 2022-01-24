#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  advertising; int /*<<< orphan*/  supported; } ;
struct TYPE_3__ {scalar_t__ port; int /*<<< orphan*/  phy_address; int /*<<< orphan*/  duplex; int /*<<< orphan*/  speed; int /*<<< orphan*/  eth_tp_mdix; int /*<<< orphan*/  autoneg; } ;
struct ethtool_link_ksettings {TYPE_2__ link_modes; TYPE_1__ base; } ;
struct bnx2 {int phy_flags; scalar_t__ phy_port; int advertising; int autoneg; int /*<<< orphan*/  phy_addr; int /*<<< orphan*/  phy_lock; int /*<<< orphan*/  duplex; int /*<<< orphan*/  line_speed; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUTONEG_DISABLE ; 
 int /*<<< orphan*/  AUTONEG_ENABLE ; 
 int AUTONEG_SPEED ; 
 int BNX2_PHY_FLAG_2_5G_CAPABLE ; 
 int BNX2_PHY_FLAG_MDIX ; 
 int BNX2_PHY_FLAG_REMOTE_PHY_CAP ; 
 int BNX2_PHY_FLAG_SERDES ; 
 int /*<<< orphan*/  DUPLEX_UNKNOWN ; 
 int /*<<< orphan*/  ETH_TP_MDI ; 
 int /*<<< orphan*/  ETH_TP_MDI_X ; 
 scalar_t__ PORT_FIBRE ; 
 int /*<<< orphan*/  SPEED_UNKNOWN ; 
 int SUPPORTED_1000baseT_Full ; 
 int SUPPORTED_100baseT_Full ; 
 int SUPPORTED_100baseT_Half ; 
 int SUPPORTED_10baseT_Full ; 
 int SUPPORTED_10baseT_Half ; 
 int SUPPORTED_2500baseX_Full ; 
 int SUPPORTED_Autoneg ; 
 int SUPPORTED_FIBRE ; 
 int SUPPORTED_TP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 struct bnx2* FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(struct net_device *dev,
			struct ethtool_link_ksettings *cmd)
{
	struct bnx2 *bp = FUNC1(dev);
	int support_serdes = 0, support_copper = 0;
	u32 supported, advertising;

	supported = SUPPORTED_Autoneg;
	if (bp->phy_flags & BNX2_PHY_FLAG_REMOTE_PHY_CAP) {
		support_serdes = 1;
		support_copper = 1;
	} else if (bp->phy_port == PORT_FIBRE)
		support_serdes = 1;
	else
		support_copper = 1;

	if (support_serdes) {
		supported |= SUPPORTED_1000baseT_Full |
			SUPPORTED_FIBRE;
		if (bp->phy_flags & BNX2_PHY_FLAG_2_5G_CAPABLE)
			supported |= SUPPORTED_2500baseX_Full;
	}
	if (support_copper) {
		supported |= SUPPORTED_10baseT_Half |
			SUPPORTED_10baseT_Full |
			SUPPORTED_100baseT_Half |
			SUPPORTED_100baseT_Full |
			SUPPORTED_1000baseT_Full |
			SUPPORTED_TP;
	}

	FUNC3(&bp->phy_lock);
	cmd->base.port = bp->phy_port;
	advertising = bp->advertising;

	if (bp->autoneg & AUTONEG_SPEED) {
		cmd->base.autoneg = AUTONEG_ENABLE;
	} else {
		cmd->base.autoneg = AUTONEG_DISABLE;
	}

	if (FUNC2(dev)) {
		cmd->base.speed = bp->line_speed;
		cmd->base.duplex = bp->duplex;
		if (!(bp->phy_flags & BNX2_PHY_FLAG_SERDES)) {
			if (bp->phy_flags & BNX2_PHY_FLAG_MDIX)
				cmd->base.eth_tp_mdix = ETH_TP_MDI_X;
			else
				cmd->base.eth_tp_mdix = ETH_TP_MDI;
		}
	}
	else {
		cmd->base.speed = SPEED_UNKNOWN;
		cmd->base.duplex = DUPLEX_UNKNOWN;
	}
	FUNC4(&bp->phy_lock);

	cmd->base.phy_address = bp->phy_addr;

	FUNC0(cmd->link_modes.supported,
						supported);
	FUNC0(cmd->link_modes.advertising,
						advertising);

	return 0;
}