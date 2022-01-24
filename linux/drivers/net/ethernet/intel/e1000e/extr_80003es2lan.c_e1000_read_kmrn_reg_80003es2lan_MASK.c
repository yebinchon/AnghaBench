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
typedef  scalar_t__ u16 ;
struct e1000_hw {int dummy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int E1000_KMRNCTRLSTA_OFFSET ; 
 int E1000_KMRNCTRLSTA_OFFSET_SHIFT ; 
 int E1000_KMRNCTRLSTA_REN ; 
 int /*<<< orphan*/  KMRNCTRLSTA ; 
 scalar_t__ FUNC0 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static s32 FUNC6(struct e1000_hw *hw, u32 offset,
					   u16 *data)
{
	u32 kmrnctrlsta;
	s32 ret_val;

	ret_val = FUNC0(hw);
	if (ret_val)
		return ret_val;

	kmrnctrlsta = ((offset << E1000_KMRNCTRLSTA_OFFSET_SHIFT) &
		       E1000_KMRNCTRLSTA_OFFSET) | E1000_KMRNCTRLSTA_REN;
	FUNC4(KMRNCTRLSTA, kmrnctrlsta);
	FUNC2();

	FUNC5(2);

	kmrnctrlsta = FUNC3(KMRNCTRLSTA);
	*data = (u16)kmrnctrlsta;

	FUNC1(hw);

	return ret_val;
}