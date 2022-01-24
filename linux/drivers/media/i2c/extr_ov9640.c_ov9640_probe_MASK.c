#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int error; } ;
struct TYPE_6__ {int /*<<< orphan*/ * dev; TYPE_2__* ctrl_handler; } ;
struct ov9640_priv {TYPE_2__ hdl; void* clk; TYPE_1__ subdev; void* gpio_reset; void* gpio_power; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  V4L2_CID_HFLIP ; 
 int /*<<< orphan*/  V4L2_CID_VFLIP ; 
 void* FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct ov9640_priv* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ov9640_ctrl_ops ; 
 int /*<<< orphan*/  ov9640_subdev_ops ; 
 int FUNC4 (struct i2c_client*) ; 
 int FUNC5 (TYPE_1__*) ; 
 void* FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,struct i2c_client*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct i2c_client *client,
			const struct i2c_device_id *did)
{
	struct ov9640_priv *priv;
	int ret;

	priv = FUNC3(&client->dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->gpio_power = FUNC2(&client->dev, "Camera power",
					  GPIOD_OUT_LOW);
	if (FUNC0(priv->gpio_power)) {
		ret = FUNC1(priv->gpio_power);
		return ret;
	}

	priv->gpio_reset = FUNC2(&client->dev, "Camera reset",
					  GPIOD_OUT_HIGH);
	if (FUNC0(priv->gpio_reset)) {
		ret = FUNC1(priv->gpio_reset);
		return ret;
	}

	FUNC11(&priv->subdev, client, &ov9640_subdev_ops);

	FUNC9(&priv->hdl, 2);
	FUNC10(&priv->hdl, &ov9640_ctrl_ops,
			  V4L2_CID_VFLIP, 0, 1, 1, 0);
	FUNC10(&priv->hdl, &ov9640_ctrl_ops,
			  V4L2_CID_HFLIP, 0, 1, 1, 0);

	if (priv->hdl.error) {
		ret = priv->hdl.error;
		goto ectrlinit;
	}

	priv->subdev.ctrl_handler = &priv->hdl;

	priv->clk = FUNC6(&client->dev, "mclk");
	if (FUNC0(priv->clk)) {
		ret = FUNC1(priv->clk);
		goto ectrlinit;
	}

	ret = FUNC4(client);
	if (ret)
		goto eprobe;

	priv->subdev.dev = &client->dev;
	ret = FUNC5(&priv->subdev);
	if (ret)
		goto eprobe;

	return 0;

eprobe:
	FUNC7(priv->clk);
ectrlinit:
	FUNC8(&priv->hdl);

	return ret;
}