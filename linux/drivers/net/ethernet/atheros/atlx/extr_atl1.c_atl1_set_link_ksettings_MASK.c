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
typedef  scalar_t__ u32 ;
typedef  int u16 ;
struct net_device {int dummy; } ;
struct TYPE_3__ {scalar_t__ autoneg; scalar_t__ speed; scalar_t__ duplex; } ;
struct ethtool_link_ksettings {TYPE_1__ base; } ;
struct atl1_hw {int media_type; } ;
struct atl1_adapter {TYPE_2__* pdev; int /*<<< orphan*/  netdev; struct atl1_hw hw; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ AUTONEG_ENABLE ; 
 scalar_t__ DUPLEX_FULL ; 
 int EINVAL ; 
 int MEDIA_TYPE_1000M_FULL ; 
#define  MEDIA_TYPE_100M_FULL 130 
#define  MEDIA_TYPE_100M_HALF 129 
#define  MEDIA_TYPE_10M_FULL 128 
 int MEDIA_TYPE_10M_HALF ; 
 int MEDIA_TYPE_AUTO_SENSOR ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int MII_CR_AUTO_NEG_EN ; 
 int MII_CR_FULL_DUPLEX ; 
 int MII_CR_RESET ; 
 int MII_CR_SPEED_10 ; 
 int MII_CR_SPEED_100 ; 
 scalar_t__ SPEED_100 ; 
 scalar_t__ SPEED_1000 ; 
 int /*<<< orphan*/  FUNC0 (struct atl1_adapter*) ; 
 scalar_t__ FUNC1 (struct atl1_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct atl1_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct atl1_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct atl1_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 struct atl1_adapter* FUNC7 (struct net_device*) ; 
 scalar_t__ FUNC8 (struct atl1_adapter*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct net_device *netdev,
				   const struct ethtool_link_ksettings *cmd)
{
	struct atl1_adapter *adapter = FUNC7(netdev);
	struct atl1_hw *hw = &adapter->hw;
	u16 phy_data;
	int ret_val = 0;
	u16 old_media_type = hw->media_type;

	if (FUNC9(adapter->netdev)) {
		if (FUNC8(adapter))
			FUNC5(&adapter->pdev->dev,
				"ethtool shutting down adapter\n");
		FUNC0(adapter);
	}

	if (cmd->base.autoneg == AUTONEG_ENABLE)
		hw->media_type = MEDIA_TYPE_AUTO_SENSOR;
	else {
		u32 speed = cmd->base.speed;
		if (speed == SPEED_1000) {
			if (cmd->base.duplex != DUPLEX_FULL) {
				if (FUNC8(adapter))
					FUNC6(&adapter->pdev->dev,
						"1000M half is invalid\n");
				ret_val = -EINVAL;
				goto exit_sset;
			}
			hw->media_type = MEDIA_TYPE_1000M_FULL;
		} else if (speed == SPEED_100) {
			if (cmd->base.duplex == DUPLEX_FULL)
				hw->media_type = MEDIA_TYPE_100M_FULL;
			else
				hw->media_type = MEDIA_TYPE_100M_HALF;
		} else {
			if (cmd->base.duplex == DUPLEX_FULL)
				hw->media_type = MEDIA_TYPE_10M_FULL;
			else
				hw->media_type = MEDIA_TYPE_10M_HALF;
		}
	}

	if (FUNC1(hw)) {
		ret_val = -EINVAL;
		if (FUNC8(adapter))
			FUNC6(&adapter->pdev->dev,
				"invalid ethtool speed/duplex setting\n");
		goto exit_sset;
	}
	if (hw->media_type == MEDIA_TYPE_AUTO_SENSOR ||
	    hw->media_type == MEDIA_TYPE_1000M_FULL)
		phy_data = MII_CR_RESET | MII_CR_AUTO_NEG_EN;
	else {
		switch (hw->media_type) {
		case MEDIA_TYPE_100M_FULL:
			phy_data =
			    MII_CR_FULL_DUPLEX | MII_CR_SPEED_100 |
			    MII_CR_RESET;
			break;
		case MEDIA_TYPE_100M_HALF:
			phy_data = MII_CR_SPEED_100 | MII_CR_RESET;
			break;
		case MEDIA_TYPE_10M_FULL:
			phy_data =
			    MII_CR_FULL_DUPLEX | MII_CR_SPEED_10 | MII_CR_RESET;
			break;
		default:
			/* MEDIA_TYPE_10M_HALF: */
			phy_data = MII_CR_SPEED_10 | MII_CR_RESET;
			break;
		}
	}
	FUNC4(hw, MII_BMCR, phy_data);
exit_sset:
	if (ret_val)
		hw->media_type = old_media_type;

	if (FUNC9(adapter->netdev)) {
		if (FUNC8(adapter))
			FUNC5(&adapter->pdev->dev,
				"ethtool starting adapter\n");
		FUNC3(adapter);
	} else if (!ret_val) {
		if (FUNC8(adapter))
			FUNC5(&adapter->pdev->dev,
				"ethtool resetting adapter\n");
		FUNC2(adapter);
	}
	return ret_val;
}