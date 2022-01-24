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
struct TYPE_10__ {int /*<<< orphan*/  parent; } ;
struct net_device {TYPE_5__ dev; } ;
struct ethtool_pauseparam {scalar_t__ autoneg; scalar_t__ tx_pause; scalar_t__ rx_pause; } ;
struct TYPE_8__ {int (* setup_link ) (struct e1000_hw*) ;} ;
struct TYPE_9__ {TYPE_3__ ops; } ;
struct TYPE_7__ {scalar_t__ media_type; } ;
struct TYPE_6__ {int /*<<< orphan*/  requested_mode; int /*<<< orphan*/  current_mode; } ;
struct e1000_hw {TYPE_4__ mac; TYPE_2__ phy; TYPE_1__ fc; } ;
struct e1000_adapter {scalar_t__ fc_autoneg; int /*<<< orphan*/  state; int /*<<< orphan*/  netdev; struct e1000_hw hw; } ;

/* Variables and functions */
 scalar_t__ AUTONEG_ENABLE ; 
 int /*<<< orphan*/  __E1000_RESETTING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  e1000_fc_default ; 
 int /*<<< orphan*/  e1000_fc_full ; 
 int /*<<< orphan*/  e1000_fc_none ; 
 int /*<<< orphan*/  e1000_fc_rx_pause ; 
 int /*<<< orphan*/  e1000_fc_tx_pause ; 
 scalar_t__ e1000_media_type_fiber ; 
 int /*<<< orphan*/  FUNC1 (struct e1000_adapter*,int) ; 
 int FUNC2 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct e1000_adapter*) ; 
 struct e1000_adapter* FUNC6 (struct net_device*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (struct e1000_hw*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int,int) ; 

__attribute__((used)) static int FUNC13(struct net_device *netdev,
				struct ethtool_pauseparam *pause)
{
	struct e1000_adapter *adapter = FUNC6(netdev);
	struct e1000_hw *hw = &adapter->hw;
	int retval = 0;

	adapter->fc_autoneg = pause->autoneg;

	while (FUNC11(__E1000_RESETTING, &adapter->state))
		FUNC12(1000, 2000);

	FUNC8(netdev->dev.parent);

	if (adapter->fc_autoneg == AUTONEG_ENABLE) {
		hw->fc.requested_mode = e1000_fc_default;
		if (FUNC7(adapter->netdev)) {
			FUNC1(adapter, true);
			FUNC5(adapter);
		} else {
			FUNC3(adapter);
		}
	} else {
		if (pause->rx_pause && pause->tx_pause)
			hw->fc.requested_mode = e1000_fc_full;
		else if (pause->rx_pause && !pause->tx_pause)
			hw->fc.requested_mode = e1000_fc_rx_pause;
		else if (!pause->rx_pause && pause->tx_pause)
			hw->fc.requested_mode = e1000_fc_tx_pause;
		else if (!pause->rx_pause && !pause->tx_pause)
			hw->fc.requested_mode = e1000_fc_none;

		hw->fc.current_mode = hw->fc.requested_mode;

		if (hw->phy.media_type == e1000_media_type_fiber) {
			retval = hw->mac.ops.setup_link(hw);
			/* implicit goto out */
		} else {
			retval = FUNC2(hw);
			if (retval)
				goto out;
			FUNC4(hw);
		}
	}

out:
	FUNC9(netdev->dev.parent);
	FUNC0(__E1000_RESETTING, &adapter->state);
	return retval;
}