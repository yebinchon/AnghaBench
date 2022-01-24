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
struct rc5t583_platform_data {int /*<<< orphan*/  irq_base; } ;
struct rc5t583 {int /*<<< orphan*/ * dev; int /*<<< orphan*/  regmap; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 struct rc5t583_platform_data* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 struct rc5t583* FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_client*,struct rc5t583*) ; 
 int FUNC10 (struct rc5t583*,struct rc5t583_platform_data*) ; 
 int FUNC11 (struct rc5t583*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rc5t583_regmap_config ; 
 int /*<<< orphan*/  rc5t583_subdevs ; 

__attribute__((used)) static int FUNC12(struct i2c_client *i2c,
			      const struct i2c_device_id *id)
{
	struct rc5t583 *rc5t583;
	struct rc5t583_platform_data *pdata = FUNC4(&i2c->dev);
	int ret;

	if (!pdata) {
		FUNC3(&i2c->dev, "Err: Platform data not found\n");
		return -EINVAL;
	}

	rc5t583 = FUNC6(&i2c->dev, sizeof(*rc5t583), GFP_KERNEL);
	if (!rc5t583)
		return -ENOMEM;

	rc5t583->dev = &i2c->dev;
	FUNC9(i2c, rc5t583);

	rc5t583->regmap = FUNC8(i2c, &rc5t583_regmap_config);
	if (FUNC1(rc5t583->regmap)) {
		ret = FUNC2(rc5t583->regmap);
		FUNC3(&i2c->dev, "regmap initialization failed: %d\n", ret);
		return ret;
	}

	ret = FUNC10(rc5t583, pdata);
	if (ret < 0)
		return ret;

	if (i2c->irq) {
		ret = FUNC11(rc5t583, i2c->irq, pdata->irq_base);
		/* Still continue with warning, if irq init fails */
		if (ret)
			FUNC5(&i2c->dev, "IRQ init failed: %d\n", ret);
	}

	ret = FUNC7(rc5t583->dev, -1, rc5t583_subdevs,
				   FUNC0(rc5t583_subdevs), NULL, 0, NULL);
	if (ret) {
		FUNC3(&i2c->dev, "add mfd devices failed: %d\n", ret);
		return ret;
	}

	return 0;
}