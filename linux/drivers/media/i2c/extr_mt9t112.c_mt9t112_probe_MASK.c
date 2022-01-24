#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct mt9t112_priv {int init_done; int /*<<< orphan*/  subdev; int /*<<< orphan*/ * standby_gpio; int /*<<< orphan*/ * clk; scalar_t__ info; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_5__ {scalar_t__ platform_data; } ;
struct i2c_client {TYPE_1__ dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 struct mt9t112_priv* FUNC5 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct i2c_client*) ; 
 int /*<<< orphan*/  mt9t112_subdev_ops ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct i2c_client*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct i2c_client *client,
			 const struct i2c_device_id *did)
{
	struct mt9t112_priv *priv;
	int ret;

	if (!client->dev.platform_data) {
		FUNC2(&client->dev, "mt9t112: missing platform data!\n");
		return -EINVAL;
	}

	priv = FUNC5(&client->dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->info = client->dev.platform_data;
	priv->init_done = false;

	FUNC8(&priv->subdev, client, &mt9t112_subdev_ops);

	priv->clk = FUNC3(&client->dev, "extclk");
	if (FUNC1(priv->clk) == -ENOENT) {
		priv->clk = NULL;
	} else if (FUNC0(priv->clk)) {
		FUNC2(&client->dev, "Unable to get clock \"extclk\"\n");
		return FUNC1(priv->clk);
	}

	priv->standby_gpio = FUNC4(&client->dev, "standby",
						     GPIOD_OUT_HIGH);
	if (FUNC0(priv->standby_gpio)) {
		FUNC2(&client->dev, "Unable to get gpio \"standby\"\n");
		return FUNC1(priv->standby_gpio);
	}

	ret = FUNC6(client);
	if (ret)
		return ret;

	return FUNC7(&priv->subdev);
}