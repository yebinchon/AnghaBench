#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct max8925_platform_data {scalar_t__ touch; scalar_t__ backlight; scalar_t__ power; } ;
struct max8925_chip {int /*<<< orphan*/  dev; int /*<<< orphan*/  tsc_irq; int /*<<< orphan*/  irq_base; TYPE_6__* rtc; TYPE_6__* adc; TYPE_6__* i2c; } ;
struct max8925_backlight_pdata {int dummy; } ;
struct TYPE_11__ {int /*<<< orphan*/  irq; } ;
struct TYPE_10__ {int pdata_size; scalar_t__* platform_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  MAX8925_ADC_SCHED ; 
 int /*<<< orphan*/  MAX8925_MPL_CNTL ; 
 int MAX8925_NREF_OK ; 
 int /*<<< orphan*/  MAX8925_RESET_CNFG ; 
 int /*<<< orphan*/  MAX8925_TSC_CNFG1 ; 
 int /*<<< orphan*/  MAX8925_TSC_IRQ ; 
 TYPE_1__* bk_devs ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct max8925_chip*,struct max8925_platform_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct max8925_chip*,int /*<<< orphan*/ ,struct max8925_platform_data*) ; 
 int FUNC4 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_1__* onkey_devs ; 
 TYPE_1__* power_devs ; 
 TYPE_1__* rtc_devs ; 
 TYPE_1__* touch_devs ; 

int FUNC8(struct max8925_chip *chip,
				  struct max8925_platform_data *pdata)
{
	int ret;

	FUNC3(chip, chip->i2c->irq, pdata);

	if (pdata && (pdata->power || pdata->touch)) {
		/* enable ADC to control internal reference */
		FUNC5(chip->i2c, MAX8925_RESET_CNFG, 1, 1);
		/* enable internal reference for ADC */
		FUNC5(chip->adc, MAX8925_TSC_CNFG1, 3, 2);
		/* check for internal reference IRQ */
		do {
			ret = FUNC4(chip->adc, MAX8925_TSC_IRQ);
		} while (ret & MAX8925_NREF_OK);
		/* enaable ADC scheduler, interval is 1 second */
		FUNC5(chip->adc, MAX8925_ADC_SCHED, 3, 2);
	}

	/* enable Momentary Power Loss */
	FUNC5(chip->rtc, MAX8925_MPL_CNTL, 1 << 4, 1 << 4);

	ret = FUNC6(chip->dev, 0, &rtc_devs[0],
			      FUNC0(rtc_devs),
			      NULL, chip->irq_base, NULL);
	if (ret < 0) {
		FUNC1(chip->dev, "Failed to add rtc subdev\n");
		goto out;
	}

	ret = FUNC6(chip->dev, 0, &onkey_devs[0],
			      FUNC0(onkey_devs),
			      NULL, chip->irq_base, NULL);
	if (ret < 0) {
		FUNC1(chip->dev, "Failed to add onkey subdev\n");
		goto out_dev;
	}

	FUNC2(chip, pdata);

	if (pdata && pdata->backlight) {
		bk_devs[0].platform_data = &pdata->backlight;
		bk_devs[0].pdata_size = sizeof(struct max8925_backlight_pdata);
	}
	ret = FUNC6(chip->dev, 0, bk_devs, FUNC0(bk_devs),
			      NULL, 0, NULL);
	if (ret < 0) {
		FUNC1(chip->dev, "Failed to add backlight subdev\n");
		goto out_dev;
	}

	ret = FUNC6(chip->dev, 0, &power_devs[0],
			      FUNC0(power_devs),
			      NULL, 0, NULL);
	if (ret < 0) {
		FUNC1(chip->dev,
			"Failed to add power supply subdev, err = %d\n", ret);
		goto out_dev;
	}

	if (pdata && pdata->touch) {
		ret = FUNC6(chip->dev, 0, &touch_devs[0],
				      FUNC0(touch_devs),
				      NULL, chip->tsc_irq, NULL);
		if (ret < 0) {
			FUNC1(chip->dev, "Failed to add touch subdev\n");
			goto out_dev;
		}
	}

	return 0;
out_dev:
	FUNC7(chip->dev);
out:
	return ret;
}