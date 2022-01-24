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
struct e1000_hw {int dummy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL ; 
 int E1000_CTRL_FRCDPX ; 
 int E1000_CTRL_FRCSPD ; 
 int E1000_CTRL_SLU ; 
 scalar_t__ FUNC0 (struct e1000_hw*) ; 
 scalar_t__ FUNC1 (struct e1000_hw*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static s32 FUNC4(struct e1000_hw *hw)
{
	u32 ctrl;
	s32 ret_val;

	ctrl = FUNC2(CTRL);
	ctrl |= E1000_CTRL_SLU;
	ctrl &= ~(E1000_CTRL_FRCSPD | E1000_CTRL_FRCDPX);
	FUNC3(CTRL, ctrl);

	ret_val = FUNC0(hw);
	if (ret_val)
		return ret_val;

	return FUNC1(hw);
}