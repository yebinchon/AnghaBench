#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct e1000_hw {int dummy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL ; 
 int /*<<< orphan*/  CTRL_EXT ; 
 int E1000_CTRL_EXT_SPD_BYPS ; 
 int E1000_CTRL_FRCSPD ; 
 int E1000_CTRL_SPD_100 ; 
 int E1000_CTRL_SPD_1000 ; 
 int /*<<< orphan*/  E1000_KMRNCTRLSTA_K1_CONFIG ; 
 int /*<<< orphan*/  E1000_KMRNCTRLSTA_K1_ENABLE ; 
 scalar_t__ FUNC0 (struct e1000_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct e1000_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

s32 FUNC6(struct e1000_hw *hw, bool k1_enable)
{
	s32 ret_val;
	u32 ctrl_reg = 0;
	u32 ctrl_ext = 0;
	u32 reg = 0;
	u16 kmrn_reg = 0;

	ret_val = FUNC0(hw, E1000_KMRNCTRLSTA_K1_CONFIG,
					      &kmrn_reg);
	if (ret_val)
		return ret_val;

	if (k1_enable)
		kmrn_reg |= E1000_KMRNCTRLSTA_K1_ENABLE;
	else
		kmrn_reg &= ~E1000_KMRNCTRLSTA_K1_ENABLE;

	ret_val = FUNC1(hw, E1000_KMRNCTRLSTA_K1_CONFIG,
					       kmrn_reg);
	if (ret_val)
		return ret_val;

	FUNC5(20, 40);
	ctrl_ext = FUNC3(CTRL_EXT);
	ctrl_reg = FUNC3(CTRL);

	reg = ctrl_reg & ~(E1000_CTRL_SPD_1000 | E1000_CTRL_SPD_100);
	reg |= E1000_CTRL_FRCSPD;
	FUNC4(CTRL, reg);

	FUNC4(CTRL_EXT, ctrl_ext | E1000_CTRL_EXT_SPD_BYPS);
	FUNC2();
	FUNC5(20, 40);
	FUNC4(CTRL, ctrl_reg);
	FUNC4(CTRL_EXT, ctrl_ext);
	FUNC2();
	FUNC5(20, 40);

	return 0;
}