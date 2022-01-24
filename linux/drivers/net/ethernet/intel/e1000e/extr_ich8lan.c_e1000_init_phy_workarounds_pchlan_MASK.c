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
typedef  int u32 ;
struct TYPE_10__ {int type; } ;
struct TYPE_8__ {scalar_t__ (* check_reset_block ) (struct e1000_hw*) ;int /*<<< orphan*/  (* release ) (struct e1000_hw*) ;scalar_t__ (* acquire ) (struct e1000_hw*) ;} ;
struct TYPE_9__ {TYPE_3__ ops; } ;
struct TYPE_6__ {int /*<<< orphan*/  ulp_state; } ;
struct TYPE_7__ {TYPE_1__ ich8lan; } ;
struct e1000_hw {TYPE_5__ mac; TYPE_4__ phy; TYPE_2__ dev_spec; struct e1000_adapter* adapter; } ;
struct e1000_adapter {int dummy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL_EXT ; 
 int E1000_CTRL_EXT_FORCE_SMBUS ; 
 scalar_t__ E1000_ERR_PHY ; 
 int E1000_ICH_FWSM_FW_VALID ; 
 int /*<<< orphan*/  FWSM ; 
 int /*<<< orphan*/  FUNC0 (struct e1000_hw*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct e1000_hw*,int) ; 
#define  e1000_pch2lan 132 
#define  e1000_pch_cnp 131 
#define  e1000_pch_lpt 130 
#define  e1000_pch_spt 129 
#define  e1000_pchlan 128 
 int /*<<< orphan*/  FUNC2 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_hw*) ; 
 int /*<<< orphan*/  e1000_ulp_state_unknown ; 
 scalar_t__ FUNC4 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 scalar_t__ FUNC10 (struct e1000_hw*) ; 
 scalar_t__ FUNC11 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC12 (struct e1000_hw*) ; 
 scalar_t__ FUNC13 (struct e1000_hw*) ; 
 scalar_t__ FUNC14 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC15 (int,int) ; 

__attribute__((used)) static s32 FUNC16(struct e1000_hw *hw)
{
	struct e1000_adapter *adapter = hw->adapter;
	u32 mac_reg, fwsm = FUNC7(FWSM);
	s32 ret_val;

	/* Gate automatic PHY configuration by hardware on managed and
	 * non-managed 82579 and newer adapters.
	 */
	FUNC1(hw, true);

	/* It is not possible to be certain of the current state of ULP
	 * so forcibly disable it.
	 */
	hw->dev_spec.ich8lan.ulp_state = e1000_ulp_state_unknown;
	FUNC0(hw, true);

	ret_val = hw->phy.ops.acquire(hw);
	if (ret_val) {
		FUNC5("Failed to initialize PHY flow\n");
		goto out;
	}

	/* The MAC-PHY interconnect may be in SMBus mode.  If the PHY is
	 * inaccessible and resetting the PHY is not blocked, toggle the
	 * LANPHYPC Value bit to force the interconnect to PCIe mode.
	 */
	switch (hw->mac.type) {
	case e1000_pch_lpt:
	case e1000_pch_spt:
	case e1000_pch_cnp:
		if (FUNC2(hw))
			break;

		/* Before toggling LANPHYPC, see if PHY is accessible by
		 * forcing MAC to SMBus mode first.
		 */
		mac_reg = FUNC7(CTRL_EXT);
		mac_reg |= E1000_CTRL_EXT_FORCE_SMBUS;
		FUNC8(CTRL_EXT, mac_reg);

		/* Wait 50 milliseconds for MAC to finish any retries
		 * that it might be trying to perform from previous
		 * attempts to acknowledge any phy read requests.
		 */
		FUNC9(50);

		/* fall-through */
	case e1000_pch2lan:
		if (FUNC2(hw))
			break;

		/* fall-through */
	case e1000_pchlan:
		if ((hw->mac.type == e1000_pchlan) &&
		    (fwsm & E1000_ICH_FWSM_FW_VALID))
			break;

		if (hw->phy.ops.check_reset_block(hw)) {
			FUNC5("Required LANPHYPC toggle blocked by ME\n");
			ret_val = -E1000_ERR_PHY;
			break;
		}

		/* Toggle LANPHYPC Value bit */
		FUNC3(hw);
		if (hw->mac.type >= e1000_pch_lpt) {
			if (FUNC2(hw))
				break;

			/* Toggling LANPHYPC brings the PHY out of SMBus mode
			 * so ensure that the MAC is also out of SMBus mode
			 */
			mac_reg = FUNC7(CTRL_EXT);
			mac_reg &= ~E1000_CTRL_EXT_FORCE_SMBUS;
			FUNC8(CTRL_EXT, mac_reg);

			if (FUNC2(hw))
				break;

			ret_val = -E1000_ERR_PHY;
		}
		break;
	default:
		break;
	}

	hw->phy.ops.release(hw);
	if (!ret_val) {

		/* Check to see if able to reset PHY.  Print error if not */
		if (hw->phy.ops.check_reset_block(hw)) {
			FUNC6("Reset blocked by ME\n");
			goto out;
		}

		/* Reset the PHY before any access to it.  Doing so, ensures
		 * that the PHY is in a known good state before we read/write
		 * PHY registers.  The generic reset is sufficient here,
		 * because we haven't determined the PHY type yet.
		 */
		ret_val = FUNC4(hw);
		if (ret_val)
			goto out;

		/* On a successful reset, possibly need to wait for the PHY
		 * to quiesce to an accessible state before returning control
		 * to the calling function.  If the PHY does not quiesce, then
		 * return E1000E_BLK_PHY_RESET, as this is the condition that
		 *  the PHY is in.
		 */
		ret_val = hw->phy.ops.check_reset_block(hw);
		if (ret_val)
			FUNC6("ME blocked access to PHY after reset\n");
	}

out:
	/* Ungate automatic PHY configuration on non-managed 82579 */
	if ((hw->mac.type == e1000_pch2lan) &&
	    !(fwsm & E1000_ICH_FWSM_FW_VALID)) {
		FUNC15(10000, 11000);
		FUNC1(hw, false);
	}

	return ret_val;
}