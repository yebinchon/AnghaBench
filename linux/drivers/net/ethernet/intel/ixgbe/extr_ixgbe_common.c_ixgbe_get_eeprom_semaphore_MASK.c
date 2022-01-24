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
struct ixgbe_hw {int dummy; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  IXGBE_ERR_EEPROM ; 
 scalar_t__ FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*) ; 
 scalar_t__ IXGBE_SWSM_SMBI ; 
 scalar_t__ IXGBE_SWSM_SWESMBI ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_hw*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static s32 FUNC6(struct ixgbe_hw *hw)
{
	u32 timeout = 2000;
	u32 i;
	u32 swsm;

	/* Get SMBI software semaphore between device drivers first */
	for (i = 0; i < timeout; i++) {
		/*
		 * If the SMBI bit is 0 when we read it, then the bit will be
		 * set and we have the semaphore
		 */
		swsm = FUNC0(hw, FUNC1(hw));
		if (!(swsm & IXGBE_SWSM_SMBI))
			break;
		FUNC5(50, 100);
	}

	if (i == timeout) {
		FUNC3(hw, "Driver can't access the Eeprom - SMBI Semaphore not granted.\n");
		/* this release is particularly important because our attempts
		 * above to get the semaphore may have succeeded, and if there
		 * was a timeout, we should unconditionally clear the semaphore
		 * bits to free the driver to make progress
		 */
		FUNC4(hw);

		FUNC5(50, 100);
		/* one last try
		 * If the SMBI bit is 0 when we read it, then the bit will be
		 * set and we have the semaphore
		 */
		swsm = FUNC0(hw, FUNC1(hw));
		if (swsm & IXGBE_SWSM_SMBI) {
			FUNC3(hw, "Software semaphore SMBI between device drivers not granted.\n");
			return IXGBE_ERR_EEPROM;
		}
	}

	/* Now get the semaphore between SW/FW through the SWESMBI bit */
	for (i = 0; i < timeout; i++) {
		swsm = FUNC0(hw, FUNC1(hw));

		/* Set the SW EEPROM semaphore bit to request access */
		swsm |= IXGBE_SWSM_SWESMBI;
		FUNC2(hw, FUNC1(hw), swsm);

		/* If we set the bit successfully then we got the
		 * semaphore.
		 */
		swsm = FUNC0(hw, FUNC1(hw));
		if (swsm & IXGBE_SWSM_SWESMBI)
			break;

		FUNC5(50, 100);
	}

	/* Release semaphores and return error if SW EEPROM semaphore
	 * was not granted because we don't have access to the EEPROM
	 */
	if (i >= timeout) {
		FUNC3(hw, "SWESMBI Software EEPROM semaphore not granted.\n");
		FUNC4(hw);
		return IXGBE_ERR_EEPROM;
	}

	return 0;
}