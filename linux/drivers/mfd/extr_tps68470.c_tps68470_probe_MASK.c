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
struct device {int dummy; } ;
struct i2c_client {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct regmap*) ; 
 int /*<<< orphan*/  PLATFORM_DEVID_NONE ; 
 int FUNC2 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int) ; 
 int FUNC4 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct regmap* FUNC5 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,struct regmap*) ; 
 int FUNC7 (struct device*,struct regmap*) ; 
 int /*<<< orphan*/  tps68470_regmap_config ; 
 int /*<<< orphan*/  tps68470s ; 

__attribute__((used)) static int FUNC8(struct i2c_client *client)
{
	struct device *dev = &client->dev;
	struct regmap *regmap;
	int ret;

	regmap = FUNC5(client, &tps68470_regmap_config);
	if (FUNC1(regmap)) {
		FUNC3(dev, "devm_regmap_init_i2c Error %ld\n",
			FUNC2(regmap));
		return FUNC2(regmap);
	}

	FUNC6(client, regmap);

	ret = FUNC7(dev, regmap);
	if (ret < 0) {
		FUNC3(dev, "TPS68470 Init Error %d\n", ret);
		return ret;
	}

	ret = FUNC4(dev, PLATFORM_DEVID_NONE, tps68470s,
			      FUNC0(tps68470s), NULL, 0, NULL);
	if (ret < 0) {
		FUNC3(dev, "devm_mfd_add_devices failed: %d\n", ret);
		return ret;
	}

	return 0;
}