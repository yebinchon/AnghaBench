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
struct max77693_dev {struct i2c_client* i2c_muic; struct i2c_client* i2c_haptic; int /*<<< orphan*/  irq_data_led; int /*<<< orphan*/  irq; int /*<<< orphan*/  irq_data_topsys; int /*<<< orphan*/  irq_data_chg; int /*<<< orphan*/  irq_data_muic; int /*<<< orphan*/ * dev; struct i2c_client* regmap; struct i2c_client* regmap_muic; struct i2c_client* regmap_haptic; int /*<<< orphan*/  type; struct i2c_client* i2c; } ;
struct i2c_device_id {int /*<<< orphan*/  driver_data; } ;
struct i2c_client {int /*<<< orphan*/  adapter; int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_ADDR_HAPTIC ; 
 int /*<<< orphan*/  I2C_ADDR_MUIC ; 
 int IRQF_ONESHOT ; 
 int IRQF_SHARED ; 
 int IRQF_TRIGGER_FALLING ; 
 scalar_t__ FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  MAX77693_PMIC_REG_INTSRC_MASK ; 
 int /*<<< orphan*/  MAX77693_PMIC_REG_PMIC_ID2 ; 
 int FUNC2 (struct i2c_client*) ; 
 scalar_t__ SRC_IRQ_ALL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,unsigned int) ; 
 struct max77693_dev* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 void* FUNC6 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 void* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*,struct max77693_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_client*) ; 
 int /*<<< orphan*/  max77693_charger_irq_chip ; 
 int /*<<< orphan*/  max77693_devs ; 
 int /*<<< orphan*/  max77693_led_irq_chip ; 
 int /*<<< orphan*/  max77693_muic_irq_chip ; 
 int /*<<< orphan*/  max77693_regmap_config ; 
 int /*<<< orphan*/  max77693_regmap_haptic_config ; 
 int /*<<< orphan*/  max77693_regmap_muic_config ; 
 int /*<<< orphan*/  max77693_topsys_irq_chip ; 
 int FUNC10 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (struct i2c_client*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct i2c_client*,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC16 (struct i2c_client*,int /*<<< orphan*/ ,scalar_t__,unsigned int) ; 

__attribute__((used)) static int FUNC17(struct i2c_client *i2c,
			      const struct i2c_device_id *id)
{
	struct max77693_dev *max77693;
	unsigned int reg_data;
	int ret = 0;

	max77693 = FUNC5(&i2c->dev,
			sizeof(struct max77693_dev), GFP_KERNEL);
	if (max77693 == NULL)
		return -ENOMEM;

	FUNC8(i2c, max77693);
	max77693->dev = &i2c->dev;
	max77693->i2c = i2c;
	max77693->irq = i2c->irq;
	max77693->type = id->driver_data;

	max77693->regmap = FUNC6(i2c, &max77693_regmap_config);
	if (FUNC1(max77693->regmap)) {
		ret = FUNC2(max77693->regmap);
		FUNC3(max77693->dev, "failed to allocate register map: %d\n",
				ret);
		return ret;
	}

	ret = FUNC15(max77693->regmap, MAX77693_PMIC_REG_PMIC_ID2,
				&reg_data);
	if (ret < 0) {
		FUNC3(max77693->dev, "device not found on this channel\n");
		return ret;
	} else
		FUNC4(max77693->dev, "device ID: 0x%x\n", reg_data);

	max77693->i2c_muic = FUNC7(i2c->adapter, I2C_ADDR_MUIC);
	if (FUNC1(max77693->i2c_muic)) {
		FUNC3(max77693->dev, "Failed to allocate I2C device for MUIC\n");
		return FUNC2(max77693->i2c_muic);
	}
	FUNC8(max77693->i2c_muic, max77693);

	max77693->i2c_haptic = FUNC7(i2c->adapter, I2C_ADDR_HAPTIC);
	if (FUNC1(max77693->i2c_haptic)) {
		FUNC3(max77693->dev, "Failed to allocate I2C device for Haptic\n");
		ret = FUNC2(max77693->i2c_haptic);
		goto err_i2c_haptic;
	}
	FUNC8(max77693->i2c_haptic, max77693);

	max77693->regmap_haptic = FUNC6(max77693->i2c_haptic,
					&max77693_regmap_haptic_config);
	if (FUNC1(max77693->regmap_haptic)) {
		ret = FUNC2(max77693->regmap_haptic);
		FUNC3(max77693->dev,
			"failed to initialize haptic register map: %d\n", ret);
		goto err_regmap;
	}

	/*
	 * Initialize register map for MUIC device because use regmap-muic
	 * instance of MUIC device when irq of max77693 is initialized
	 * before call max77693-muic probe() function.
	 */
	max77693->regmap_muic = FUNC6(max77693->i2c_muic,
					 &max77693_regmap_muic_config);
	if (FUNC1(max77693->regmap_muic)) {
		ret = FUNC2(max77693->regmap_muic);
		FUNC3(max77693->dev,
			"failed to allocate register map: %d\n", ret);
		goto err_regmap;
	}

	ret = FUNC13(max77693->regmap, max77693->irq,
				IRQF_ONESHOT | IRQF_SHARED |
				IRQF_TRIGGER_FALLING, 0,
				&max77693_led_irq_chip,
				&max77693->irq_data_led);
	if (ret) {
		FUNC3(max77693->dev, "failed to add irq chip: %d\n", ret);
		goto err_regmap;
	}

	ret = FUNC13(max77693->regmap, max77693->irq,
				IRQF_ONESHOT | IRQF_SHARED |
				IRQF_TRIGGER_FALLING, 0,
				&max77693_topsys_irq_chip,
				&max77693->irq_data_topsys);
	if (ret) {
		FUNC3(max77693->dev, "failed to add irq chip: %d\n", ret);
		goto err_irq_topsys;
	}

	ret = FUNC13(max77693->regmap, max77693->irq,
				IRQF_ONESHOT | IRQF_SHARED |
				IRQF_TRIGGER_FALLING, 0,
				&max77693_charger_irq_chip,
				&max77693->irq_data_chg);
	if (ret) {
		FUNC3(max77693->dev, "failed to add irq chip: %d\n", ret);
		goto err_irq_charger;
	}

	ret = FUNC13(max77693->regmap_muic, max77693->irq,
				IRQF_ONESHOT | IRQF_SHARED |
				IRQF_TRIGGER_FALLING, 0,
				&max77693_muic_irq_chip,
				&max77693->irq_data_muic);
	if (ret) {
		FUNC3(max77693->dev, "failed to add irq chip: %d\n", ret);
		goto err_irq_muic;
	}

	/* Unmask interrupts from all blocks in interrupt source register */
	ret = FUNC16(max77693->regmap,
				MAX77693_PMIC_REG_INTSRC_MASK,
				SRC_IRQ_ALL, (unsigned int)~SRC_IRQ_ALL);
	if (ret < 0) {
		FUNC3(max77693->dev,
			"Could not unmask interrupts in INTSRC: %d\n",
			ret);
		goto err_intsrc;
	}

	FUNC12(max77693->dev);

	ret = FUNC10(max77693->dev, -1, max77693_devs,
			      FUNC0(max77693_devs), NULL, 0, NULL);
	if (ret < 0)
		goto err_mfd;

	return ret;

err_mfd:
	FUNC11(max77693->dev);
err_intsrc:
	FUNC14(max77693->irq, max77693->irq_data_muic);
err_irq_muic:
	FUNC14(max77693->irq, max77693->irq_data_chg);
err_irq_charger:
	FUNC14(max77693->irq, max77693->irq_data_topsys);
err_irq_topsys:
	FUNC14(max77693->irq, max77693->irq_data_led);
err_regmap:
	FUNC9(max77693->i2c_haptic);
err_i2c_haptic:
	FUNC9(max77693->i2c_muic);
	return ret;
}