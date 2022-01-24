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
typedef  int u16 ;
struct e1000_phy_info {scalar_t__ autoneg_wait_to_complete; int /*<<< orphan*/  autoneg_mask; int /*<<< orphan*/  autoneg_advertised; } ;
struct TYPE_2__ {int get_link_status; } ;
struct e1000_hw {TYPE_1__ mac; struct e1000_phy_info phy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int BMCR_ANENABLE ; 
 int BMCR_ANRESTART ; 
 int /*<<< orphan*/  MII_BMCR ; 
 scalar_t__ FUNC0 (struct e1000_hw*) ; 
 scalar_t__ FUNC1 (struct e1000_hw*) ; 
 scalar_t__ FUNC2 (struct e1000_hw*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC3 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static s32 FUNC5(struct e1000_hw *hw)
{
	struct e1000_phy_info *phy = &hw->phy;
	s32 ret_val;
	u16 phy_ctrl;

	/* Perform some bounds checking on the autoneg advertisement
	 * parameter.
	 */
	phy->autoneg_advertised &= phy->autoneg_mask;

	/* If autoneg_advertised is zero, we assume it was not defaulted
	 * by the calling code so we set to advertise full capability.
	 */
	if (!phy->autoneg_advertised)
		phy->autoneg_advertised = phy->autoneg_mask;

	FUNC4("Reconfiguring auto-neg advertisement params\n");
	ret_val = FUNC0(hw);
	if (ret_val) {
		FUNC4("Error Setting up Auto-Negotiation\n");
		return ret_val;
	}
	FUNC4("Restarting Auto-Neg\n");

	/* Restart auto-negotiation by setting the Auto Neg Enable bit and
	 * the Auto Neg Restart bit in the PHY control register.
	 */
	ret_val = FUNC2(hw, MII_BMCR, &phy_ctrl);
	if (ret_val)
		return ret_val;

	phy_ctrl |= (BMCR_ANENABLE | BMCR_ANRESTART);
	ret_val = FUNC3(hw, MII_BMCR, phy_ctrl);
	if (ret_val)
		return ret_val;

	/* Does the user want to wait for Auto-Neg to complete here, or
	 * check at a later time (for example, callback routine).
	 */
	if (phy->autoneg_wait_to_complete) {
		ret_val = FUNC1(hw);
		if (ret_val) {
			FUNC4("Error while waiting for autoneg to complete\n");
			return ret_val;
		}
	}

	hw->mac.get_link_status = true;

	return ret_val;
}