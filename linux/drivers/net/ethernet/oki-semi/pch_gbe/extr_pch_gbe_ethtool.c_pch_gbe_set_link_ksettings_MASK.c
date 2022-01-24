#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_7__ {int /*<<< orphan*/  autoneg; int /*<<< orphan*/  link_duplex; scalar_t__ link_speed; } ;
struct TYPE_6__ {scalar_t__ autoneg_advertised; } ;
struct pch_gbe_hw {TYPE_3__ mac; TYPE_2__ phy; } ;
struct pch_gbe_adapter {int /*<<< orphan*/  netdev; int /*<<< orphan*/  mii; struct pch_gbe_hw hw; } ;
struct net_device {int dummy; } ;
struct TYPE_8__ {scalar_t__ speed; int /*<<< orphan*/  autoneg; int /*<<< orphan*/  duplex; } ;
struct TYPE_5__ {int /*<<< orphan*/  advertising; } ;
struct ethtool_link_ksettings {TYPE_4__ base; TYPE_1__ link_modes; } ;

/* Variables and functions */
 int /*<<< orphan*/  BMCR_RESET ; 
 int /*<<< orphan*/  DUPLEX_FULL ; 
 int /*<<< orphan*/  MII_BMCR ; 
 scalar_t__ SPEED_1000 ; 
 scalar_t__ UINT_MAX ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ethtool_link_ksettings*,struct ethtool_link_ksettings const*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct ethtool_link_ksettings*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*) ; 
 struct pch_gbe_adapter* FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pch_gbe_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct pch_gbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct pch_gbe_adapter*) ; 
 int FUNC9 (struct pch_gbe_adapter*) ; 

__attribute__((used)) static int FUNC10(struct net_device *netdev,
				      const struct ethtool_link_ksettings *ecmd)
{
	struct pch_gbe_adapter *adapter = FUNC4(netdev);
	struct pch_gbe_hw *hw = &adapter->hw;
	struct ethtool_link_ksettings copy_ecmd;
	u32 speed = ecmd->base.speed;
	u32 advertising;
	int ret;

	FUNC7(hw, MII_BMCR, BMCR_RESET);

	FUNC1(&copy_ecmd, ecmd, sizeof(*ecmd));

	/* when set_settings() is called with a ethtool_cmd previously
	 * filled by get_settings() on a down link, speed is -1: */
	if (speed == UINT_MAX) {
		speed = SPEED_1000;
		copy_ecmd.base.speed = speed;
		copy_ecmd.base.duplex = DUPLEX_FULL;
	}
	ret = FUNC2(&adapter->mii, &copy_ecmd);
	if (ret) {
		FUNC3(netdev, "Error: mii_ethtool_set_link_ksettings\n");
		return ret;
	}
	hw->mac.link_speed = speed;
	hw->mac.link_duplex = copy_ecmd.base.duplex;
	FUNC0(
		&advertising, copy_ecmd.link_modes.advertising);
	hw->phy.autoneg_advertised = advertising;
	hw->mac.autoneg = copy_ecmd.base.autoneg;

	/* reset the link */
	if (FUNC5(adapter->netdev)) {
		FUNC6(adapter);
		ret = FUNC9(adapter);
	} else {
		FUNC8(adapter);
	}
	return ret;
}