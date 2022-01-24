#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct max8907_platform_data {int pm_off; } ;
struct max8907 {struct i2c_client* i2c_rtc; int /*<<< orphan*/  irqc_chg; struct i2c_client* i2c_gen; int /*<<< orphan*/  irqc_on_off; int /*<<< orphan*/  irqc_rtc; TYPE_1__* dev; struct i2c_client* regmap_rtc; struct i2c_client* regmap_gen; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_6__ {scalar_t__ of_node; } ;
struct i2c_client {int /*<<< orphan*/  irq; TYPE_1__ dev; int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IRQF_ONESHOT ; 
 int IRQF_SHARED ; 
 int /*<<< orphan*/  IRQ_NOAUTOEN ; 
 scalar_t__ FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  MAX8907_RTC_I2C_ADDR ; 
 int FUNC2 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int) ; 
 struct max8907_platform_data* FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,struct max8907*) ; 
 struct max8907* FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 void* FUNC7 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct i2c_client* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct i2c_client*,struct max8907*) ; 
 int /*<<< orphan*/  FUNC11 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  max8907_cells ; 
 int /*<<< orphan*/  max8907_chg_irq_chip ; 
 int /*<<< orphan*/  max8907_on_off_irq_chip ; 
 struct max8907* max8907_pm_off ; 
 scalar_t__ max8907_power_off ; 
 int /*<<< orphan*/  max8907_regmap_gen_config ; 
 int /*<<< orphan*/  max8907_regmap_rtc_config ; 
 int /*<<< orphan*/  max8907_rtc_irq_chip ; 
 int FUNC13 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC14 (scalar_t__,char*) ; 
 scalar_t__ pm_power_off ; 
 int FUNC15 (struct i2c_client*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(struct i2c_client *i2c,
				       const struct i2c_device_id *id)
{
	struct max8907 *max8907;
	int ret;
	struct max8907_platform_data *pdata = FUNC4(&i2c->dev);
	bool pm_off = false;

	if (pdata)
		pm_off = pdata->pm_off;
	else if (i2c->dev.of_node)
		pm_off = FUNC14(i2c->dev.of_node,
					"maxim,system-power-controller");

	max8907 = FUNC6(&i2c->dev, sizeof(struct max8907), GFP_KERNEL);
	if (!max8907) {
		ret = -ENOMEM;
		goto err_alloc_drvdata;
	}

	max8907->dev = &i2c->dev;
	FUNC5(max8907->dev, max8907);

	max8907->i2c_gen = i2c;
	FUNC10(i2c, max8907);
	max8907->regmap_gen = FUNC7(i2c,
						&max8907_regmap_gen_config);
	if (FUNC1(max8907->regmap_gen)) {
		ret = FUNC2(max8907->regmap_gen);
		FUNC3(&i2c->dev, "gen regmap init failed: %d\n", ret);
		goto err_regmap_gen;
	}

	max8907->i2c_rtc = FUNC9(i2c->adapter, MAX8907_RTC_I2C_ADDR);
	if (FUNC1(max8907->i2c_rtc)) {
		ret = FUNC2(max8907->i2c_rtc);
		goto err_dummy_rtc;
	}
	FUNC10(max8907->i2c_rtc, max8907);
	max8907->regmap_rtc = FUNC7(max8907->i2c_rtc,
						&max8907_regmap_rtc_config);
	if (FUNC1(max8907->regmap_rtc)) {
		ret = FUNC2(max8907->regmap_rtc);
		FUNC3(&i2c->dev, "rtc regmap init failed: %d\n", ret);
		goto err_regmap_rtc;
	}

	FUNC12(max8907->i2c_gen->irq, IRQ_NOAUTOEN);

	ret = FUNC15(max8907->regmap_gen, max8907->i2c_gen->irq,
				  IRQF_ONESHOT | IRQF_SHARED, -1,
				  &max8907_chg_irq_chip,
				  &max8907->irqc_chg);
	if (ret != 0) {
		FUNC3(&i2c->dev, "failed to add chg irq chip: %d\n", ret);
		goto err_irqc_chg;
	}
	ret = FUNC15(max8907->regmap_gen, max8907->i2c_gen->irq,
				  IRQF_ONESHOT | IRQF_SHARED, -1,
				  &max8907_on_off_irq_chip,
				  &max8907->irqc_on_off);
	if (ret != 0) {
		FUNC3(&i2c->dev, "failed to add on off irq chip: %d\n", ret);
		goto err_irqc_on_off;
	}
	ret = FUNC15(max8907->regmap_rtc, max8907->i2c_gen->irq,
				  IRQF_ONESHOT | IRQF_SHARED, -1,
				  &max8907_rtc_irq_chip,
				  &max8907->irqc_rtc);
	if (ret != 0) {
		FUNC3(&i2c->dev, "failed to add rtc irq chip: %d\n", ret);
		goto err_irqc_rtc;
	}

	FUNC8(max8907->i2c_gen->irq);

	ret = FUNC13(max8907->dev, -1, max8907_cells,
			      FUNC0(max8907_cells), NULL, 0, NULL);
	if (ret != 0) {
		FUNC3(&i2c->dev, "failed to add MFD devices %d\n", ret);
		goto err_add_devices;
	}

	if (pm_off && !pm_power_off) {
		max8907_pm_off = max8907;
		pm_power_off = max8907_power_off;
	}

	return 0;

err_add_devices:
	FUNC16(max8907->i2c_gen->irq, max8907->irqc_rtc);
err_irqc_rtc:
	FUNC16(max8907->i2c_gen->irq, max8907->irqc_on_off);
err_irqc_on_off:
	FUNC16(max8907->i2c_gen->irq, max8907->irqc_chg);
err_irqc_chg:
err_regmap_rtc:
	FUNC11(max8907->i2c_rtc);
err_dummy_rtc:
err_regmap_gen:
err_alloc_drvdata:
	return ret;
}