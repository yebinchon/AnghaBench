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
struct TYPE_2__ {scalar_t__ (* get_cfg_done ) (struct e1000_hw*) ;int /*<<< orphan*/  (* release ) (struct e1000_hw*) ;scalar_t__ (* acquire ) (struct e1000_hw*) ;scalar_t__ (* check_reset_block ) (struct e1000_hw*) ;} ;
struct e1000_phy_info {TYPE_1__ ops; int /*<<< orphan*/  reset_delay_us; } ;
struct e1000_hw {struct e1000_phy_info phy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL ; 
 int E1000_CTRL_PHY_RST ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct e1000_hw*) ; 
 scalar_t__ FUNC4 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct e1000_hw*) ; 
 scalar_t__ FUNC6 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 

s32 FUNC9(struct e1000_hw *hw)
{
	struct e1000_phy_info *phy = &hw->phy;
	s32 ret_val;
	u32 ctrl;

	if (phy->ops.check_reset_block) {
		ret_val = phy->ops.check_reset_block(hw);
		if (ret_val)
			return 0;
	}

	ret_val = phy->ops.acquire(hw);
	if (ret_val)
		return ret_val;

	ctrl = FUNC1(CTRL);
	FUNC2(CTRL, ctrl | E1000_CTRL_PHY_RST);
	FUNC0();

	FUNC7(phy->reset_delay_us);

	FUNC2(CTRL, ctrl);
	FUNC0();

	FUNC8(150, 300);

	phy->ops.release(hw);

	return phy->ops.get_cfg_done(hw);
}