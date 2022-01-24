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
struct regmap {int dummy; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct regmap*) ; 
 int /*<<< orphan*/  PLATFORM_DEVID_NONE ; 
 int FUNC2 (struct regmap*) ; 
 int /*<<< orphan*/  act8945a_devs ; 
 int /*<<< orphan*/  act8945a_regmap_config ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct regmap* FUNC5 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,struct regmap*) ; 

__attribute__((used)) static int FUNC7(struct i2c_client *i2c,
			      const struct i2c_device_id *id)
{
	int ret;
	struct regmap *regmap;

	regmap = FUNC5(i2c, &act8945a_regmap_config);
	if (FUNC1(regmap)) {
		ret = FUNC2(regmap);
		FUNC3(&i2c->dev, "regmap init failed: %d\n", ret);
		return ret;
	}

	FUNC6(i2c, regmap);

	ret = FUNC4(&i2c->dev, PLATFORM_DEVID_NONE,
				   act8945a_devs, FUNC0(act8945a_devs),
				   NULL, 0, NULL);
	if (ret) {
		FUNC3(&i2c->dev, "Failed to add sub devices\n");
		return ret;
	}

	return 0;
}