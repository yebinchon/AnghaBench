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
struct ov7740 {void* pwdn_gpio; void* resetb_gpio; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*) ; 
 void* FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *client,
			   struct ov7740 *ov7740)
{
	ov7740->resetb_gpio = FUNC3(&client->dev, "reset",
			GPIOD_OUT_HIGH);
	if (FUNC0(ov7740->resetb_gpio)) {
		FUNC2(&client->dev, "can't get %s GPIO\n", "reset");
		return FUNC1(ov7740->resetb_gpio);
	}

	ov7740->pwdn_gpio = FUNC3(&client->dev, "powerdown",
			GPIOD_OUT_LOW);
	if (FUNC0(ov7740->pwdn_gpio)) {
		FUNC2(&client->dev, "can't get %s GPIO\n", "powerdown");
		return FUNC1(ov7740->pwdn_gpio);
	}

	return 0;
}