#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_6__ {scalar_t__ type; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* acquire ) (struct e1000_hw*) ;int /*<<< orphan*/  (* release ) (struct e1000_hw*) ;} ;
struct TYPE_5__ {int id; int revision; TYPE_1__ ops; } ;
struct e1000_hw {TYPE_3__ mac; TYPE_2__ phy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL_EXT ; 
 int /*<<< orphan*/  CV_SMB_CTRL ; 
 int CV_SMB_CTRL_FORCE_SMBUS ; 
 int E1000_CTRL_EXT_FORCE_SMBUS ; 
 int E1000_ICH_FWSM_FW_VALID ; 
 int /*<<< orphan*/  FWSM ; 
 int /*<<< orphan*/  MII_PHYSID1 ; 
 int /*<<< orphan*/  MII_PHYSID2 ; 
 int PHY_REVISION_MASK ; 
 scalar_t__ e1000_pch_lpt ; 
 scalar_t__ FUNC0 (struct e1000_hw*) ; 
 scalar_t__ FUNC1 (struct e1000_hw*) ; 
 scalar_t__ FUNC2 (struct e1000_hw*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC7 (struct e1000_hw*) ; 

__attribute__((used)) static bool FUNC8(struct e1000_hw *hw)
{
	u16 phy_reg = 0;
	u32 phy_id = 0;
	s32 ret_val = 0;
	u16 retry_count;
	u32 mac_reg = 0;

	for (retry_count = 0; retry_count < 2; retry_count++) {
		ret_val = FUNC2(hw, MII_PHYSID1, &phy_reg);
		if (ret_val || (phy_reg == 0xFFFF))
			continue;
		phy_id = (u32)(phy_reg << 16);

		ret_val = FUNC2(hw, MII_PHYSID2, &phy_reg);
		if (ret_val || (phy_reg == 0xFFFF)) {
			phy_id = 0;
			continue;
		}
		phy_id |= (u32)(phy_reg & PHY_REVISION_MASK);
		break;
	}

	if (hw->phy.id) {
		if (hw->phy.id == phy_id)
			goto out;
	} else if (phy_id) {
		hw->phy.id = phy_id;
		hw->phy.revision = (u32)(phy_reg & ~PHY_REVISION_MASK);
		goto out;
	}

	/* In case the PHY needs to be in mdio slow mode,
	 * set slow mode and try to get the PHY id again.
	 */
	if (hw->mac.type < e1000_pch_lpt) {
		hw->phy.ops.release(hw);
		ret_val = FUNC0(hw);
		if (!ret_val)
			ret_val = FUNC1(hw);
		hw->phy.ops.acquire(hw);
	}

	if (ret_val)
		return false;
out:
	if (hw->mac.type >= e1000_pch_lpt) {
		/* Only unforce SMBus if ME is not active */
		if (!(FUNC4(FWSM) & E1000_ICH_FWSM_FW_VALID)) {
			/* Unforce SMBus mode in PHY */
			FUNC2(hw, CV_SMB_CTRL, &phy_reg);
			phy_reg &= ~CV_SMB_CTRL_FORCE_SMBUS;
			FUNC3(hw, CV_SMB_CTRL, phy_reg);

			/* Unforce SMBus mode in MAC */
			mac_reg = FUNC4(CTRL_EXT);
			mac_reg &= ~E1000_CTRL_EXT_FORCE_SMBUS;
			FUNC5(CTRL_EXT, mac_reg);
		}
	}

	return true;
}