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
struct retu_dev {int /*<<< orphan*/  mutex; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  RETU_REG_CC1 ; 
 int /*<<< orphan*/  RETU_REG_WATCHDOG ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct retu_dev* retu_pm_power_off ; 

__attribute__((used)) static void FUNC5(void)
{
	struct retu_dev *rdev = retu_pm_power_off;
	int reg;

	FUNC1(&retu_pm_power_off->mutex);

	/* Ignore power button state */
	FUNC3(rdev->regmap, RETU_REG_CC1, &reg);
	FUNC4(rdev->regmap, RETU_REG_CC1, reg | 2);

	/* Expire watchdog immediately */
	FUNC4(rdev->regmap, RETU_REG_WATCHDOG, 0);

	/* Wait for poweroff */
	for (;;)
		FUNC0();

	FUNC2(&retu_pm_power_off->mutex);
}