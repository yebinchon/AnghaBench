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
struct e1000_hw {int dummy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 scalar_t__ E1000_ERR_MBX ; 
 int E1000_V2PMAILBOX_VFU ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static s32 FUNC4(struct e1000_hw *hw)
{
	s32 ret_val = -E1000_ERR_MBX;
	int count = 10;

	do {
		/* Take ownership of the buffer */
		FUNC2(FUNC0(0), E1000_V2PMAILBOX_VFU);

		/* reserve mailbox for VF use */
		if (FUNC1(hw) & E1000_V2PMAILBOX_VFU) {
			ret_val = 0;
			break;
		}
		FUNC3(1000);
	} while (count-- > 0);

	return ret_val;
}