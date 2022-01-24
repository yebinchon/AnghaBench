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
struct TYPE_4__ {scalar_t__ (* reset ) (struct igc_hw*) ;} ;
struct igc_phy_info {scalar_t__ media_type; int reset_delay_us; int id; int /*<<< orphan*/  type; TYPE_2__ ops; int /*<<< orphan*/  autoneg_mask; } ;
struct TYPE_3__ {int func; } ;
struct igc_hw {struct igc_phy_info phy; TYPE_1__ bus; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  AUTONEG_ADVERTISE_SPEED_DEFAULT_2500 ; 
#define  I225_I_PHY_ID 128 
 scalar_t__ IGC_ERR_PHY ; 
 int /*<<< orphan*/  IGC_STATUS ; 
 int IGC_STATUS_FUNC_MASK ; 
 int IGC_STATUS_FUNC_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct igc_hw*) ; 
 scalar_t__ FUNC2 (struct igc_hw*) ; 
 scalar_t__ igc_media_type_copper ; 
 int /*<<< orphan*/  igc_phy_i225 ; 
 int /*<<< orphan*/  igc_phy_none ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct igc_hw*) ; 

__attribute__((used)) static s32 FUNC5(struct igc_hw *hw)
{
	struct igc_phy_info *phy = &hw->phy;
	s32 ret_val = 0;

	if (hw->phy.media_type != igc_media_type_copper) {
		phy->type = igc_phy_none;
		goto out;
	}

	phy->autoneg_mask	= AUTONEG_ADVERTISE_SPEED_DEFAULT_2500;
	phy->reset_delay_us	= 100;

	/* set lan id */
	hw->bus.func = (FUNC3(IGC_STATUS) & IGC_STATUS_FUNC_MASK) >>
			IGC_STATUS_FUNC_SHIFT;

	/* Make sure the PHY is in a good state. Several people have reported
	 * firmware leaving the PHY's page select register set to something
	 * other than the default of zero, which causes the PHY ID read to
	 * access something other than the intended register.
	 */
	ret_val = hw->phy.ops.reset(hw);
	if (ret_val) {
		FUNC0("Error resetting the PHY.\n");
		goto out;
	}

	ret_val = FUNC2(hw);
	if (ret_val)
		return ret_val;

	FUNC1(hw);

	/* Verify phy id and set remaining function pointers */
	switch (phy->id) {
	case I225_I_PHY_ID:
		phy->type	= igc_phy_i225;
		break;
	default:
		ret_val = -IGC_ERR_PHY;
		goto out;
	}

out:
	return ret_val;
}