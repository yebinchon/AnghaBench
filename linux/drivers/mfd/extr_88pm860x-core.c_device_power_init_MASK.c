#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct regulator_init_data {int dummy; } ;
struct pm860x_power_pdata {int dummy; } ;
struct pm860x_platform_data {TYPE_1__* chg_desc; TYPE_1__* power; } ;
struct pm860x_chip {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq_base; } ;
struct TYPE_5__ {int pdata_size; TYPE_1__* platform_data; int /*<<< orphan*/ * resources; void* num_resources; } ;
struct TYPE_4__ {void* num_charger_regulators; int /*<<< orphan*/ * charger_regulators; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * battery_resources ; 
 int /*<<< orphan*/ * charger_resources ; 
 int /*<<< orphan*/ * chg_desc_regulator_data ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__* power_devs ; 
 TYPE_1__ preg_init_data ; 

__attribute__((used)) static void FUNC3(struct pm860x_chip *chip,
					struct pm860x_platform_data *pdata)
{
	int ret;

	if (pdata == NULL)
		return;

	power_devs[0].platform_data = pdata->power;
	power_devs[0].pdata_size = sizeof(struct pm860x_power_pdata);
	power_devs[0].num_resources = FUNC0(battery_resources);
	power_devs[0].resources = &battery_resources[0],
	ret = FUNC2(chip->dev, 0, &power_devs[0], 1,
			      &battery_resources[0], chip->irq_base, NULL);
	if (ret < 0)
		FUNC1(chip->dev, "Failed to add battery subdev\n");

	power_devs[1].platform_data = pdata->power;
	power_devs[1].pdata_size = sizeof(struct pm860x_power_pdata);
	power_devs[1].num_resources = FUNC0(charger_resources);
	power_devs[1].resources = &charger_resources[0],
	ret = FUNC2(chip->dev, 0, &power_devs[1], 1,
			      &charger_resources[0], chip->irq_base, NULL);
	if (ret < 0)
		FUNC1(chip->dev, "Failed to add charger subdev\n");

	power_devs[2].platform_data = &preg_init_data;
	power_devs[2].pdata_size = sizeof(struct regulator_init_data);
	ret = FUNC2(chip->dev, 0, &power_devs[2], 1,
			      NULL, chip->irq_base, NULL);
	if (ret < 0)
		FUNC1(chip->dev, "Failed to add preg subdev\n");

	if (pdata->chg_desc) {
		pdata->chg_desc->charger_regulators =
			&chg_desc_regulator_data[0];
		pdata->chg_desc->num_charger_regulators	=
			FUNC0(chg_desc_regulator_data),
		power_devs[3].platform_data = pdata->chg_desc;
		power_devs[3].pdata_size = sizeof(*pdata->chg_desc);
		ret = FUNC2(chip->dev, 0, &power_devs[3], 1,
				      NULL, chip->irq_base, NULL);
		if (ret < 0)
			FUNC1(chip->dev, "Failed to add chg-manager subdev\n");
	}
}