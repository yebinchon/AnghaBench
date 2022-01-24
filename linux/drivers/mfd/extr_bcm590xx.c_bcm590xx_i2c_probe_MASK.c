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
struct i2c_device_id {int dummy; } ;
struct i2c_client {int addr; int /*<<< orphan*/  dev; int /*<<< orphan*/  adapter; } ;
struct bcm590xx {struct i2c_client* i2c_sec; struct i2c_client* regmap_sec; struct i2c_client* regmap_pri; struct i2c_client* i2c_pri; int /*<<< orphan*/ * dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC2 (struct i2c_client*) ; 
 int FUNC3 (struct i2c_client*) ; 
 int /*<<< orphan*/  bcm590xx_devs ; 
 int /*<<< orphan*/  bcm590xx_regmap_config_pri ; 
 int /*<<< orphan*/  bcm590xx_regmap_config_sec ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 struct bcm590xx* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC7 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 struct i2c_client* FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_client*,struct bcm590xx*) ; 
 int /*<<< orphan*/  FUNC10 (struct i2c_client*) ; 

__attribute__((used)) static int FUNC11(struct i2c_client *i2c_pri,
			      const struct i2c_device_id *id)
{
	struct bcm590xx *bcm590xx;
	int ret;

	bcm590xx = FUNC5(&i2c_pri->dev, sizeof(*bcm590xx), GFP_KERNEL);
	if (!bcm590xx)
		return -ENOMEM;

	FUNC9(i2c_pri, bcm590xx);
	bcm590xx->dev = &i2c_pri->dev;
	bcm590xx->i2c_pri = i2c_pri;

	bcm590xx->regmap_pri = FUNC7(i2c_pri,
						 &bcm590xx_regmap_config_pri);
	if (FUNC2(bcm590xx->regmap_pri)) {
		ret = FUNC3(bcm590xx->regmap_pri);
		FUNC4(&i2c_pri->dev, "primary regmap init failed: %d\n", ret);
		return ret;
	}

	/* Secondary I2C slave address is the base address with A(2) asserted */
	bcm590xx->i2c_sec = FUNC8(i2c_pri->adapter,
					  i2c_pri->addr | FUNC1(2));
	if (FUNC2(bcm590xx->i2c_sec)) {
		FUNC4(&i2c_pri->dev, "failed to add secondary I2C device\n");
		return FUNC3(bcm590xx->i2c_sec);
	}
	FUNC9(bcm590xx->i2c_sec, bcm590xx);

	bcm590xx->regmap_sec = FUNC7(bcm590xx->i2c_sec,
						&bcm590xx_regmap_config_sec);
	if (FUNC2(bcm590xx->regmap_sec)) {
		ret = FUNC3(bcm590xx->regmap_sec);
		FUNC4(&bcm590xx->i2c_sec->dev,
			"secondary regmap init failed: %d\n", ret);
		goto err;
	}

	ret = FUNC6(&i2c_pri->dev, -1, bcm590xx_devs,
				   FUNC0(bcm590xx_devs), NULL, 0, NULL);
	if (ret < 0) {
		FUNC4(&i2c_pri->dev, "failed to add sub-devices: %d\n", ret);
		goto err;
	}

	return 0;

err:
	FUNC10(bcm590xx->i2c_sec);
	return ret;
}