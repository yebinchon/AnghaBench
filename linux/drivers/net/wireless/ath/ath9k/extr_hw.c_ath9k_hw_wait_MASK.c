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
struct ath_hw {int dummy; } ;

/* Variables and functions */
 int AH_TIME_QUANTUM ; 
 int /*<<< orphan*/  ANY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct ath_hw*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

bool FUNC5(struct ath_hw *ah, u32 reg, u32 mask, u32 val, u32 timeout)
{
	int i;

	FUNC0(timeout < AH_TIME_QUANTUM);

	for (i = 0; i < (timeout / AH_TIME_QUANTUM); i++) {
		if ((FUNC1(ah, reg) & mask) == val)
			return true;

		FUNC4(AH_TIME_QUANTUM);
	}

	FUNC3(FUNC2(ah), ANY,
		"timeout (%d us) on reg 0x%x: 0x%08x & 0x%08x != 0x%08x\n",
		timeout, reg, FUNC1(ah, reg), mask, val);

	return false;
}