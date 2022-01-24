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
struct tw9910_priv {scalar_t__ rstb_gpio; scalar_t__ pdn_gpio; scalar_t__ clk; int /*<<< orphan*/  subdev; } ;
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
 struct i2c_client* FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct tw9910_priv *priv)
{
	struct i2c_client *client = FUNC8(&priv->subdev);
	int ret;

	if (priv->clk) {
		ret = FUNC3(priv->clk);
		if (ret)
			return ret;
	}

	FUNC7(priv->pdn_gpio, 0);

	/*
	 * FIXME: The reset signal is connected to a shared GPIO on some
	 * platforms (namely the SuperH Migo-R). Until a framework becomes
	 * available to handle this cleanly, request the GPIO temporarily
	 * to avoid conflicts.
	 */
	priv->rstb_gpio = FUNC5(&client->dev, "rstb",
					     GPIOD_OUT_LOW);
	if (FUNC0(priv->rstb_gpio)) {
		FUNC4(&client->dev, "Unable to get GPIO \"rstb\"");
		FUNC2(priv->clk);
		FUNC7(priv->pdn_gpio, 1);
		return FUNC1(priv->rstb_gpio);
	}

	if (priv->rstb_gpio) {
		FUNC7(priv->rstb_gpio, 1);
		FUNC7(priv->rstb_gpio, 0);

		FUNC6(priv->rstb_gpio);
	}

	return 0;
}