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
struct TYPE_2__ {int /*<<< orphan*/  (* release ) (struct igc_hw*) ;scalar_t__ (* acquire ) (struct igc_hw*) ;} ;
struct igc_phy_info {TYPE_1__ ops; int /*<<< orphan*/  reset_delay_us; } ;
struct igc_hw {struct igc_phy_info phy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  IGC_CTRL ; 
 int IGC_CTRL_PHY_RST ; 
 scalar_t__ FUNC0 (struct igc_hw*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct igc_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct igc_hw*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 

s32 FUNC8(struct igc_hw *hw)
{
	struct igc_phy_info *phy = &hw->phy;
	s32  ret_val;
	u32 ctrl;

	ret_val = FUNC0(hw);
	if (ret_val) {
		ret_val = 0;
		goto out;
	}

	ret_val = phy->ops.acquire(hw);
	if (ret_val)
		goto out;

	ctrl = FUNC1(IGC_CTRL);
	FUNC6(IGC_CTRL, ctrl | IGC_CTRL_PHY_RST);
	FUNC7();

	FUNC4(phy->reset_delay_us);

	FUNC6(IGC_CTRL, ctrl);
	FUNC7();

	FUNC5(1500, 2000);

	phy->ops.release(hw);

out:
	return ret_val;
}