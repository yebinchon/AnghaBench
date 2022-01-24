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
struct rt5033_dev {int wakeup; int /*<<< orphan*/ * dev; int /*<<< orphan*/  irq_data; int /*<<< orphan*/  irq; int /*<<< orphan*/  regmap; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_FALLING ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RT5033_REG_DEVICE_ID ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 struct rt5033_dev* FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_client*,struct rt5033_dev*) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  rt5033_devs ; 
 int /*<<< orphan*/  rt5033_irq_chip ; 
 int /*<<< orphan*/  rt5033_regmap_config ; 

__attribute__((used)) static int FUNC13(struct i2c_client *i2c,
				const struct i2c_device_id *id)
{
	struct rt5033_dev *rt5033;
	unsigned int dev_id;
	int ret;

	rt5033 = FUNC6(&i2c->dev, sizeof(*rt5033), GFP_KERNEL);
	if (!rt5033)
		return -ENOMEM;

	FUNC9(i2c, rt5033);
	rt5033->dev = &i2c->dev;
	rt5033->irq = i2c->irq;
	rt5033->wakeup = true;

	rt5033->regmap = FUNC8(i2c, &rt5033_regmap_config);
	if (FUNC1(rt5033->regmap)) {
		FUNC3(&i2c->dev, "Failed to allocate register map.\n");
		return FUNC2(rt5033->regmap);
	}

	ret = FUNC12(rt5033->regmap, RT5033_REG_DEVICE_ID, &dev_id);
	if (ret) {
		FUNC3(&i2c->dev, "Device not found\n");
		return -ENODEV;
	}
	FUNC4(&i2c->dev, "Device found Device ID: %04x\n", dev_id);

	ret = FUNC10(rt5033->regmap, rt5033->irq,
			IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
			0, &rt5033_irq_chip, &rt5033->irq_data);
	if (ret) {
		FUNC3(&i2c->dev, "Failed to request IRQ %d: %d\n",
							rt5033->irq, ret);
		return ret;
	}

	ret = FUNC7(rt5033->dev, -1, rt5033_devs,
				   FUNC0(rt5033_devs), NULL, 0,
				   FUNC11(rt5033->irq_data));
	if (ret < 0) {
		FUNC3(&i2c->dev, "Failed to add RT5033 child devices.\n");
		return ret;
	}

	FUNC5(rt5033->dev, rt5033->wakeup);

	return 0;
}