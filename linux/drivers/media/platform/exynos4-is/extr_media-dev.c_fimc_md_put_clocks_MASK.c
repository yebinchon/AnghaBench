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
struct fimc_md {void** wbclk; TYPE_1__* camclk; } ;
struct TYPE_2__ {void* clock; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int FIMC_MAX_CAMCLKS ; 
 int FIMC_MAX_WBCLKS ; 
 scalar_t__ FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 

__attribute__((used)) static void FUNC3(struct fimc_md *fmd)
{
	int i = FIMC_MAX_CAMCLKS;

	while (--i >= 0) {
		if (FUNC1(fmd->camclk[i].clock))
			continue;
		FUNC2(fmd->camclk[i].clock);
		fmd->camclk[i].clock = FUNC0(-EINVAL);
	}

	/* Writeback (PIXELASYNCMx) clocks */
	for (i = 0; i < FIMC_MAX_WBCLKS; i++) {
		if (FUNC1(fmd->wbclk[i]))
			continue;
		FUNC2(fmd->wbclk[i]);
		fmd->wbclk[i] = FUNC0(-EINVAL);
	}
}