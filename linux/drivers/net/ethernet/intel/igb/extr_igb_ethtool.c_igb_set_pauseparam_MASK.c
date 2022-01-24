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
struct net_device {int dummy; } ;
struct TYPE_10__ {scalar_t__ media_type; } ;
struct TYPE_9__ {int /*<<< orphan*/  requested_mode; int /*<<< orphan*/  current_mode; } ;
struct TYPE_6__ {scalar_t__ e100_base_fx; } ;
struct TYPE_7__ {TYPE_1__ eth_flags; } ;
struct TYPE_8__ {TYPE_2__ _82575; } ;
struct e1000_hw {TYPE_5__ phy; TYPE_4__ fc; TYPE_3__ dev_spec; } ;
struct igb_adapter {scalar_t__ fc_autoneg; int /*<<< orphan*/  state; int /*<<< orphan*/  netdev; struct e1000_hw hw; } ;
struct ethtool_pauseparam {scalar_t__ autoneg; scalar_t__ tx_pause; scalar_t__ rx_pause; } ;

/* Variables and functions */
 scalar_t__ AUTONEG_ENABLE ; 
 int EINVAL ; 
 int /*<<< orphan*/  __IGB_RESETTING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  e1000_fc_default ; 
 int /*<<< orphan*/  e1000_fc_full ; 
 int /*<<< orphan*/  e1000_fc_none ; 
 int /*<<< orphan*/  e1000_fc_rx_pause ; 
 int /*<<< orphan*/  e1000_fc_tx_pause ; 
 scalar_t__ e1000_media_type_copper ; 
 int /*<<< orphan*/  FUNC1 (struct igb_adapter*) ; 
 int FUNC2 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct igb_adapter*) ; 
 int FUNC4 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct igb_adapter*) ; 
 struct igb_adapter* FUNC6 (struct net_device*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 

__attribute__((used)) static int FUNC10(struct net_device *netdev,
			      struct ethtool_pauseparam *pause)
{
	struct igb_adapter *adapter = FUNC6(netdev);
	struct e1000_hw *hw = &adapter->hw;
	int retval = 0;

	/* 100basefx does not support setting link flow control */
	if (hw->dev_spec._82575.eth_flags.e100_base_fx)
		return -EINVAL;

	adapter->fc_autoneg = pause->autoneg;

	while (FUNC8(__IGB_RESETTING, &adapter->state))
		FUNC9(1000, 2000);

	if (adapter->fc_autoneg == AUTONEG_ENABLE) {
		hw->fc.requested_mode = e1000_fc_default;
		if (FUNC7(adapter->netdev)) {
			FUNC1(adapter);
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

		retval = ((hw->phy.media_type == e1000_media_type_copper) ?
			  FUNC2(hw) : FUNC4(hw));
	}

	FUNC0(__IGB_RESETTING, &adapter->state);
	return retval;
}