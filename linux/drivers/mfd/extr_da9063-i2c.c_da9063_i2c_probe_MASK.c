#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct i2c_device_id {scalar_t__ driver_data; } ;
struct i2c_client {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;
struct da9063 {scalar_t__ type; scalar_t__ variant_code; int /*<<< orphan*/ * dev; int /*<<< orphan*/  regmap; int /*<<< orphan*/  chip_irq; } ;
struct TYPE_3__ {int /*<<< orphan*/ * volatile_table; int /*<<< orphan*/ * wr_table; int /*<<< orphan*/ * rd_table; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ PMIC_DA9063_AD ; 
 scalar_t__ PMIC_TYPE_DA9063L ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  da9063_ad_readable_table ; 
 int /*<<< orphan*/  da9063_ad_volatile_table ; 
 int /*<<< orphan*/  da9063_ad_writeable_table ; 
 int /*<<< orphan*/  da9063_bb_readable_table ; 
 int /*<<< orphan*/  da9063_bb_volatile_table ; 
 int /*<<< orphan*/  da9063_bb_writeable_table ; 
 int FUNC2 (struct da9063*,int /*<<< orphan*/ ) ; 
 TYPE_1__ da9063_regmap_config ; 
 int /*<<< orphan*/  da9063l_bb_readable_table ; 
 int /*<<< orphan*/  da9063l_bb_volatile_table ; 
 int /*<<< orphan*/  da9063l_bb_writeable_table ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 struct da9063* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,struct da9063*) ; 

__attribute__((used)) static int FUNC7(struct i2c_client *i2c,
			    const struct i2c_device_id *id)
{
	struct da9063 *da9063;
	int ret;

	da9063 = FUNC4(&i2c->dev, sizeof(struct da9063), GFP_KERNEL);
	if (da9063 == NULL)
		return -ENOMEM;

	FUNC6(i2c, da9063);
	da9063->dev = &i2c->dev;
	da9063->chip_irq = i2c->irq;
	da9063->type = id->driver_data;

	if (da9063->variant_code == PMIC_DA9063_AD) {
		da9063_regmap_config.rd_table = &da9063_ad_readable_table;
		da9063_regmap_config.wr_table = &da9063_ad_writeable_table;
		da9063_regmap_config.volatile_table = &da9063_ad_volatile_table;
	} else if (da9063->type == PMIC_TYPE_DA9063L) {
		da9063_regmap_config.rd_table = &da9063l_bb_readable_table;
		da9063_regmap_config.wr_table = &da9063l_bb_writeable_table;
		da9063_regmap_config.volatile_table = &da9063l_bb_volatile_table;
	} else {
		da9063_regmap_config.rd_table = &da9063_bb_readable_table;
		da9063_regmap_config.wr_table = &da9063_bb_writeable_table;
		da9063_regmap_config.volatile_table = &da9063_bb_volatile_table;
	}

	da9063->regmap = FUNC5(i2c, &da9063_regmap_config);
	if (FUNC0(da9063->regmap)) {
		ret = FUNC1(da9063->regmap);
		FUNC3(da9063->dev, "Failed to allocate register map: %d\n",
			ret);
		return ret;
	}

	return FUNC2(da9063, i2c->irq);
}