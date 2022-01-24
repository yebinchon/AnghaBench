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
struct tps6105x_platform_data {int mode; } ;
struct tps6105x {struct tps6105x_platform_data* pdata; struct i2c_client* client; int /*<<< orphan*/  regmap; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
#define  TPS6105X_MODE_SHUTDOWN 131 
#define  TPS6105X_MODE_TORCH 130 
#define  TPS6105X_MODE_TORCH_FLASH 129 
#define  TPS6105X_MODE_VOLTAGE 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct tps6105x_platform_data* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 struct tps6105x* FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*,struct tps6105x*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (struct tps6105x*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tps6105x_flash_cell ; 
 int /*<<< orphan*/  tps6105x_gpio_cell ; 
 int /*<<< orphan*/  tps6105x_leds_cell ; 
 int /*<<< orphan*/  tps6105x_regmap_config ; 
 int /*<<< orphan*/  tps6105x_regulator_cell ; 
 int FUNC11 (struct tps6105x*) ; 

__attribute__((used)) static int FUNC12(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	struct tps6105x			*tps6105x;
	struct tps6105x_platform_data	*pdata;
	int ret;

	pdata = FUNC3(&client->dev);
	if (!pdata) {
		FUNC2(&client->dev, "missing platform data\n");
		return -ENODEV;
	}

	tps6105x = FUNC6(&client->dev, sizeof(*tps6105x), GFP_KERNEL);
	if (!tps6105x)
		return -ENOMEM;

	tps6105x->regmap = FUNC7(client, &tps6105x_regmap_config);
	if (FUNC0(tps6105x->regmap))
		return FUNC1(tps6105x->regmap);

	FUNC8(client, tps6105x);
	tps6105x->client = client;
	tps6105x->pdata = pdata;

	ret = FUNC11(tps6105x);
	if (ret) {
		FUNC2(&client->dev, "chip initialization failed\n");
		return ret;
	}

	ret = FUNC10(tps6105x, &tps6105x_gpio_cell);
	if (ret)
		return ret;

	switch (pdata->mode) {
	case TPS6105X_MODE_SHUTDOWN:
		FUNC4(&client->dev,
			 "present, not used for anything, only GPIO\n");
		break;
	case TPS6105X_MODE_TORCH:
		ret = FUNC10(tps6105x, &tps6105x_leds_cell);
		break;
	case TPS6105X_MODE_TORCH_FLASH:
		ret = FUNC10(tps6105x, &tps6105x_flash_cell);
		break;
	case TPS6105X_MODE_VOLTAGE:
		ret = FUNC10(tps6105x, &tps6105x_regulator_cell);
		break;
	default:
		FUNC5(&client->dev, "invalid mode: %d\n", pdata->mode);
		break;
	}

	if (ret)
		FUNC9(&client->dev);

	return ret;
}