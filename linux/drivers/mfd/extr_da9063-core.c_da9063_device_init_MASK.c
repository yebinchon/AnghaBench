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
struct da9063 {int irq_base; unsigned int chip_irq; int variant_code; scalar_t__ type; int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap_irq; int /*<<< orphan*/  regmap; scalar_t__ flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int DA9063_CHIP_VARIANT_SHIFT ; 
 int /*<<< orphan*/  DA9063_REG_CHIP_ID ; 
 int /*<<< orphan*/  DA9063_REG_CHIP_VARIANT ; 
 int EIO ; 
 int ENODEV ; 
 int /*<<< orphan*/  PLATFORM_DEVID_NONE ; 
 int PMIC_CHIP_ID_DA9063 ; 
 int PMIC_DA9063_AD ; 
 int PMIC_DA9063_BB ; 
 scalar_t__ PMIC_TYPE_DA9063 ; 
 int FUNC1 (struct da9063*) ; 
 int /*<<< orphan*/  da9063_common_devs ; 
 int /*<<< orphan*/  da9063_devs ; 
 int FUNC2 (struct da9063*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

int FUNC8(struct da9063 *da9063, unsigned int irq)
{
	int model, variant_id, variant_code;
	int ret;

	ret = FUNC1(da9063);
	if (ret < 0)
		FUNC3(da9063->dev, "Cannot clear fault log\n");

	da9063->flags = 0;
	da9063->irq_base = -1;
	da9063->chip_irq = irq;

	ret = FUNC7(da9063->regmap, DA9063_REG_CHIP_ID, &model);
	if (ret < 0) {
		FUNC3(da9063->dev, "Cannot read chip model id.\n");
		return -EIO;
	}
	if (model != PMIC_CHIP_ID_DA9063) {
		FUNC3(da9063->dev, "Invalid chip model id: 0x%02x\n", model);
		return -ENODEV;
	}

	ret = FUNC7(da9063->regmap, DA9063_REG_CHIP_VARIANT, &variant_id);
	if (ret < 0) {
		FUNC3(da9063->dev, "Cannot read chip variant id.\n");
		return -EIO;
	}

	variant_code = variant_id >> DA9063_CHIP_VARIANT_SHIFT;

	FUNC4(da9063->dev,
		 "Device detected (chip-ID: 0x%02X, var-ID: 0x%02X)\n",
		 model, variant_id);

	if (variant_code < PMIC_DA9063_BB && variant_code != PMIC_DA9063_AD) {
		FUNC3(da9063->dev,
			"Cannot support variant code: 0x%02X\n", variant_code);
		return -ENODEV;
	}

	da9063->variant_code = variant_code;

	ret = FUNC2(da9063);
	if (ret) {
		FUNC3(da9063->dev, "Cannot initialize interrupts.\n");
		return ret;
	}

	da9063->irq_base = FUNC6(da9063->regmap_irq);

	ret = FUNC5(da9063->dev, PLATFORM_DEVID_NONE,
				   da9063_common_devs,
				   FUNC0(da9063_common_devs),
				   NULL, da9063->irq_base, NULL);
	if (ret) {
		FUNC3(da9063->dev, "Failed to add child devices\n");
		return ret;
	}

	if (da9063->type == PMIC_TYPE_DA9063) {
		ret = FUNC5(da9063->dev, PLATFORM_DEVID_NONE,
					   da9063_devs, FUNC0(da9063_devs),
					   NULL, da9063->irq_base, NULL);
		if (ret) {
			FUNC3(da9063->dev, "Failed to add child devices\n");
			return ret;
		}
	}

	return ret;
}