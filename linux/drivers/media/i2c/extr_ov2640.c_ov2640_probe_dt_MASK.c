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
struct ov2640_priv {void* pwdn_gpio; void* resetb_gpio; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOSYS ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 int FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 void* FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *client,
		struct ov2640_priv *priv)
{
	int ret;

	/* Request the reset GPIO deasserted */
	priv->resetb_gpio = FUNC2(&client->dev, "resetb",
			GPIOD_OUT_LOW);

	if (!priv->resetb_gpio)
		FUNC1(&client->dev, "resetb gpio is not assigned!\n");

	ret = FUNC0(priv->resetb_gpio);
	if (ret && ret != -ENOSYS) {
		FUNC1(&client->dev,
			"Error %d while getting resetb gpio\n", ret);
		return ret;
	}

	/* Request the power down GPIO asserted */
	priv->pwdn_gpio = FUNC2(&client->dev, "pwdn",
			GPIOD_OUT_HIGH);

	if (!priv->pwdn_gpio)
		FUNC1(&client->dev, "pwdn gpio is not assigned!\n");

	ret = FUNC0(priv->pwdn_gpio);
	if (ret && ret != -ENOSYS) {
		FUNC1(&client->dev,
			"Error %d while getting pwdn gpio\n", ret);
		return ret;
	}

	return 0;
}