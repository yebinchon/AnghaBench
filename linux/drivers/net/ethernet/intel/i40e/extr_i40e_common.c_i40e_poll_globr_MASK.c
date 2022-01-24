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
typedef  scalar_t__ u32 ;
struct i40e_hw {int dummy; } ;
typedef  int /*<<< orphan*/  i40e_status ;

/* Variables and functions */
 int /*<<< orphan*/  I40E_ERR_RESET_FAILED ; 
 int /*<<< orphan*/  I40E_GLGEN_RSTAT ; 
 scalar_t__ I40E_GLGEN_RSTAT_DEVSTATE_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct i40e_hw*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct i40e_hw*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static i40e_status FUNC3(struct i40e_hw *hw,
				   u32 retry_limit)
{
	u32 cnt, reg = 0;

	for (cnt = 0; cnt < retry_limit; cnt++) {
		reg = FUNC2(hw, I40E_GLGEN_RSTAT);
		if (!(reg & I40E_GLGEN_RSTAT_DEVSTATE_MASK))
			return 0;
		FUNC1(100);
	}

	FUNC0(hw, "Global reset failed.\n");
	FUNC0(hw, "I40E_GLGEN_RSTAT = 0x%x\n", reg);

	return I40E_ERR_RESET_FAILED;
}