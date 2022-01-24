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
struct fimc_is {TYPE_1__* pdev; int /*<<< orphan*/ * clocks; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ISS_CLKS_MAX ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * fimc_is_clocks ; 
 int /*<<< orphan*/  FUNC5 (struct fimc_is*) ; 

__attribute__((used)) static int FUNC6(struct fimc_is *is)
{
	int i, ret;

	for (i = 0; i < ISS_CLKS_MAX; i++)
		is->clocks[i] = FUNC0(-EINVAL);

	for (i = 0; i < ISS_CLKS_MAX; i++) {
		is->clocks[i] = FUNC3(&is->pdev->dev, fimc_is_clocks[i]);
		if (FUNC1(is->clocks[i])) {
			ret = FUNC2(is->clocks[i]);
			goto err;
		}
	}

	return 0;
err:
	FUNC5(is);
	FUNC4(&is->pdev->dev, "failed to get clock: %s\n",
		fimc_is_clocks[i]);
	return ret;
}