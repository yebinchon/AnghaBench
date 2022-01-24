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
struct TYPE_7__ {scalar_t__ (* stop_adapter ) (struct ixgbe_hw*) ;scalar_t__ (* setup_sfp ) (struct ixgbe_hw*) ;scalar_t__ (* acquire_swfw_sync ) (struct ixgbe_hw*,int) ;int /*<<< orphan*/  (* init_rx_addrs ) (struct ixgbe_hw*) ;int /*<<< orphan*/  (* get_mac_addr ) (struct ixgbe_hw*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* release_swfw_sync ) (struct ixgbe_hw*,int) ;int /*<<< orphan*/  (* check_link ) (struct ixgbe_hw*,int /*<<< orphan*/ *,int*,int) ;} ;
struct TYPE_8__ {int flags; int num_rar_entries; TYPE_3__ ops; int /*<<< orphan*/  perm_addr; } ;
struct TYPE_5__ {scalar_t__ (* init ) (struct ixgbe_hw*) ;int /*<<< orphan*/  (* reset ) (struct ixgbe_hw*) ;} ;
struct TYPE_6__ {int phy_semaphore_mask; scalar_t__ type; int sfp_setup_needed; TYPE_1__ ops; int /*<<< orphan*/  reset_disable; } ;
struct ixgbe_hw {scalar_t__ device_id; TYPE_4__ mac; int /*<<< orphan*/  force_full_reset; TYPE_2__ phy; } ;
typedef  scalar_t__ s32 ;
typedef  int /*<<< orphan*/  ixgbe_link_speed ;

/* Variables and functions */
 int /*<<< orphan*/  IXGBE_CTRL ; 
 int IXGBE_CTRL_LNK_RST ; 
 int IXGBE_CTRL_RST ; 
 int IXGBE_CTRL_RST_MASK ; 
 scalar_t__ IXGBE_DEV_ID_X550EM_X_SFP ; 
 scalar_t__ IXGBE_ERR_PHY_ADDR_INVALID ; 
 scalar_t__ IXGBE_ERR_RESET_FAILED ; 
 scalar_t__ IXGBE_ERR_SFP_NOT_SUPPORTED ; 
 scalar_t__ IXGBE_ERR_SWFW_SYNC ; 
 int IXGBE_FLAGS_DOUBLE_RESET_REQUIRED ; 
 int FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_hw*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_hw*) ; 
 scalar_t__ FUNC5 (struct ixgbe_hw*) ; 
 scalar_t__ ixgbe_phy_x550em_ext_t ; 
 int /*<<< orphan*/  FUNC6 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC7 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 scalar_t__ FUNC9 (struct ixgbe_hw*) ; 
 scalar_t__ FUNC10 (struct ixgbe_hw*) ; 
 scalar_t__ FUNC11 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC12 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC13 (struct ixgbe_hw*,int /*<<< orphan*/ *,int*,int) ; 
 scalar_t__ FUNC14 (struct ixgbe_hw*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct ixgbe_hw*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (int,int) ; 

__attribute__((used)) static s32 FUNC20(struct ixgbe_hw *hw)
{
	ixgbe_link_speed link_speed;
	s32 status;
	u32 ctrl = 0;
	u32 i;
	bool link_up = false;
	u32 swfw_mask = hw->phy.phy_semaphore_mask;

	/* Call adapter stop to disable Tx/Rx and clear interrupts */
	status = hw->mac.ops.stop_adapter(hw);
	if (status)
		return status;

	/* flush pending Tx transactions */
	FUNC4(hw);

	/* PHY ops must be identified and initialized prior to reset */
	status = hw->phy.ops.init(hw);
	if (status == IXGBE_ERR_SFP_NOT_SUPPORTED ||
	    status == IXGBE_ERR_PHY_ADDR_INVALID)
		return status;

	/* start the external PHY */
	if (hw->phy.type == ixgbe_phy_x550em_ext_t) {
		status = FUNC5(hw);
		if (status)
			return status;
	}

	/* Setup SFP module if there is one present. */
	if (hw->phy.sfp_setup_needed) {
		status = hw->mac.ops.setup_sfp(hw);
		hw->phy.sfp_setup_needed = false;
	}

	if (status == IXGBE_ERR_SFP_NOT_SUPPORTED)
		return status;

	/* Reset PHY */
	if (!hw->phy.reset_disable && hw->phy.ops.reset)
		hw->phy.ops.reset(hw);

mac_reset_top:
	/* Issue global reset to the MAC.  Needs to be SW reset if link is up.
	 * If link reset is used when link is up, it might reset the PHY when
	 * mng is using it.  If link is down or the flag to force full link
	 * reset is set, then perform link reset.
	 */
	ctrl = IXGBE_CTRL_LNK_RST;

	if (!hw->force_full_reset) {
		hw->mac.ops.check_link(hw, &link_speed, &link_up, false);
		if (link_up)
			ctrl = IXGBE_CTRL_RST;
	}

	status = hw->mac.ops.acquire_swfw_sync(hw, swfw_mask);
	if (status) {
		FUNC3(hw, "semaphore failed with %d", status);
		return IXGBE_ERR_SWFW_SYNC;
	}

	ctrl |= FUNC0(hw, IXGBE_CTRL);
	FUNC2(hw, IXGBE_CTRL, ctrl);
	FUNC1(hw);
	hw->mac.ops.release_swfw_sync(hw, swfw_mask);
	FUNC19(1000, 1200);

	/* Poll for reset bit to self-clear meaning reset is complete */
	for (i = 0; i < 10; i++) {
		ctrl = FUNC0(hw, IXGBE_CTRL);
		if (!(ctrl & IXGBE_CTRL_RST_MASK))
			break;
		FUNC18(1);
	}

	if (ctrl & IXGBE_CTRL_RST_MASK) {
		status = IXGBE_ERR_RESET_FAILED;
		FUNC3(hw, "Reset polling failed to complete.\n");
	}

	FUNC8(50);

	/* Double resets are required for recovery from certain error
	 * clear the multicast table.  Also reset num_rar_entries to 128,
	 * since we modify this value when programming the SAN MAC address.
	 */
	if (hw->mac.flags & IXGBE_FLAGS_DOUBLE_RESET_REQUIRED) {
		hw->mac.flags &= ~IXGBE_FLAGS_DOUBLE_RESET_REQUIRED;
		goto mac_reset_top;
	}

	/* Store the permanent mac address */
	hw->mac.ops.get_mac_addr(hw, hw->mac.perm_addr);

	/* Store MAC address from RAR0, clear receive address registers, and
	 * clear the multicast table.  Also reset num_rar_entries to 128,
	 * since we modify this value when programming the SAN MAC address.
	 */
	hw->mac.num_rar_entries = 128;
	hw->mac.ops.init_rx_addrs(hw);

	FUNC6(hw);

	if (hw->device_id == IXGBE_DEV_ID_X550EM_X_SFP)
		FUNC7(hw);

	return status;
}