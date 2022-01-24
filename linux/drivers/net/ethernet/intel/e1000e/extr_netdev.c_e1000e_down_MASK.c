#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct net_device {scalar_t__ mtu; } ;
struct TYPE_2__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_1__ mac; } ;
struct e1000_adapter {int flags2; int /*<<< orphan*/  rx_ring; int /*<<< orphan*/  tx_ring; int /*<<< orphan*/  pdev; struct net_device* netdev; scalar_t__ link_duplex; scalar_t__ link_speed; int /*<<< orphan*/  stats64_lock; int /*<<< orphan*/  phy_info_timer; int /*<<< orphan*/  napi; int /*<<< orphan*/  state; struct e1000_hw hw; } ;

/* Variables and functions */
 int E1000_RCTL_EN ; 
 int E1000_TCTL_EN ; 
 scalar_t__ ETH_DATA_LEN ; 
 int FLAG2_NO_DISABLE_RX ; 
 int /*<<< orphan*/  RCTL ; 
 int /*<<< orphan*/  TCTL ; 
 int /*<<< orphan*/  __E1000_DOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct e1000_adapter*) ; 
 scalar_t__ FUNC5 (struct e1000_hw*,int) ; 
 scalar_t__ e1000_pch2lan ; 
 scalar_t__ e1000_pch_spt ; 
 int /*<<< orphan*/  FUNC6 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int,int) ; 

void FUNC21(struct e1000_adapter *adapter, bool reset)
{
	struct net_device *netdev = adapter->netdev;
	struct e1000_hw *hw = &adapter->hw;
	u32 tctl, rctl;

	/* signal that we're down so the interrupt handler does not
	 * reschedule our watchdog timer
	 */
	FUNC17(__E1000_DOWN, &adapter->state);

	FUNC14(netdev);

	/* disable receives in the hardware */
	rctl = FUNC11(RCTL);
	if (!(adapter->flags2 & FLAG2_NO_DISABLE_RX))
		FUNC12(RCTL, rctl & ~E1000_RCTL_EN);
	/* flush and sleep below */

	FUNC15(netdev);

	/* disable transmits in the hardware */
	tctl = FUNC11(TCTL);
	tctl &= ~E1000_TCTL_EN;
	FUNC12(TCTL, tctl);

	/* flush both disables and wait for them to finish */
	FUNC9();
	FUNC20(10000, 11000);

	FUNC4(adapter);

	FUNC13(&adapter->napi);

	FUNC0(&adapter->phy_info_timer);

	FUNC18(&adapter->stats64_lock);
	FUNC8(adapter);
	FUNC19(&adapter->stats64_lock);

	FUNC6(adapter);

	adapter->link_speed = 0;
	adapter->link_duplex = 0;

	/* Disable Si errata workaround on PCHx for jumbo frame flow */
	if ((hw->mac.type >= e1000_pch2lan) &&
	    (adapter->netdev->mtu > ETH_DATA_LEN) &&
	    FUNC5(hw, false))
		FUNC10("failed to disable jumbo frame workaround mode\n");

	if (!FUNC16(adapter->pdev)) {
		if (reset)
			FUNC7(adapter);
		else if (hw->mac.type >= e1000_pch_spt)
			FUNC3(adapter);
	}
	FUNC2(adapter->tx_ring);
	FUNC1(adapter->rx_ring);
}