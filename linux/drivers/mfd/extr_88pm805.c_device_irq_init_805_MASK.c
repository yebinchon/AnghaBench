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
struct regmap {int dummy; } ;
struct pm80x_chip {int /*<<< orphan*/  irq_data; int /*<<< orphan*/  regmap_irq_chip; int /*<<< orphan*/  irq; struct regmap* regmap; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned long IRQF_ONESHOT ; 
 int PM800_STATUS0_INT_MASK ; 
 int /*<<< orphan*/  PM805_INT_STATUS0 ; 
 int PM805_STATUS0_INT_CLEAR ; 
 int PM805_STATUS0_INV_INT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct regmap*,int /*<<< orphan*/ ,unsigned long,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct regmap*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static int FUNC4(struct pm80x_chip *chip)
{
	struct regmap *map = chip->regmap;
	unsigned long flags = IRQF_ONESHOT;
	int data, mask, ret = -EINVAL;

	if (!map || !chip->irq) {
		FUNC0(chip->dev, "incorrect parameters\n");
		return -EINVAL;
	}

	/*
	 * irq_mode defines the way of clearing interrupt. it's read-clear by
	 * default.
	 */
	mask =
	    PM805_STATUS0_INT_CLEAR | PM805_STATUS0_INV_INT |
	    PM800_STATUS0_INT_MASK;

	data = PM805_STATUS0_INT_CLEAR;
	ret = FUNC2(map, PM805_INT_STATUS0, mask, data);
	/*
	 * PM805_INT_STATUS is under 32K clock domain, so need to
	 * add proper delay before the next I2C register access.
	 */
	FUNC3(1000, 3000);

	if (ret < 0)
		goto out;

	ret =
	    FUNC1(chip->regmap, chip->irq, flags, -1,
				chip->regmap_irq_chip, &chip->irq_data);

out:
	return ret;
}