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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct ath_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_D_TXBLK_BASE ; 
 int /*<<< orphan*/  AR_D_TXBLK_WRITE_COMMAND ; 
 int /*<<< orphan*/  AR_D_TXBLK_WRITE_DCU ; 
 int /*<<< orphan*/  AR_D_TXBLK_WRITE_SLICE ; 
 int ATH9K_HW_BIT_IN_SLICE ; 
 int ATH9K_HW_SLICE_PER_DCU ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  PS ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int,int,int /*<<< orphan*/ ) ; 

void FUNC5(struct ath_hw *ah, u8 destidx, bool set)
{
	int dcu_idx;
	u32 filter;

	for (dcu_idx = 0; dcu_idx < 10; dcu_idx++) {
		filter = FUNC2(set, AR_D_TXBLK_WRITE_COMMAND);
		filter |= FUNC2(dcu_idx, AR_D_TXBLK_WRITE_DCU);
		filter |= FUNC2((destidx / ATH9K_HW_SLICE_PER_DCU),
			     AR_D_TXBLK_WRITE_SLICE);
		filter |= FUNC0(destidx % ATH9K_HW_BIT_IN_SLICE);
		FUNC4(FUNC3(ah), PS,
			"DCU%d staid %d set %d txfilter %08x\n",
			dcu_idx, destidx, set, filter);
		FUNC1(ah, AR_D_TXBLK_BASE, filter);
	}
}