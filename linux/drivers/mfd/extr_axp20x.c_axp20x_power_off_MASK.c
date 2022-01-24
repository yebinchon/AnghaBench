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
struct TYPE_2__ {scalar_t__ variant; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  AXP20X_OFF ; 
 int /*<<< orphan*/  AXP20X_OFF_CTRL ; 
 scalar_t__ AXP288_ID ; 
 TYPE_1__* axp20x_pm_power_off ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void)
{
	if (axp20x_pm_power_off->variant == AXP288_ID)
		return;

	FUNC1(axp20x_pm_power_off->regmap, AXP20X_OFF_CTRL,
		     AXP20X_OFF);

	/* Give capacitors etc. time to drain to avoid kernel panic msg. */
	FUNC0(500);
}