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
struct TYPE_2__ {int num_clocks; int /*<<< orphan*/  device; int /*<<< orphan*/ * clocks; int /*<<< orphan*/  clock_gate; int /*<<< orphan*/ * clk_names; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* pm ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(void)
{
	int i, ret = 0;

	ret = FUNC4(pm->device);
	if (ret < 0)
		return ret;

	/* clock control */
	for (i = 0; i < pm->num_clocks; i++) {
		ret = FUNC2(pm->clocks[i]);
		if (ret < 0) {
			FUNC3("clock prepare failed for clock: %s\n",
				pm->clk_names[i]);
			i++;
			goto err;
		}
	}

	/* prepare for software clock gating */
	FUNC0(pm->clock_gate);

	return 0;
err:
	while (--i > 0)
		FUNC1(pm->clocks[i]);
	FUNC5(pm->device);
	return ret;
}