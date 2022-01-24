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
struct pm80x_platform_data {int /*<<< orphan*/  (* plat_config ) (struct pm80x_chip*,struct pm80x_platform_data*) ;} ;
struct pm80x_chip {int /*<<< orphan*/ * dev; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct pm80x_platform_data* FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct pm80x_chip*) ; 
 struct pm80x_chip* FUNC3 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC6 (struct pm80x_chip*,struct pm80x_platform_data*) ; 

__attribute__((used)) static int FUNC7(struct i2c_client *client,
				 const struct i2c_device_id *id)
{
	int ret = 0;
	struct pm80x_chip *chip;
	struct pm80x_platform_data *pdata = FUNC1(&client->dev);

	ret = FUNC5(client);
	if (ret) {
		FUNC0(&client->dev, "pm805_init fail!\n");
		goto out_init;
	}

	chip = FUNC3(client);

	ret = FUNC2(chip);
	if (ret) {
		FUNC0(chip->dev, "Failed to initialize 88pm805 devices\n");
		goto err_805_init;
	}

	if (pdata && pdata->plat_config)
		pdata->plat_config(chip, pdata);

err_805_init:
	FUNC4();
out_init:
	return ret;
}