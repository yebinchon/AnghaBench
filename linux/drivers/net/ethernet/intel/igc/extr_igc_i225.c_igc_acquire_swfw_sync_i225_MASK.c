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
typedef  int u16 ;
struct igc_hw {int dummy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 scalar_t__ IGC_ERR_SWFW_SYNC ; 
 int /*<<< orphan*/  IGC_SW_FW_SYNC ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct igc_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct igc_hw*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

s32 FUNC6(struct igc_hw *hw, u16 mask)
{
	s32 i = 0, timeout = 200;
	u32 fwmask = mask << 16;
	u32 swmask = mask;
	s32 ret_val = 0;
	u32 swfw_sync;

	while (i < timeout) {
		if (FUNC1(hw)) {
			ret_val = -IGC_ERR_SWFW_SYNC;
			goto out;
		}

		swfw_sync = FUNC4(IGC_SW_FW_SYNC);
		if (!(swfw_sync & (fwmask | swmask)))
			break;

		/* Firmware currently using resource (fwmask) */
		FUNC2(hw);
		FUNC3(5);
		i++;
	}

	if (i == timeout) {
		FUNC0("Driver can't access resource, SW_FW_SYNC timeout.\n");
		ret_val = -IGC_ERR_SWFW_SYNC;
		goto out;
	}

	swfw_sync |= swmask;
	FUNC5(IGC_SW_FW_SYNC, swfw_sync);

	FUNC2(hw);
out:
	return ret_val;
}