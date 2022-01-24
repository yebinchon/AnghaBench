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
struct fimc_dev {TYPE_1__* pdev; void** clock; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int ENXIO ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (void*) ; 
 int MAX_FIMC_CLOCKS ; 
 int FUNC2 (void*) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct fimc_dev*) ; 
 int /*<<< orphan*/ * fimc_clocks ; 

__attribute__((used)) static int FUNC8(struct fimc_dev *fimc)
{
	int i, ret;

	for (i = 0; i < MAX_FIMC_CLOCKS; i++)
		fimc->clock[i] = FUNC0(-EINVAL);

	for (i = 0; i < MAX_FIMC_CLOCKS; i++) {
		fimc->clock[i] = FUNC3(&fimc->pdev->dev, fimc_clocks[i]);
		if (FUNC1(fimc->clock[i])) {
			ret = FUNC2(fimc->clock[i]);
			goto err;
		}
		ret = FUNC4(fimc->clock[i]);
		if (ret < 0) {
			FUNC5(fimc->clock[i]);
			fimc->clock[i] = FUNC0(-EINVAL);
			goto err;
		}
	}
	return 0;
err:
	FUNC7(fimc);
	FUNC6(&fimc->pdev->dev, "failed to get clock: %s\n",
		fimc_clocks[i]);
	return -ENXIO;
}