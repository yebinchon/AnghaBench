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
struct axp20x_dev {int /*<<< orphan*/  regmap_irqc; int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct axp20x_dev* axp20x_pm_power_off ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * pm_power_off ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(struct axp20x_dev *axp20x)
{
	if (axp20x == axp20x_pm_power_off) {
		axp20x_pm_power_off = NULL;
		pm_power_off = NULL;
	}

	FUNC0(axp20x->dev);
	FUNC1(axp20x->irq, axp20x->regmap_irqc);

	return 0;
}