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

/* Variables and functions */
 int /*<<< orphan*/  PWR_DEVOFF ; 
 int STARTON_CHG ; 
 int STARTON_VBUS ; 
 int /*<<< orphan*/  TWL4030_PM_MASTER_P1_SW_EVENTS ; 
 int /*<<< orphan*/  TWL_MODULE_PM_MASTER ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(void)
{
	int err;

	/* Disable start on charger or VBUS as it can break poweroff */
	err = FUNC1(STARTON_VBUS | STARTON_CHG, 0);
	if (err)
		FUNC0("TWL4030 Unable to configure start-up\n");

	err = FUNC2(TWL_MODULE_PM_MASTER, PWR_DEVOFF,
			       TWL4030_PM_MASTER_P1_SW_EVENTS);
	if (err)
		FUNC0("TWL4030 Unable to power off\n");
}