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
struct max8998_platform_data {TYPE_1__ dev; int /*<<< orphan*/  adapter; int /*<<< orphan*/  wakeup; int /*<<< orphan*/  irq_base; int /*<<< orphan*/  ono; int /*<<< orphan*/  irq; } ;
struct max8998_dev {int type; struct max8998_platform_data* rtc; TYPE_1__* dev; int /*<<< orphan*/  wakeup; int /*<<< orphan*/  iolock; int /*<<< orphan*/  irq_base; int /*<<< orphan*/  ono; struct max8998_platform_data* pdata; int /*<<< orphan*/  irq; struct max8998_platform_data* i2c; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {TYPE_1__ dev; int /*<<< orphan*/  adapter; int /*<<< orphan*/  wakeup; int /*<<< orphan*/  irq_base; int /*<<< orphan*/  ono; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CONFIG_OF ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct max8998_platform_data*) ; 
 int FUNC3 (struct max8998_platform_data*) ; 
 int /*<<< orphan*/  RTC_I2C_ADDR ; 
#define  TYPE_LP3974 129 
#define  TYPE_MAX8998 128 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 struct max8998_platform_data* FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 struct max8998_dev* FUNC7 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 struct max8998_platform_data* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct max8998_platform_data*,struct max8998_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct max8998_platform_data*) ; 
 int /*<<< orphan*/  lp3974_devs ; 
 int /*<<< orphan*/  max8998_devs ; 
 int FUNC11 (struct max8998_platform_data*,struct i2c_device_id const*) ; 
 struct max8998_platform_data* FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (struct max8998_dev*) ; 
 int /*<<< orphan*/  FUNC14 (struct max8998_dev*) ; 
 int FUNC15 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC19(struct i2c_client *i2c,
			    const struct i2c_device_id *id)
{
	struct max8998_platform_data *pdata = FUNC5(&i2c->dev);
	struct max8998_dev *max8998;
	int ret = 0;

	max8998 = FUNC7(&i2c->dev, sizeof(struct max8998_dev),
				GFP_KERNEL);
	if (max8998 == NULL)
		return -ENOMEM;

	if (FUNC1(CONFIG_OF) && i2c->dev.of_node) {
		pdata = FUNC12(&i2c->dev);
		if (FUNC2(pdata))
			return FUNC3(pdata);
	}

	FUNC9(i2c, max8998);
	max8998->dev = &i2c->dev;
	max8998->i2c = i2c;
	max8998->irq = i2c->irq;
	max8998->type = FUNC11(i2c, id);
	max8998->pdata = pdata;
	if (pdata) {
		max8998->ono = pdata->ono;
		max8998->irq_base = pdata->irq_base;
		max8998->wakeup = pdata->wakeup;
	}
	FUNC17(&max8998->iolock);

	max8998->rtc = FUNC8(i2c->adapter, RTC_I2C_ADDR);
	if (FUNC2(max8998->rtc)) {
		FUNC4(&i2c->dev, "Failed to allocate I2C device for RTC\n");
		return FUNC3(max8998->rtc);
	}
	FUNC9(max8998->rtc, max8998);

	FUNC14(max8998);

	FUNC18(max8998->dev);

	switch (max8998->type) {
	case TYPE_LP3974:
		ret = FUNC15(max8998->dev, -1,
				      lp3974_devs, FUNC0(lp3974_devs),
				      NULL, 0, NULL);
		break;
	case TYPE_MAX8998:
		ret = FUNC15(max8998->dev, -1,
				      max8998_devs, FUNC0(max8998_devs),
				      NULL, 0, NULL);
		break;
	default:
		ret = -EINVAL;
	}

	if (ret < 0)
		goto err;

	FUNC6(max8998->dev, max8998->wakeup);

	return ret;

err:
	FUNC16(max8998->dev);
	FUNC13(max8998);
	FUNC10(max8998->rtc);
	return ret;
}