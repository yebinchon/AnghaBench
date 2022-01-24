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
struct net_device {int dummy; } ;
struct TYPE_4__ {scalar_t__ media_type; } ;
struct TYPE_3__ {int /*<<< orphan*/  requested_mode; int /*<<< orphan*/  current_mode; } ;
struct igc_hw {TYPE_2__ phy; TYPE_1__ fc; } ;
struct igc_adapter {scalar_t__ fc_autoneg; int /*<<< orphan*/  state; int /*<<< orphan*/  netdev; struct igc_hw hw; } ;
struct ethtool_pauseparam {scalar_t__ autoneg; scalar_t__ tx_pause; scalar_t__ rx_pause; } ;

/* Variables and functions */
 scalar_t__ AUTONEG_ENABLE ; 
 int /*<<< orphan*/  __IGC_RESETTING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct igc_adapter*) ; 
 int /*<<< orphan*/  igc_fc_default ; 
 int /*<<< orphan*/  igc_fc_full ; 
 int /*<<< orphan*/  igc_fc_none ; 
 int /*<<< orphan*/  igc_fc_rx_pause ; 
 int /*<<< orphan*/  igc_fc_tx_pause ; 
 int FUNC2 (struct igc_hw*) ; 
 scalar_t__ igc_media_type_copper ; 
 int /*<<< orphan*/  FUNC3 (struct igc_adapter*) ; 
 int FUNC4 (struct igc_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct igc_adapter*) ; 
 struct igc_adapter* FUNC6 (struct net_device*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 

__attribute__((used)) static int FUNC10(struct net_device *netdev,
			      struct ethtool_pauseparam *pause)
{
	struct igc_adapter *adapter = FUNC6(netdev);
	struct igc_hw *hw = &adapter->hw;
	int retval = 0;

	adapter->fc_autoneg = pause->autoneg;

	while (FUNC8(__IGC_RESETTING, &adapter->state))
		FUNC9(1000, 2000);

	if (adapter->fc_autoneg == AUTONEG_ENABLE) {
		hw->fc.requested_mode = igc_fc_default;
		if (FUNC7(adapter->netdev)) {
			FUNC1(adapter);
			FUNC5(adapter);
		} else {
			FUNC3(adapter);
		}
	} else {
		if (pause->rx_pause && pause->tx_pause)
			hw->fc.requested_mode = igc_fc_full;
		else if (pause->rx_pause && !pause->tx_pause)
			hw->fc.requested_mode = igc_fc_rx_pause;
		else if (!pause->rx_pause && pause->tx_pause)
			hw->fc.requested_mode = igc_fc_tx_pause;
		else if (!pause->rx_pause && !pause->tx_pause)
			hw->fc.requested_mode = igc_fc_none;

		hw->fc.current_mode = hw->fc.requested_mode;

		retval = ((hw->phy.media_type == igc_media_type_copper) ?
			  FUNC2(hw) : FUNC4(hw));
	}

	FUNC0(__IGC_RESETTING, &adapter->state);
	return retval;
}