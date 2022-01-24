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
struct e1000_hw {scalar_t__ mac_type; } ;

/* Variables and functions */
 int FUNC0 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct e1000_hw*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  VFTA ; 
 scalar_t__ e1000_82544 ; 

void FUNC3(struct e1000_hw *hw, u32 offset, u32 value)
{
	u32 temp;

	if ((hw->mac_type == e1000_82544) && ((offset & 0x1) == 1)) {
		temp = FUNC0(hw, VFTA, (offset - 1));
		FUNC2(hw, VFTA, offset, value);
		FUNC1();
		FUNC2(hw, VFTA, (offset - 1), temp);
		FUNC1();
	} else {
		FUNC2(hw, VFTA, offset, value);
		FUNC1();
	}
}