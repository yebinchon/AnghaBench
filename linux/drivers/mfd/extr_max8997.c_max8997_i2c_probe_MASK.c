#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ of_node; } ;
struct max8997_platform_data {int /*<<< orphan*/  adapter; int /*<<< orphan*/  ono; int /*<<< orphan*/  irq; TYPE_1__ dev; } ;
struct max8997_dev {struct max8997_platform_data* rtc; struct max8997_platform_data* haptic; struct max8997_platform_data* muic; TYPE_1__* dev; int /*<<< orphan*/  iolock; int /*<<< orphan*/  ono; struct max8997_platform_data* pdata; int /*<<< orphan*/  irq; int /*<<< orphan*/  type; struct max8997_platform_data* i2c; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  adapter; int /*<<< orphan*/  ono; int /*<<< orphan*/  irq; TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CONFIG_OF ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_ADDR_HAPTIC ; 
 int /*<<< orphan*/  I2C_ADDR_MUIC ; 
 int /*<<< orphan*/  I2C_ADDR_RTC ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct max8997_platform_data*) ; 
 int FUNC3 (struct max8997_platform_data*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,...) ; 
 struct max8997_platform_data* FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 struct max8997_dev* FUNC7 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 void* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct max8997_platform_data*,struct max8997_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct max8997_platform_data*) ; 
 int /*<<< orphan*/  max8997_devs ; 
 int /*<<< orphan*/  FUNC11 (struct max8997_platform_data*,struct i2c_device_id const*) ; 
 struct max8997_platform_data* FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (struct max8997_dev*) ; 
 int FUNC14 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC18(struct i2c_client *i2c,
			    const struct i2c_device_id *id)
{
	struct max8997_dev *max8997;
	struct max8997_platform_data *pdata = FUNC5(&i2c->dev);
	int ret = 0;

	max8997 = FUNC7(&i2c->dev, sizeof(struct max8997_dev),
				GFP_KERNEL);
	if (max8997 == NULL)
		return -ENOMEM;

	FUNC9(i2c, max8997);
	max8997->dev = &i2c->dev;
	max8997->i2c = i2c;
	max8997->type = FUNC11(i2c, id);
	max8997->irq = i2c->irq;

	if (FUNC1(CONFIG_OF) && max8997->dev->of_node) {
		pdata = FUNC12(max8997->dev);
		if (FUNC2(pdata))
			return FUNC3(pdata);
	}

	if (!pdata)
		return ret;

	max8997->pdata = pdata;
	max8997->ono = pdata->ono;

	FUNC16(&max8997->iolock);

	max8997->rtc = FUNC8(i2c->adapter, I2C_ADDR_RTC);
	if (FUNC2(max8997->rtc)) {
		FUNC4(max8997->dev, "Failed to allocate I2C device for RTC\n");
		return FUNC3(max8997->rtc);
	}
	FUNC9(max8997->rtc, max8997);

	max8997->haptic = FUNC8(i2c->adapter, I2C_ADDR_HAPTIC);
	if (FUNC2(max8997->haptic)) {
		FUNC4(max8997->dev, "Failed to allocate I2C device for Haptic\n");
		ret = FUNC3(max8997->haptic);
		goto err_i2c_haptic;
	}
	FUNC9(max8997->haptic, max8997);

	max8997->muic = FUNC8(i2c->adapter, I2C_ADDR_MUIC);
	if (FUNC2(max8997->muic)) {
		FUNC4(max8997->dev, "Failed to allocate I2C device for MUIC\n");
		ret = FUNC3(max8997->muic);
		goto err_i2c_muic;
	}
	FUNC9(max8997->muic, max8997);

	FUNC17(max8997->dev);

	FUNC13(max8997);

	ret = FUNC14(max8997->dev, -1, max8997_devs,
			FUNC0(max8997_devs),
			NULL, 0, NULL);
	if (ret < 0) {
		FUNC4(max8997->dev, "failed to add MFD devices %d\n", ret);
		goto err_mfd;
	}

	/*
	 * TODO: enable others (flash, muic, rtc, battery, ...) and
	 * check the return value
	 */

	/* MAX8997 has a power button input. */
	FUNC6(max8997->dev, true);

	return ret;

err_mfd:
	FUNC15(max8997->dev);
	FUNC10(max8997->muic);
err_i2c_muic:
	FUNC10(max8997->haptic);
err_i2c_haptic:
	FUNC10(max8997->rtc);
	return ret;
}