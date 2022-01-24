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
struct ice_hw {int dummy; } ;
typedef  enum ice_status { ____Placeholder_ice_status } ice_status ;

/* Variables and functions */
 int /*<<< orphan*/  GLGEN_RSTAT ; 
 scalar_t__ GLGEN_RSTAT_DEVSTATE_M ; 
 int /*<<< orphan*/  GLNVM_ULD ; 
 int /*<<< orphan*/  ICE_DBG_INIT ; 
 int ICE_ERR_RESET_FAILED ; 
 scalar_t__ ICE_PF_RESET_WAIT_COUNT ; 
 scalar_t__ ICE_RESET_DONE_MASK ; 
 int /*<<< orphan*/  PFGEN_CTRL ; 
 scalar_t__ PFGEN_CTRL_PFSWR_M ; 
 scalar_t__ FUNC0 (struct ice_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ice_hw*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct ice_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ice_hw*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static enum ice_status FUNC5(struct ice_hw *hw)
{
	u32 cnt, reg;

	/* If at function entry a global reset was already in progress, i.e.
	 * state is not 'device active' or any of the reset done bits are not
	 * set in GLNVM_ULD, there is no need for a PF Reset; poll until the
	 * global reset is done.
	 */
	if ((FUNC3(hw, GLGEN_RSTAT) & GLGEN_RSTAT_DEVSTATE_M) ||
	    (FUNC3(hw, GLNVM_ULD) & ICE_RESET_DONE_MASK) ^ ICE_RESET_DONE_MASK) {
		/* poll on global reset currently in progress until done */
		if (FUNC0(hw))
			return ICE_ERR_RESET_FAILED;

		return 0;
	}

	/* Reset the PF */
	reg = FUNC3(hw, PFGEN_CTRL);

	FUNC4(hw, PFGEN_CTRL, (reg | PFGEN_CTRL_PFSWR_M));

	for (cnt = 0; cnt < ICE_PF_RESET_WAIT_COUNT; cnt++) {
		reg = FUNC3(hw, PFGEN_CTRL);
		if (!(reg & PFGEN_CTRL_PFSWR_M))
			break;

		FUNC2(1);
	}

	if (cnt == ICE_PF_RESET_WAIT_COUNT) {
		FUNC1(hw, ICE_DBG_INIT,
			  "PF reset polling failed to complete.\n");
		return ICE_ERR_RESET_FAILED;
	}

	return 0;
}