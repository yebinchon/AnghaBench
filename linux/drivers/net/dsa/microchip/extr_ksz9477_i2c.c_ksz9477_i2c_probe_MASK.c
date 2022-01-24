#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct regmap_config {int /*<<< orphan*/  val_bits; int /*<<< orphan*/ * lock_arg; } ;
struct ksz_device {scalar_t__ pdata; int /*<<< orphan*/ * regmap; int /*<<< orphan*/  regmap_mutex; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_3__ {scalar_t__ platform_data; } ;
struct i2c_client {TYPE_1__ dev; } ;

/* Variables and functions */
 int FUNC0 (struct regmap_config*) ; 
 int ENOMEM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,struct regmap_config*) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,struct ksz_device*) ; 
 struct regmap_config* ksz9477_regmap_config ; 
 int FUNC6 (struct ksz_device*) ; 
 struct ksz_device* FUNC7 (TYPE_1__*,struct i2c_client*) ; 

__attribute__((used)) static int FUNC8(struct i2c_client *i2c,
			     const struct i2c_device_id *i2c_id)
{
	struct regmap_config rc;
	struct ksz_device *dev;
	int i, ret;

	dev = FUNC7(&i2c->dev, i2c);
	if (!dev)
		return -ENOMEM;

	for (i = 0; i < FUNC0(ksz9477_regmap_config); i++) {
		rc = ksz9477_regmap_config[i];
		rc.lock_arg = &dev->regmap_mutex;
		dev->regmap[i] = FUNC4(i2c, &rc);
		if (FUNC1(dev->regmap[i])) {
			ret = FUNC2(dev->regmap[i]);
			FUNC3(&i2c->dev,
				"Failed to initialize regmap%i: %d\n",
				ksz9477_regmap_config[i].val_bits, ret);
			return ret;
		}
	}

	if (i2c->dev.platform_data)
		dev->pdata = i2c->dev.platform_data;

	ret = FUNC6(dev);

	/* Main DSA driver may not be started yet. */
	if (ret)
		return ret;

	FUNC5(i2c, dev);

	return 0;
}