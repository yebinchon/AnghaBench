#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_12__ ;

/* Type definitions */
struct rj54n1_pdata {int mclk_freq; } ;
struct TYPE_16__ {int error; } ;
struct TYPE_15__ {TYPE_3__* ctrl_handler; } ;
struct TYPE_14__ {void* height; void* width; int /*<<< orphan*/  top; int /*<<< orphan*/  left; } ;
struct TYPE_13__ {int ratio_tg; int ratio_t; } ;
struct rj54n1 {int resize; int tgclk_mhz; TYPE_3__ hdl; void* clk; void* pwup_gpio; void* enable_gpio; TYPE_2__ subdev; int /*<<< orphan*/ * fmt; void* height; void* width; TYPE_1__ rect; TYPE_12__ clk_div; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_17__ {struct rj54n1_pdata* platform_data; } ;
struct i2c_client {TYPE_7__ dev; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE_DATA ; 
 scalar_t__ FUNC0 (void*) ; 
 int PLL_L ; 
 int PLL_N ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  RJ54N1_COLUMN_SKIP ; 
 void* RJ54N1_MAX_HEIGHT ; 
 void* RJ54N1_MAX_WIDTH ; 
 int /*<<< orphan*/  RJ54N1_ROW_SKIP ; 
 int /*<<< orphan*/  V4L2_CID_AUTO_WHITE_BALANCE ; 
 int /*<<< orphan*/  V4L2_CID_GAIN ; 
 int /*<<< orphan*/  V4L2_CID_HFLIP ; 
 int /*<<< orphan*/  V4L2_CID_VFLIP ; 
 TYPE_12__ clk_div ; 
 void* FUNC2 (TYPE_7__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_7__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_7__*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 struct rj54n1* FUNC7 (TYPE_7__*,int,int /*<<< orphan*/ ) ; 
 void* FUNC8 (TYPE_7__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 
 int /*<<< orphan*/  FUNC10 (struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * rj54n1_colour_fmts ; 
 int /*<<< orphan*/  rj54n1_ctrl_ops ; 
 int /*<<< orphan*/  rj54n1_subdev_ops ; 
 int FUNC11 (struct i2c_client*,struct rj54n1_pdata*) ; 
 int FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,struct i2c_client*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC17(struct i2c_client *client,
			const struct i2c_device_id *did)
{
	struct rj54n1 *rj54n1;
	struct i2c_adapter *adapter = client->adapter;
	struct rj54n1_pdata *rj54n1_priv;
	int ret;

	if (!client->dev.platform_data) {
		FUNC4(&client->dev, "RJ54N1CB0C: missing platform data!\n");
		return -EINVAL;
	}

	rj54n1_priv = client->dev.platform_data;

	if (!FUNC10(adapter, I2C_FUNC_SMBUS_BYTE_DATA)) {
		FUNC6(&adapter->dev,
			 "I2C-Adapter doesn't support I2C_FUNC_SMBUS_BYTE\n");
		return -EIO;
	}

	rj54n1 = FUNC7(&client->dev, sizeof(struct rj54n1), GFP_KERNEL);
	if (!rj54n1)
		return -ENOMEM;

	FUNC16(&rj54n1->subdev, client, &rj54n1_subdev_ops);
	FUNC14(&rj54n1->hdl, 4);
	FUNC15(&rj54n1->hdl, &rj54n1_ctrl_ops,
			V4L2_CID_VFLIP, 0, 1, 1, 0);
	FUNC15(&rj54n1->hdl, &rj54n1_ctrl_ops,
			V4L2_CID_HFLIP, 0, 1, 1, 0);
	FUNC15(&rj54n1->hdl, &rj54n1_ctrl_ops,
			V4L2_CID_GAIN, 0, 127, 1, 66);
	FUNC15(&rj54n1->hdl, &rj54n1_ctrl_ops,
			V4L2_CID_AUTO_WHITE_BALANCE, 0, 1, 1, 1);
	rj54n1->subdev.ctrl_handler = &rj54n1->hdl;
	if (rj54n1->hdl.error)
		return rj54n1->hdl.error;

	rj54n1->clk_div		= clk_div;
	rj54n1->rect.left	= RJ54N1_COLUMN_SKIP;
	rj54n1->rect.top	= RJ54N1_ROW_SKIP;
	rj54n1->rect.width	= RJ54N1_MAX_WIDTH;
	rj54n1->rect.height	= RJ54N1_MAX_HEIGHT;
	rj54n1->width		= RJ54N1_MAX_WIDTH;
	rj54n1->height		= RJ54N1_MAX_HEIGHT;
	rj54n1->fmt		= &rj54n1_colour_fmts[0];
	rj54n1->resize		= 1024;
	rj54n1->tgclk_mhz	= (rj54n1_priv->mclk_freq / PLL_L * PLL_N) /
		(clk_div.ratio_tg + 1) / (clk_div.ratio_t + 1);

	rj54n1->clk = FUNC2(&client->dev, NULL);
	if (FUNC0(rj54n1->clk)) {
		ret = FUNC1(rj54n1->clk);
		goto err_free_ctrl;
	}

	rj54n1->pwup_gpio = FUNC8(&client->dev, "powerup",
					       GPIOD_OUT_LOW);
	if (FUNC0(rj54n1->pwup_gpio)) {
		FUNC5(&client->dev, "Unable to get GPIO \"powerup\": %ld\n",
			 FUNC1(rj54n1->pwup_gpio));
		ret = FUNC1(rj54n1->pwup_gpio);
		goto err_clk_put;
	}

	rj54n1->enable_gpio = FUNC8(&client->dev, "enable",
						 GPIOD_OUT_LOW);
	if (FUNC0(rj54n1->enable_gpio)) {
		FUNC5(&client->dev, "Unable to get GPIO \"enable\": %ld\n",
			 FUNC1(rj54n1->enable_gpio));
		ret = FUNC1(rj54n1->enable_gpio);
		goto err_gpio_put;
	}

	ret = FUNC11(client, rj54n1_priv);
	if (ret < 0)
		goto err_gpio_put;

	ret = FUNC12(&rj54n1->subdev);
	if (ret)
		goto err_gpio_put;

	return 0;

err_gpio_put:
	if (rj54n1->enable_gpio)
		FUNC9(rj54n1->enable_gpio);

	if (rj54n1->pwup_gpio)
		FUNC9(rj54n1->pwup_gpio);

err_clk_put:
	FUNC3(rj54n1->clk);

err_free_ctrl:
	FUNC13(&rj54n1->hdl);

	return ret;
}