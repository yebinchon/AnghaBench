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
struct lm3560_platform_data {void** max_torch_brt; void** max_flash_brt; int /*<<< orphan*/  max_flash_timeout; int /*<<< orphan*/  peak; } ;
struct lm3560_flash {int /*<<< orphan*/  lock; int /*<<< orphan*/ * dev; struct lm3560_platform_data* pdata; int /*<<< orphan*/  regmap; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 void* LM3560_FLASH_BRT_MAX ; 
 int /*<<< orphan*/  LM3560_FLASH_TOUT_MAX ; 
 size_t LM3560_LED0 ; 
 size_t LM3560_LED1 ; 
 int /*<<< orphan*/  LM3560_PEAK_3600mA ; 
 void* LM3560_TORCH_BRT_MAX ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct lm3560_platform_data* FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,struct lm3560_flash*) ; 
 int FUNC6 (struct lm3560_flash*) ; 
 int /*<<< orphan*/  lm3560_regmap ; 
 int FUNC7 (struct lm3560_flash*,size_t,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct i2c_client *client,
			const struct i2c_device_id *devid)
{
	struct lm3560_flash *flash;
	struct lm3560_platform_data *pdata = FUNC2(&client->dev);
	int rval;

	flash = FUNC3(&client->dev, sizeof(*flash), GFP_KERNEL);
	if (flash == NULL)
		return -ENOMEM;

	flash->regmap = FUNC4(client, &lm3560_regmap);
	if (FUNC0(flash->regmap)) {
		rval = FUNC1(flash->regmap);
		return rval;
	}

	/* if there is no platform data, use chip default value */
	if (pdata == NULL) {
		pdata = FUNC3(&client->dev, sizeof(*pdata), GFP_KERNEL);
		if (pdata == NULL)
			return -ENODEV;
		pdata->peak = LM3560_PEAK_3600mA;
		pdata->max_flash_timeout = LM3560_FLASH_TOUT_MAX;
		/* led 1 */
		pdata->max_flash_brt[LM3560_LED0] = LM3560_FLASH_BRT_MAX;
		pdata->max_torch_brt[LM3560_LED0] = LM3560_TORCH_BRT_MAX;
		/* led 2 */
		pdata->max_flash_brt[LM3560_LED1] = LM3560_FLASH_BRT_MAX;
		pdata->max_torch_brt[LM3560_LED1] = LM3560_TORCH_BRT_MAX;
	}
	flash->pdata = pdata;
	flash->dev = &client->dev;
	FUNC8(&flash->lock);

	rval = FUNC7(flash, LM3560_LED0, "lm3560-led0");
	if (rval < 0)
		return rval;

	rval = FUNC7(flash, LM3560_LED1, "lm3560-led1");
	if (rval < 0)
		return rval;

	rval = FUNC6(flash);
	if (rval < 0)
		return rval;

	FUNC5(client, flash);

	return 0;
}