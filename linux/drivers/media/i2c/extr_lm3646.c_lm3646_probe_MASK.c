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
struct lm3646_platform_data {int /*<<< orphan*/  led1_flash_brt; int /*<<< orphan*/  led1_torch_brt; int /*<<< orphan*/  flash_timeout; } ;
struct lm3646_flash {int /*<<< orphan*/ * dev; struct lm3646_platform_data* pdata; int /*<<< orphan*/  regmap; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LM3646_FLASH_TOUT_MAX ; 
 int /*<<< orphan*/  LM3646_LED1_FLASH_BRT_MAX ; 
 int /*<<< orphan*/  LM3646_LED1_TORCH_BRT_MAX ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct lm3646_platform_data* FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,struct lm3646_flash*) ; 
 int FUNC6 (struct lm3646_flash*) ; 
 int /*<<< orphan*/  lm3646_regmap ; 
 int FUNC7 (struct lm3646_flash*) ; 

__attribute__((used)) static int FUNC8(struct i2c_client *client,
			const struct i2c_device_id *devid)
{
	struct lm3646_flash *flash;
	struct lm3646_platform_data *pdata = FUNC2(&client->dev);
	int rval;

	flash = FUNC3(&client->dev, sizeof(*flash), GFP_KERNEL);
	if (flash == NULL)
		return -ENOMEM;

	flash->regmap = FUNC4(client, &lm3646_regmap);
	if (FUNC0(flash->regmap))
		return FUNC1(flash->regmap);

	/* check device tree if there is no platform data */
	if (pdata == NULL) {
		pdata = FUNC3(&client->dev,
				     sizeof(struct lm3646_platform_data),
				     GFP_KERNEL);
		if (pdata == NULL)
			return -ENOMEM;
		/* use default data in case of no platform data */
		pdata->flash_timeout = LM3646_FLASH_TOUT_MAX;
		pdata->led1_torch_brt = LM3646_LED1_TORCH_BRT_MAX;
		pdata->led1_flash_brt = LM3646_LED1_FLASH_BRT_MAX;
	}
	flash->pdata = pdata;
	flash->dev = &client->dev;

	rval = FUNC7(flash);
	if (rval < 0)
		return rval;

	rval = FUNC6(flash);
	if (rval < 0)
		return rval;

	FUNC5(client, flash);

	return 0;
}