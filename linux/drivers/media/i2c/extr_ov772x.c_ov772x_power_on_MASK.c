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
struct ov772x_priv {scalar_t__ rstb_gpio; scalar_t__ clk; scalar_t__ pwdn_gpio; int /*<<< orphan*/  subdev; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 
 struct i2c_client* FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct ov772x_priv *priv)
{
	struct i2c_client *client = FUNC9(&priv->subdev);
	int ret;

	if (priv->clk) {
		ret = FUNC3(priv->clk);
		if (ret)
			return ret;
	}

	if (priv->pwdn_gpio) {
		FUNC7(priv->pwdn_gpio, 1);
		FUNC8(500, 1000);
	}

	/*
	 * FIXME: The reset signal is connected to a shared GPIO on some
	 * platforms (namely the SuperH Migo-R). Until a framework becomes
	 * available to handle this cleanly, request the GPIO temporarily
	 * to avoid conflicts.
	 */
	priv->rstb_gpio = FUNC5(&client->dev, "reset",
					     GPIOD_OUT_LOW);
	if (FUNC0(priv->rstb_gpio)) {
		FUNC4(&client->dev, "Unable to get GPIO \"reset\"");
		FUNC2(priv->clk);
		return FUNC1(priv->rstb_gpio);
	}

	if (priv->rstb_gpio) {
		FUNC7(priv->rstb_gpio, 1);
		FUNC8(500, 1000);
		FUNC7(priv->rstb_gpio, 0);
		FUNC8(500, 1000);

		FUNC6(priv->rstb_gpio);
	}

	return 0;
}