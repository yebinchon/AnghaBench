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
struct regmap_irq_chip {int dummy; } ;
struct regmap_config {int dummy; } ;
struct mfd_cell {int dummy; } ;
struct max77686_dev {unsigned long type; int /*<<< orphan*/ * dev; int /*<<< orphan*/  irq_data; int /*<<< orphan*/  irq; int /*<<< orphan*/  regmap; struct i2c_client* i2c; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int FUNC0 (struct mfd_cell*) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IRQF_ONESHOT ; 
 int IRQF_SHARED ; 
 int IRQF_TRIGGER_FALLING ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX77686_REG_DEVICE_ID ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned long TYPE_MAX77686 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 struct max77686_dev* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,struct mfd_cell const*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct regmap_irq_chip const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,struct regmap_config const*) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*,struct max77686_dev*) ; 
 struct mfd_cell* max77686_devs ; 
 struct regmap_irq_chip max77686_irq_chip ; 
 struct regmap_config max77686_regmap_config ; 
 struct mfd_cell* max77802_devs ; 
 struct regmap_irq_chip max77802_irq_chip ; 
 struct regmap_config max77802_regmap_config ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static int FUNC11(struct i2c_client *i2c)
{
	struct max77686_dev *max77686 = NULL;
	unsigned int data;
	int ret = 0;
	const struct regmap_config *config;
	const struct regmap_irq_chip *irq_chip;
	const struct mfd_cell *cells;
	int n_devs;

	max77686 = FUNC4(&i2c->dev,
				sizeof(struct max77686_dev), GFP_KERNEL);
	if (!max77686)
		return -ENOMEM;

	FUNC8(i2c, max77686);
	max77686->type = (unsigned long)FUNC9(&i2c->dev);
	max77686->dev = &i2c->dev;
	max77686->i2c = i2c;

	max77686->irq = i2c->irq;

	if (max77686->type == TYPE_MAX77686) {
		config = &max77686_regmap_config;
		irq_chip = &max77686_irq_chip;
		cells =  max77686_devs;
		n_devs = FUNC0(max77686_devs);
	} else {
		config = &max77802_regmap_config;
		irq_chip = &max77802_irq_chip;
		cells =  max77802_devs;
		n_devs = FUNC0(max77802_devs);
	}

	max77686->regmap = FUNC7(i2c, config);
	if (FUNC1(max77686->regmap)) {
		ret = FUNC2(max77686->regmap);
		FUNC3(max77686->dev, "Failed to allocate register map: %d\n",
				ret);
		return ret;
	}

	ret = FUNC10(max77686->regmap, MAX77686_REG_DEVICE_ID, &data);
	if (ret < 0) {
		FUNC3(max77686->dev,
			"device not found on this channel (this is not an error)\n");
		return -ENODEV;
	}

	ret = FUNC6(&i2c->dev, max77686->regmap,
				       max77686->irq,
				       IRQF_TRIGGER_FALLING | IRQF_ONESHOT |
				       IRQF_SHARED, 0, irq_chip,
				       &max77686->irq_data);
	if (ret < 0) {
		FUNC3(&i2c->dev, "failed to add PMIC irq chip: %d\n", ret);
		return ret;
	}

	ret = FUNC5(max77686->dev, -1, cells, n_devs, NULL,
				   0, NULL);
	if (ret < 0) {
		FUNC3(&i2c->dev, "failed to add MFD devices: %d\n", ret);
		return ret;
	}

	return 0;
}