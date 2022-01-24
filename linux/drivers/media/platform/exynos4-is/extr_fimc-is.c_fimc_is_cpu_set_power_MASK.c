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
struct TYPE_2__ {int /*<<< orphan*/  paddr; } ;
struct fimc_is {TYPE_1__ memory; } ;

/* Variables and functions */
 int ETIME ; 
 unsigned int FIMC_IS_POWER_ON_TIMEOUT ; 
 int /*<<< orphan*/  MCUCTL_REG_BBOAR ; 
 int /*<<< orphan*/  REG_PMU_ISP_ARM_CONFIGURATION ; 
 int /*<<< orphan*/  REG_PMU_ISP_ARM_OPTION ; 
 int /*<<< orphan*/  REG_PMU_ISP_ARM_STATUS ; 
 int /*<<< orphan*/  REG_WDT_ISP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct fimc_is*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct fimc_is*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,struct fimc_is*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

int FUNC4(struct fimc_is *is, int on)
{
	unsigned int timeout = FIMC_IS_POWER_ON_TIMEOUT;

	if (on) {
		/* Disable watchdog */
		FUNC0(0, is, REG_WDT_ISP);

		/* Cortex-A5 start address setting */
		FUNC0(is->memory.paddr, is, MCUCTL_REG_BBOAR);

		/* Enable and start Cortex-A5 */
		FUNC2(0x18000, is, REG_PMU_ISP_ARM_OPTION);
		FUNC2(0x1, is, REG_PMU_ISP_ARM_CONFIGURATION);
	} else {
		/* A5 power off */
		FUNC2(0x10000, is, REG_PMU_ISP_ARM_OPTION);
		FUNC2(0x0, is, REG_PMU_ISP_ARM_CONFIGURATION);

		while (FUNC1(is, REG_PMU_ISP_ARM_STATUS) & 1) {
			if (timeout == 0)
				return -ETIME;
			timeout--;
			FUNC3(1);
		}
	}

	return 0;
}