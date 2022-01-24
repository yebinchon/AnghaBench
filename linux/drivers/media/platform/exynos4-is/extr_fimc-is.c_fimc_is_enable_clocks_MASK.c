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
struct fimc_is {int /*<<< orphan*/ * clocks; TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ISS_GATE_CLKS_MAX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * fimc_is_clocks ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct fimc_is *is)
{
	int i, ret;

	for (i = 0; i < ISS_GATE_CLKS_MAX; i++) {
		if (FUNC0(is->clocks[i]))
			continue;
		ret = FUNC2(is->clocks[i]);
		if (ret < 0) {
			FUNC3(&is->pdev->dev, "clock %s enable failed\n",
				fimc_is_clocks[i]);
			for (--i; i >= 0; i--)
				FUNC1(is->clocks[i]);
			return ret;
		}
		FUNC4("enabled clock: %s\n", fimc_is_clocks[i]);
	}
	return 0;
}