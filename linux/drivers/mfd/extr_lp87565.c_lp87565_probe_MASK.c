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
struct of_device_id {scalar_t__ data; } ;
struct lp87565 {unsigned int rev; int dev_type; int /*<<< orphan*/ * dev; int /*<<< orphan*/  regmap; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
typedef  enum lp87565_device_type { ____Placeholder_lp87565_device_type } lp87565_device_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int LP87565_OTP_REV_OTP_ID ; 
 int /*<<< orphan*/  LP87565_REG_OTP_REV ; 
 int /*<<< orphan*/  PLATFORM_DEVID_AUTO ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 struct lp87565* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,struct lp87565*) ; 
 int /*<<< orphan*/  lp87565_cells ; 
 int /*<<< orphan*/  lp87565_regmap_config ; 
 int /*<<< orphan*/  of_lp87565_match_table ; 
 struct of_device_id* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static int FUNC10(struct i2c_client *client,
			 const struct i2c_device_id *ids)
{
	struct lp87565 *lp87565;
	const struct of_device_id *of_id;
	int ret;
	unsigned int otpid;

	lp87565 = FUNC4(&client->dev, sizeof(*lp87565), GFP_KERNEL);
	if (!lp87565)
		return -ENOMEM;

	lp87565->dev = &client->dev;

	lp87565->regmap = FUNC6(client, &lp87565_regmap_config);
	if (FUNC1(lp87565->regmap)) {
		ret = FUNC2(lp87565->regmap);
		FUNC3(lp87565->dev,
			"Failed to initialize register map: %d\n", ret);
		return ret;
	}

	ret = FUNC9(lp87565->regmap, LP87565_REG_OTP_REV, &otpid);
	if (ret) {
		FUNC3(lp87565->dev, "Failed to read OTP ID\n");
		return ret;
	}

	lp87565->rev = otpid & LP87565_OTP_REV_OTP_ID;

	of_id = FUNC8(of_lp87565_match_table, &client->dev);
	if (of_id)
		lp87565->dev_type = (enum lp87565_device_type)of_id->data;

	FUNC7(client, lp87565);

	return FUNC5(lp87565->dev, PLATFORM_DEVID_AUTO,
				    lp87565_cells, FUNC0(lp87565_cells),
				    NULL, 0, NULL);
}