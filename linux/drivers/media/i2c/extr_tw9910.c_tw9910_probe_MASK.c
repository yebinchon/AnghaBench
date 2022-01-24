#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct tw9910_video_info {int dummy; } ;
struct tw9910_priv {int /*<<< orphan*/ * clk; int /*<<< orphan*/ * pdn_gpio; int /*<<< orphan*/  subdev; struct tw9910_video_info* info; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_6__ {struct tw9910_video_info* platform_data; } ;
struct i2c_client {TYPE_1__ dev; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE_DATA ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 struct tw9910_priv* FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tw9910_subdev_ops ; 
 int FUNC10 (struct i2c_client*) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,struct i2c_client*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct i2c_client *client,
			const struct i2c_device_id *did)

{
	struct tw9910_priv		*priv;
	struct tw9910_video_info	*info;
	struct i2c_adapter		*adapter = client->adapter;
	int ret;

	if (!client->dev.platform_data) {
		FUNC4(&client->dev, "TW9910: missing platform data!\n");
		return -EINVAL;
	}

	info = client->dev.platform_data;

	if (!FUNC9(adapter, I2C_FUNC_SMBUS_BYTE_DATA)) {
		FUNC4(&client->dev,
			"I2C-Adapter doesn't support I2C_FUNC_SMBUS_BYTE_DATA\n");
		return -EIO;
	}

	priv = FUNC6(&client->dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->info = info;

	FUNC12(&priv->subdev, client, &tw9910_subdev_ops);

	priv->clk = FUNC2(&client->dev, "xti");
	if (FUNC1(priv->clk) == -ENOENT) {
		priv->clk = NULL;
	} else if (FUNC0(priv->clk)) {
		FUNC4(&client->dev, "Unable to get xti clock\n");
		return FUNC1(priv->clk);
	}

	priv->pdn_gpio = FUNC7(&client->dev, "pdn",
					    GPIOD_OUT_HIGH);
	if (FUNC0(priv->pdn_gpio)) {
		FUNC5(&client->dev, "Unable to get GPIO \"pdn\"");
		ret = FUNC1(priv->pdn_gpio);
		goto error_clk_put;
	}

	ret = FUNC10(client);
	if (ret < 0)
		goto error_gpio_put;

	ret = FUNC11(&priv->subdev);
	if (ret)
		goto error_gpio_put;

	return ret;

error_gpio_put:
	if (priv->pdn_gpio)
		FUNC8(priv->pdn_gpio);
error_clk_put:
	FUNC3(priv->clk);

	return ret;
}