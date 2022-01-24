#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct igb_adapter {int wvbr; int vfs_allocated_count; TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int IGB_STAGGERED_QUEUE_OFFSET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static void FUNC2(struct igb_adapter *adapter)
{
	int j;

	if (!adapter->wvbr)
		return;

	for (j = 0; j < adapter->vfs_allocated_count; j++) {
		if (adapter->wvbr & FUNC0(j) ||
		    adapter->wvbr & FUNC0(j + IGB_STAGGERED_QUEUE_OFFSET)) {
			FUNC1(&adapter->pdev->dev,
				"Spoof event(s) detected on VF %d\n", j);
			adapter->wvbr &=
				~(FUNC0(j) |
				  FUNC0(j + IGB_STAGGERED_QUEUE_OFFSET));
		}
	}
}