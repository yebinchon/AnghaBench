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
struct ti_lmu_data {int /*<<< orphan*/  num_cells; int /*<<< orphan*/  cells; int /*<<< orphan*/  max_register; } ;
struct ti_lmu {struct device* dev; int /*<<< orphan*/  notifier; int /*<<< orphan*/  en_gpio; int /*<<< orphan*/  regmap; } ;
struct regmap_config {int reg_bits; int val_bits; int /*<<< orphan*/  max_register; int /*<<< orphan*/  name; } ;
struct i2c_device_id {int /*<<< orphan*/  driver_data; int /*<<< orphan*/  name; } ;
struct device {int dummy; } ;
struct i2c_client {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int) ; 
 int FUNC4 (struct device*,int /*<<< orphan*/ ,struct ti_lmu*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct ti_lmu* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*,struct regmap_config*) ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_client*,struct ti_lmu*) ; 
 int /*<<< orphan*/  FUNC10 (struct regmap_config*,int /*<<< orphan*/ ,int) ; 
 struct ti_lmu_data* FUNC11 (struct device*) ; 
 int /*<<< orphan*/  ti_lmu_disable_hw ; 
 int FUNC12 (struct ti_lmu*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct i2c_client *cl, const struct i2c_device_id *id)
{
	struct device *dev = &cl->dev;
	const struct ti_lmu_data *data;
	struct regmap_config regmap_cfg;
	struct ti_lmu *lmu;
	int ret;

	/*
	 * Get device specific data from of_match table.
	 * This data is defined by using TI_LMU_DATA() macro.
	 */
	data = FUNC11(dev);
	if (!data)
		return -ENODEV;

	lmu = FUNC6(dev, sizeof(*lmu), GFP_KERNEL);
	if (!lmu)
		return -ENOMEM;

	lmu->dev = &cl->dev;

	/* Setup regmap */
	FUNC10(&regmap_cfg, 0, sizeof(struct regmap_config));
	regmap_cfg.reg_bits = 8;
	regmap_cfg.val_bits = 8;
	regmap_cfg.name = id->name;
	regmap_cfg.max_register = data->max_register;

	lmu->regmap = FUNC8(cl, &regmap_cfg);
	if (FUNC1(lmu->regmap))
		return FUNC2(lmu->regmap);

	/* HW enable pin control and additional power up sequence if required */
	lmu->en_gpio = FUNC5(dev, "enable", GPIOD_OUT_HIGH);
	if (FUNC1(lmu->en_gpio)) {
		ret = FUNC2(lmu->en_gpio);
		FUNC3(dev, "Can not request enable GPIO: %d\n", ret);
		return ret;
	}

	ret = FUNC12(lmu, id->driver_data);
	if (ret)
		return ret;

	ret = FUNC4(dev, ti_lmu_disable_hw, lmu);
	if (ret)
		return ret;

	/*
	 * Fault circuit(open/short) can be detected by ti-lmu-fault-monitor.
	 * After fault detection is done, some devices should re-initialize
	 * configuration. The notifier enables such kind of handling.
	 */
	FUNC0(&lmu->notifier);

	FUNC9(cl, lmu);

	return FUNC7(lmu->dev, 0, data->cells,
				    data->num_cells, NULL, 0, NULL);
}