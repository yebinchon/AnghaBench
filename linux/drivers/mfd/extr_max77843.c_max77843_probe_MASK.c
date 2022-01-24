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
struct max77693_dev {int /*<<< orphan*/  irq_data_topsys; int /*<<< orphan*/  irq; int /*<<< orphan*/ * dev; int /*<<< orphan*/  regmap; int /*<<< orphan*/  type; struct i2c_client* i2c; } ;
struct i2c_device_id {int /*<<< orphan*/  driver_data; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IRQF_ONESHOT ; 
 int IRQF_SHARED ; 
 int IRQF_TRIGGER_LOW ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ MAX77843_INTSRC_MASK_MASK ; 
 int /*<<< orphan*/  MAX77843_SYS_REG_INTSRCMASK ; 
 int /*<<< orphan*/  MAX77843_SYS_REG_PMICID ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 struct max77693_dev* FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*,struct max77693_dev*) ; 
 int FUNC9 (struct max77693_dev*) ; 
 int /*<<< orphan*/  max77843_devs ; 
 int /*<<< orphan*/  max77843_irq_chip ; 
 int /*<<< orphan*/  max77843_regmap_config ; 
 int FUNC10 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,unsigned int) ; 

__attribute__((used)) static int FUNC15(struct i2c_client *i2c,
			  const struct i2c_device_id *id)
{
	struct max77693_dev *max77843;
	unsigned int reg_data;
	int ret;

	max77843 = FUNC6(&i2c->dev, sizeof(*max77843), GFP_KERNEL);
	if (!max77843)
		return -ENOMEM;

	FUNC8(i2c, max77843);
	max77843->dev = &i2c->dev;
	max77843->i2c = i2c;
	max77843->irq = i2c->irq;
	max77843->type = id->driver_data;

	max77843->regmap = FUNC7(i2c,
			&max77843_regmap_config);
	if (FUNC1(max77843->regmap)) {
		FUNC3(&i2c->dev, "Failed to allocate topsys register map\n");
		return FUNC2(max77843->regmap);
	}

	ret = FUNC11(max77843->regmap, max77843->irq,
			IRQF_TRIGGER_LOW | IRQF_ONESHOT | IRQF_SHARED,
			0, &max77843_irq_chip, &max77843->irq_data_topsys);
	if (ret) {
		FUNC3(&i2c->dev, "Failed to add TOPSYS IRQ chip\n");
		return ret;
	}

	ret = FUNC13(max77843->regmap,
			MAX77843_SYS_REG_PMICID, &reg_data);
	if (ret < 0) {
		FUNC3(&i2c->dev, "Failed to read PMIC ID\n");
		goto err_pmic_id;
	}
	FUNC4(&i2c->dev, "device ID: 0x%x\n", reg_data);

	ret = FUNC9(max77843);
	if (ret) {
		FUNC3(&i2c->dev, "Failed to init Charger\n");
		goto err_pmic_id;
	}

	ret = FUNC14(max77843->regmap,
				 MAX77843_SYS_REG_INTSRCMASK,
				 MAX77843_INTSRC_MASK_MASK,
				 (unsigned int)~MAX77843_INTSRC_MASK_MASK);
	if (ret < 0) {
		FUNC3(&i2c->dev, "Failed to unmask interrupt source\n");
		goto err_pmic_id;
	}

	ret = FUNC10(max77843->dev, -1, max77843_devs,
			      FUNC0(max77843_devs), NULL, 0, NULL);
	if (ret < 0) {
		FUNC3(&i2c->dev, "Failed to add mfd device\n");
		goto err_pmic_id;
	}

	FUNC5(max77843->dev, true);

	return 0;

err_pmic_id:
	FUNC12(max77843->irq, max77843->irq_data_topsys);

	return ret;
}