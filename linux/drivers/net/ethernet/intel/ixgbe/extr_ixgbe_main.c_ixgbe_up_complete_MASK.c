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
typedef  int u32 ;
struct TYPE_7__ {int /*<<< orphan*/  (* set_phy_power ) (struct ixgbe_hw*,int) ;} ;
struct TYPE_8__ {TYPE_3__ ops; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* enable_tx_laser ) (struct ixgbe_hw*) ;} ;
struct TYPE_6__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_4__ phy; TYPE_2__ mac; } ;
struct ixgbe_adapter {int flags; int /*<<< orphan*/  service_timer; int /*<<< orphan*/  link_check_timeout; int /*<<< orphan*/  state; struct ixgbe_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  IXGBE_CTRL_EXT ; 
 int IXGBE_CTRL_EXT_PFRSTD ; 
 int /*<<< orphan*/  IXGBE_EICR ; 
 int /*<<< orphan*/  IXGBE_ESDP ; 
 int IXGBE_ESDP_SDP1 ; 
 int IXGBE_FLAG_FAN_FAIL_CAPABLE ; 
 int IXGBE_FLAG_MSIX_ENABLED ; 
 int IXGBE_FLAG_NEED_LINK_UPDATE ; 
 int FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  __IXGBE_DOWN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct ixgbe_adapter*,int,int) ; 
 scalar_t__ FUNC9 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC10 (struct ixgbe_adapter*) ; 
 int FUNC11 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC12 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC13 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  probe ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC17 (struct ixgbe_hw*,int) ; 

__attribute__((used)) static void FUNC18(struct ixgbe_adapter *adapter)
{
	struct ixgbe_hw *hw = &adapter->hw;
	int err;
	u32 ctrl_ext;

	FUNC7(adapter);
	FUNC12(adapter);

	if (adapter->flags & IXGBE_FLAG_MSIX_ENABLED)
		FUNC6(adapter);
	else
		FUNC5(adapter);

	/* enable the optics for 82599 SFP+ fiber */
	if (hw->mac.ops.enable_tx_laser)
		hw->mac.ops.enable_tx_laser(hw);

	if (hw->phy.ops.set_phy_power)
		hw->phy.ops.set_phy_power(hw, true);

	FUNC15();
	FUNC2(__IXGBE_DOWN, &adapter->state);
	FUNC10(adapter);

	if (FUNC9(hw)) {
		FUNC13(adapter);
	} else {
		err = FUNC11(hw);
		if (err)
			FUNC4(probe, "link_config FAILED %d\n", err);
	}

	/* clear any pending interrupts, may auto mask */
	FUNC0(hw, IXGBE_EICR);
	FUNC8(adapter, true, true);

	/*
	 * If this adapter has a fan, check to see if we had a failure
	 * before we enabled the interrupt.
	 */
	if (adapter->flags & IXGBE_FLAG_FAN_FAIL_CAPABLE) {
		u32 esdp = FUNC0(hw, IXGBE_ESDP);
		if (esdp & IXGBE_ESDP_SDP1)
			FUNC3(drv, "Fan has stopped, replace the adapter\n");
	}

	/* bring the link up in the watchdog, this could race with our first
	 * link up interrupt but shouldn't be a problem */
	adapter->flags |= IXGBE_FLAG_NEED_LINK_UPDATE;
	adapter->link_check_timeout = jiffies;
	FUNC14(&adapter->service_timer, jiffies);

	/* Set PF Reset Done bit so PF/VF Mail Ops can work */
	ctrl_ext = FUNC0(hw, IXGBE_CTRL_EXT);
	ctrl_ext |= IXGBE_CTRL_EXT_PFRSTD;
	FUNC1(hw, IXGBE_CTRL_EXT, ctrl_ext);
}