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
struct lp873x {unsigned int rev; int /*<<< orphan*/ * dev; int /*<<< orphan*/  regmap; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int LP873X_OTP_REV_OTP_ID ; 
 int /*<<< orphan*/  LP873X_REG_OTP_REV ; 
 int /*<<< orphan*/  PLATFORM_DEVID_AUTO ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 struct lp873x* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,struct lp873x*) ; 
 int /*<<< orphan*/  lp873x_cells ; 
 int /*<<< orphan*/  lp873x_regmap_config ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static int FUNC9(struct i2c_client *client,
			const struct i2c_device_id *ids)
{
	struct lp873x *lp873;
	int ret;
	unsigned int otpid;

	lp873 = FUNC4(&client->dev, sizeof(*lp873), GFP_KERNEL);
	if (!lp873)
		return -ENOMEM;

	lp873->dev = &client->dev;

	lp873->regmap = FUNC5(client, &lp873x_regmap_config);
	if (FUNC1(lp873->regmap)) {
		ret = FUNC2(lp873->regmap);
		FUNC3(lp873->dev,
			"Failed to initialize register map: %d\n", ret);
		return ret;
	}

	ret = FUNC8(lp873->regmap, LP873X_REG_OTP_REV, &otpid);
	if (ret) {
		FUNC3(lp873->dev, "Failed to read OTP ID\n");
		return ret;
	}

	lp873->rev = otpid & LP873X_OTP_REV_OTP_ID;

	FUNC6(client, lp873);

	ret = FUNC7(lp873->dev, PLATFORM_DEVID_AUTO, lp873x_cells,
			      FUNC0(lp873x_cells), NULL, 0, NULL);

	return ret;
}