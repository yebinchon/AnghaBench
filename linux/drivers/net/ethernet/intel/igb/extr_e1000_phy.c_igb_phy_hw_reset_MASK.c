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
struct TYPE_2__ {scalar_t__ (* get_cfg_done ) (struct e1000_hw*) ;int /*<<< orphan*/  (* release ) (struct e1000_hw*) ;scalar_t__ (* acquire ) (struct e1000_hw*) ;} ;
struct e1000_phy_info {int reset_delay_us; TYPE_1__ ops; } ;
struct e1000_hw {struct e1000_phy_info phy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  E1000_CTRL ; 
 int E1000_CTRL_PHY_RST ; 
 scalar_t__ FUNC0 (struct e1000_hw*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_hw*) ; 
 scalar_t__ FUNC4 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 

s32 FUNC8(struct e1000_hw *hw)
{
	struct e1000_phy_info *phy = &hw->phy;
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

	ctrl = FUNC1(E1000_CTRL);
	FUNC6(E1000_CTRL, ctrl | E1000_CTRL_PHY_RST);
	FUNC7();

	FUNC5(phy->reset_delay_us);

	FUNC6(E1000_CTRL, ctrl);
	FUNC7();

	FUNC5(150);

	phy->ops.release(hw);

	ret_val = phy->ops.get_cfg_done(hw);

out:
	return ret_val;
}