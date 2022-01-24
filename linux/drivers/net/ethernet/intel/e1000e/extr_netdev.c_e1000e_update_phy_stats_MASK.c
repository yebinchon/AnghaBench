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
typedef  int u16 ;
struct TYPE_7__ {int /*<<< orphan*/  (* release ) (struct e1000_hw*) ;scalar_t__ (* read_reg_page ) (struct e1000_hw*,int /*<<< orphan*/ ,int*) ;scalar_t__ (* set_page ) (struct e1000_hw*,int) ;scalar_t__ (* acquire ) (struct e1000_hw*) ;} ;
struct TYPE_8__ {int addr; TYPE_3__ ops; } ;
struct TYPE_5__ {int collision_delta; } ;
struct e1000_hw {TYPE_4__ phy; TYPE_1__ mac; } ;
struct TYPE_6__ {int scc; int ecol; int mcc; int latecol; int dc; int tncrs; } ;
struct e1000_adapter {TYPE_2__ stats; struct e1000_hw hw; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  HV_COLC_LOWER ; 
 int /*<<< orphan*/  HV_COLC_UPPER ; 
 int /*<<< orphan*/  HV_DC_LOWER ; 
 int /*<<< orphan*/  HV_DC_UPPER ; 
 int /*<<< orphan*/  HV_ECOL_LOWER ; 
 int /*<<< orphan*/  HV_ECOL_UPPER ; 
 int /*<<< orphan*/  HV_LATECOL_LOWER ; 
 int /*<<< orphan*/  HV_LATECOL_UPPER ; 
 int /*<<< orphan*/  HV_MCC_LOWER ; 
 int /*<<< orphan*/  HV_MCC_UPPER ; 
 int /*<<< orphan*/  HV_SCC_LOWER ; 
 int /*<<< orphan*/  HV_SCC_UPPER ; 
 int HV_STATS_PAGE ; 
 int /*<<< orphan*/  HV_TNCRS_LOWER ; 
 int /*<<< orphan*/  HV_TNCRS_UPPER ; 
 int /*<<< orphan*/  IGP01E1000_PHY_PAGE_SELECT ; 
 int IGP_PAGE_SHIFT ; 
 scalar_t__ FUNC0 (struct e1000_hw*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC1 (struct e1000_hw*) ; 
 scalar_t__ FUNC2 (struct e1000_hw*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC3 (struct e1000_hw*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC4 (struct e1000_hw*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC5 (struct e1000_hw*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC6 (struct e1000_hw*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC7 (struct e1000_hw*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC8 (struct e1000_hw*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct e1000_hw*) ; 
 scalar_t__ FUNC10 (struct e1000_hw*,int) ; 
 scalar_t__ FUNC11 (struct e1000_hw*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC12 (struct e1000_hw*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC13 (struct e1000_hw*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC14 (struct e1000_hw*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC15 (struct e1000_hw*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC16 (struct e1000_hw*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC17 (struct e1000_hw*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void FUNC18(struct e1000_adapter *adapter)
{
	struct e1000_hw *hw = &adapter->hw;
	s32 ret_val;
	u16 phy_data;

	ret_val = hw->phy.ops.acquire(hw);
	if (ret_val)
		return;

	/* A page set is expensive so check if already on desired page.
	 * If not, set to the page with the PHY status registers.
	 */
	hw->phy.addr = 1;
	ret_val = FUNC0(hw, IGP01E1000_PHY_PAGE_SELECT,
					   &phy_data);
	if (ret_val)
		goto release;
	if (phy_data != (HV_STATS_PAGE << IGP_PAGE_SHIFT)) {
		ret_val = hw->phy.ops.set_page(hw,
					       HV_STATS_PAGE << IGP_PAGE_SHIFT);
		if (ret_val)
			goto release;
	}

	/* Single Collision Count */
	hw->phy.ops.read_reg_page(hw, HV_SCC_UPPER, &phy_data);
	ret_val = hw->phy.ops.read_reg_page(hw, HV_SCC_LOWER, &phy_data);
	if (!ret_val)
		adapter->stats.scc += phy_data;

	/* Excessive Collision Count */
	hw->phy.ops.read_reg_page(hw, HV_ECOL_UPPER, &phy_data);
	ret_val = hw->phy.ops.read_reg_page(hw, HV_ECOL_LOWER, &phy_data);
	if (!ret_val)
		adapter->stats.ecol += phy_data;

	/* Multiple Collision Count */
	hw->phy.ops.read_reg_page(hw, HV_MCC_UPPER, &phy_data);
	ret_val = hw->phy.ops.read_reg_page(hw, HV_MCC_LOWER, &phy_data);
	if (!ret_val)
		adapter->stats.mcc += phy_data;

	/* Late Collision Count */
	hw->phy.ops.read_reg_page(hw, HV_LATECOL_UPPER, &phy_data);
	ret_val = hw->phy.ops.read_reg_page(hw, HV_LATECOL_LOWER, &phy_data);
	if (!ret_val)
		adapter->stats.latecol += phy_data;

	/* Collision Count - also used for adaptive IFS */
	hw->phy.ops.read_reg_page(hw, HV_COLC_UPPER, &phy_data);
	ret_val = hw->phy.ops.read_reg_page(hw, HV_COLC_LOWER, &phy_data);
	if (!ret_val)
		hw->mac.collision_delta = phy_data;

	/* Defer Count */
	hw->phy.ops.read_reg_page(hw, HV_DC_UPPER, &phy_data);
	ret_val = hw->phy.ops.read_reg_page(hw, HV_DC_LOWER, &phy_data);
	if (!ret_val)
		adapter->stats.dc += phy_data;

	/* Transmit with no CRS */
	hw->phy.ops.read_reg_page(hw, HV_TNCRS_UPPER, &phy_data);
	ret_val = hw->phy.ops.read_reg_page(hw, HV_TNCRS_LOWER, &phy_data);
	if (!ret_val)
		adapter->stats.tncrs += phy_data;

release:
	hw->phy.ops.release(hw);
}