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
struct TYPE_2__ {scalar_t__ type; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
struct ixgbe_adapter {int /*<<< orphan*/  (* ptp_setup_sdp ) (struct ixgbe_adapter*) ;int /*<<< orphan*/  last_overflow_check; int /*<<< orphan*/  tmreg_lock; int /*<<< orphan*/  hw_cc; int /*<<< orphan*/  hw_tc; int /*<<< orphan*/  tstamp_config; struct ixgbe_hw hw; } ;

/* Variables and functions */
 scalar_t__ ixgbe_mac_82598EB ; 
 int /*<<< orphan*/  FUNC0 (struct ixgbe_adapter*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC8(struct ixgbe_adapter *adapter)
{
	struct ixgbe_hw *hw = &adapter->hw;
	unsigned long flags;

	/* reset the hardware timestamping mode */
	FUNC0(adapter, &adapter->tstamp_config);

	/* 82598 does not support PTP */
	if (hw->mac.type == ixgbe_mac_82598EB)
		return;

	FUNC1(adapter);

	FUNC4(&adapter->tmreg_lock, flags);
	FUNC7(&adapter->hw_tc, &adapter->hw_cc,
			 FUNC3(FUNC2()));
	FUNC5(&adapter->tmreg_lock, flags);

	adapter->last_overflow_check = jiffies;

	/* Now that the shift has been calculated and the systime
	 * registers reset, (re-)enable the Clock out feature
	 */
	if (adapter->ptp_setup_sdp)
		adapter->ptp_setup_sdp(adapter);
}