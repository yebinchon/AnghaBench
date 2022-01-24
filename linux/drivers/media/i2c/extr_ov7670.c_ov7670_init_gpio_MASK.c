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
struct ov7670_info {void* resetb_gpio; void* pwdn_gpio; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*) ; 
 void* FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client, struct ov7670_info *info)
{
	info->pwdn_gpio = FUNC3(&client->dev, "powerdown",
			GPIOD_OUT_LOW);
	if (FUNC0(info->pwdn_gpio)) {
		FUNC2(&client->dev, "can't get %s GPIO\n", "powerdown");
		return FUNC1(info->pwdn_gpio);
	}

	info->resetb_gpio = FUNC3(&client->dev, "reset",
			GPIOD_OUT_LOW);
	if (FUNC0(info->resetb_gpio)) {
		FUNC2(&client->dev, "can't get %s GPIO\n", "reset");
		return FUNC1(info->resetb_gpio);
	}

	FUNC4(3000, 5000);

	return 0;
}