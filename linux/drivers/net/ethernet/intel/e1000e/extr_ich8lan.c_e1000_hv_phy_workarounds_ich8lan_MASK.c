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
typedef  int u16 ;
struct TYPE_5__ {int /*<<< orphan*/  (* release ) (struct e1000_hw*) ;scalar_t__ (* acquire ) (struct e1000_hw*) ;} ;
struct TYPE_6__ {scalar_t__ type; int revision; int addr; TYPE_2__ ops; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_3__ phy; TYPE_1__ mac; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  BM_PORT_GEN_CFG ; 
 int /*<<< orphan*/  HV_KMRN_FIFO_CTRLSTA ; 
 int /*<<< orphan*/  I82577_MSE_THRESHOLD ; 
 int /*<<< orphan*/  IGP01E1000_PHY_PAGE_SELECT ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (struct e1000_hw*,int) ; 
 scalar_t__ e1000_pchlan ; 
 scalar_t__ e1000_phy_82577 ; 
 scalar_t__ e1000_phy_82578 ; 
 scalar_t__ FUNC2 (struct e1000_hw*) ; 
 scalar_t__ FUNC3 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct e1000_hw*) ; 
 scalar_t__ FUNC5 (struct e1000_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct e1000_hw*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC7 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC10 (struct e1000_hw*) ; 
 scalar_t__ FUNC11 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC12 (struct e1000_hw*) ; 

__attribute__((used)) static s32 FUNC13(struct e1000_hw *hw)
{
	s32 ret_val = 0;
	u16 phy_data;

	if (hw->mac.type != e1000_pchlan)
		return 0;

	/* Set MDIO slow mode before any other MDIO access */
	if (hw->phy.type == e1000_phy_82577) {
		ret_val = FUNC2(hw);
		if (ret_val)
			return ret_val;
	}

	if (((hw->phy.type == e1000_phy_82577) &&
	     ((hw->phy.revision == 1) || (hw->phy.revision == 2))) ||
	    ((hw->phy.type == e1000_phy_82578) && (hw->phy.revision == 1))) {
		/* Disable generation of early preamble */
		ret_val = FUNC7(hw, FUNC0(769, 25), 0x4431);
		if (ret_val)
			return ret_val;

		/* Preamble tuning for SSC */
		ret_val = FUNC7(hw, HV_KMRN_FIFO_CTRLSTA, 0xA204);
		if (ret_val)
			return ret_val;
	}

	if (hw->phy.type == e1000_phy_82578) {
		/* Return registers to default by doing a soft reset then
		 * writing 0x3140 to the control register.
		 */
		if (hw->phy.revision < 2) {
			FUNC4(hw);
			ret_val = FUNC7(hw, MII_BMCR, 0x3140);
			if (ret_val)
				return ret_val;
		}
	}

	/* Select page 0 */
	ret_val = hw->phy.ops.acquire(hw);
	if (ret_val)
		return ret_val;

	hw->phy.addr = 1;
	ret_val = FUNC5(hw, IGP01E1000_PHY_PAGE_SELECT, 0);
	hw->phy.ops.release(hw);
	if (ret_val)
		return ret_val;

	/* Configure the K1 Si workaround during phy reset assuming there is
	 * link so that it disables K1 if link is in 1Gbps.
	 */
	ret_val = FUNC1(hw, true);
	if (ret_val)
		return ret_val;

	/* Workaround for link disconnects on a busy hub in half duplex */
	ret_val = hw->phy.ops.acquire(hw);
	if (ret_val)
		return ret_val;
	ret_val = FUNC6(hw, BM_PORT_GEN_CFG, &phy_data);
	if (ret_val)
		goto release;
	ret_val = FUNC8(hw, BM_PORT_GEN_CFG, phy_data & 0x00FF);
	if (ret_val)
		goto release;

	/* set MSE higher to enable link to stay up when noise is high */
	ret_val = FUNC3(hw, I82577_MSE_THRESHOLD, 0x0034);
release:
	hw->phy.ops.release(hw);

	return ret_val;
}