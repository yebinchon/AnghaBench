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
struct igc_hw {int dummy; } ;
typedef  int s32 ;

/* Variables and functions */
 int /*<<< orphan*/  IGC_EECD ; 
 int IGC_EECD_FLUPD_I225 ; 
 int IGC_ERR_NVM ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct igc_hw*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static s32 FUNC4(struct igc_hw *hw)
{
	s32 ret_val = 0;
	u32 flup;

	ret_val = FUNC1(hw);
	if (ret_val == -IGC_ERR_NVM) {
		FUNC0("Flash update time out\n");
		goto out;
	}

	flup = FUNC2(IGC_EECD) | IGC_EECD_FLUPD_I225;
	FUNC3(IGC_EECD, flup);

	ret_val = FUNC1(hw);
	if (ret_val)
		FUNC0("Flash update time out\n");
	else
		FUNC0("Flash update complete\n");

out:
	return ret_val;
}