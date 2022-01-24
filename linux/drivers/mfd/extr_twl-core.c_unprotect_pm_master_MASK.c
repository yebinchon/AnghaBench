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
 int /*<<< orphan*/  TWL4030_PM_MASTER_KEY_CFG1 ; 
 int /*<<< orphan*/  TWL4030_PM_MASTER_KEY_CFG2 ; 
 int /*<<< orphan*/  TWL4030_PM_MASTER_PROTECT_KEY ; 
 int /*<<< orphan*/  TWL_MODULE_PM_MASTER ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC1(void)
{
	int e = 0;

	e |= FUNC0(TWL_MODULE_PM_MASTER, TWL4030_PM_MASTER_KEY_CFG1,
			      TWL4030_PM_MASTER_PROTECT_KEY);
	e |= FUNC0(TWL_MODULE_PM_MASTER, TWL4030_PM_MASTER_KEY_CFG2,
			      TWL4030_PM_MASTER_PROTECT_KEY);

	return e;
}