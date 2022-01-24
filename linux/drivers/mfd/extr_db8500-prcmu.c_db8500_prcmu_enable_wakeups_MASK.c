#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_3__ {int dbb_wakeups; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; TYPE_1__ req; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int NUM_PRCMU_WAKEUP_INDICES ; 
 int VALID_WAKEUPS ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_2__ mb0_transfer ; 
 int* prcmu_wakeup_bit ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC5(u32 wakeups)
{
	unsigned long flags;
	u32 bits;
	int i;

	FUNC1(wakeups != (wakeups & VALID_WAKEUPS));

	for (i = 0, bits = 0; i < NUM_PRCMU_WAKEUP_INDICES; i++) {
		if (wakeups & FUNC0(i))
			bits |= prcmu_wakeup_bit[i];
	}

	FUNC3(&mb0_transfer.lock, flags);

	mb0_transfer.req.dbb_wakeups = bits;
	FUNC2();

	FUNC4(&mb0_transfer.lock, flags);
}