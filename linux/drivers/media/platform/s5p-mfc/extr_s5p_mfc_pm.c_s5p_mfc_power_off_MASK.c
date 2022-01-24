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
struct TYPE_2__ {int num_clocks; int /*<<< orphan*/  device; int /*<<< orphan*/ * clocks; int /*<<< orphan*/  clock_gate; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* pm ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(void)
{
	int i;

	/* finish software clock gating */
	FUNC1(pm->clock_gate);

	for (i = 0; i < pm->num_clocks; i++)
		FUNC0(pm->clocks[i]);

	return FUNC2(pm->device);
}