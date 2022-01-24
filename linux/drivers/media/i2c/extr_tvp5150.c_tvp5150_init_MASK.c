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
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct gpio_desc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 scalar_t__ FUNC0 (struct gpio_desc*) ; 
 int FUNC1 (struct gpio_desc*) ; 
 struct gpio_desc* FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct gpio_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

__attribute__((used)) static int FUNC7(struct i2c_client *c)
{
	struct gpio_desc *pdn_gpio;
	struct gpio_desc *reset_gpio;

	pdn_gpio = FUNC2(&c->dev, "pdn", GPIOD_OUT_HIGH);
	if (FUNC0(pdn_gpio))
		return FUNC1(pdn_gpio);

	if (pdn_gpio) {
		FUNC3(pdn_gpio, 0);
		/* Delay time between power supplies active and reset */
		FUNC4(20);
	}

	reset_gpio = FUNC2(&c->dev, "reset", GPIOD_OUT_HIGH);
	if (FUNC0(reset_gpio))
		return FUNC1(reset_gpio);

	if (reset_gpio) {
		/* RESETB pulse duration */
		FUNC5(500);
		FUNC3(reset_gpio, 0);
		/* Delay time between end of reset to I2C active */
		FUNC6(200, 250);
	}

	return 0;
}