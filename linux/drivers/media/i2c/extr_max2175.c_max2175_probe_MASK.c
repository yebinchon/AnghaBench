#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct v4l2_subdev {struct v4l2_ctrl_handler* ctrl_handler; int /*<<< orphan*/  flags; } ;
struct v4l2_ctrl_handler {int dummy; } ;
struct regmap {int dummy; } ;
struct max2175 {int master; int am_hiz; int mode_resolved; scalar_t__ xtal_freq; struct v4l2_ctrl_handler ctrl_hdl; TYPE_4__* bands_rf; int /*<<< orphan*/  freq; struct v4l2_subdev sd; int /*<<< orphan*/  rx_modes; void* rx_mode; void* hsls; void* i2s_en; TYPE_3__* pll_lock; TYPE_2__* if_gain; TYPE_1__* lna_gain; struct i2c_client* client; struct regmap* regmap; } ;
struct TYPE_14__ {int /*<<< orphan*/  of_node; } ;
struct i2c_client {TYPE_6__ dev; } ;
struct fwnode_handle {int dummy; } ;
struct device_node {int dummy; } ;
typedef  struct regmap clk ;
struct TYPE_13__ {int /*<<< orphan*/  rangelow; } ;
struct TYPE_12__ {int flags; } ;
struct TYPE_11__ {int flags; } ;
struct TYPE_10__ {int flags; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct regmap*) ; 
 scalar_t__ MAX2175_EU_XTAL_FREQ ; 
 int FUNC1 (struct regmap*) ; 
 int /*<<< orphan*/  V4L2_CID_RF_TUNER_IF_GAIN ; 
 int /*<<< orphan*/  V4L2_CID_RF_TUNER_LNA_GAIN ; 
 int /*<<< orphan*/  V4L2_CID_RF_TUNER_PLL_LOCK ; 
 int V4L2_CTRL_FLAG_READ_ONLY ; 
 int V4L2_CTRL_FLAG_VOLATILE ; 
 int /*<<< orphan*/  V4L2_SUBDEV_FL_HAS_DEVNODE ; 
 scalar_t__ FUNC2 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,char*,scalar_t__) ; 
 struct regmap* FUNC5 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 struct max2175* FUNC6 (TYPE_6__*,int,int /*<<< orphan*/ ) ; 
 struct regmap* FUNC7 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 TYPE_4__ eu_bands_rf ; 
 int /*<<< orphan*/  eu_rx_modes ; 
 scalar_t__ FUNC8 (struct fwnode_handle*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct fwnode_handle*,char*,int /*<<< orphan*/ *) ; 
 int FUNC10 (struct max2175*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  max2175_ctrl_ops ; 
 int /*<<< orphan*/  max2175_eu_rx_mode ; 
 int /*<<< orphan*/  max2175_hsls ; 
 int /*<<< orphan*/  max2175_i2s_en ; 
 int /*<<< orphan*/  max2175_na_rx_mode ; 
 int /*<<< orphan*/  max2175_ops ; 
 int FUNC11 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  max2175_regmap_config ; 
 TYPE_4__ na_bands_rf ; 
 int /*<<< orphan*/  na_rx_modes ; 
 struct fwnode_handle* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct device_node*) ; 
 struct device_node* FUNC14 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC16 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC17 (struct v4l2_ctrl_handler*) ; 
 int FUNC18 (struct v4l2_ctrl_handler*,int) ; 
 int FUNC19 (struct v4l2_ctrl_handler*) ; 
 void* FUNC20 (struct v4l2_ctrl_handler*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC21 (struct v4l2_ctrl_handler*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct v4l2_subdev*,struct i2c_client*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC23(struct i2c_client *client)
{
	bool master = true, am_hiz = false;
	u32 refout_load, refout_bits = 0;	/* REFOUT disabled */
	struct v4l2_ctrl_handler *hdl;
	struct fwnode_handle *fwnode;
	struct device_node *np;
	struct v4l2_subdev *sd;
	struct regmap *regmap;
	struct max2175 *ctx;
	struct clk *clk;
	int ret;

	/* Parse DT properties */
	np = FUNC14(client->dev.of_node, "maxim,master", 0);
	if (np) {
		master = false;			/* Slave tuner */
		FUNC13(np);
	}

	fwnode = FUNC12(client->dev.of_node);
	if (FUNC8(fwnode, "maxim,am-hiz-filter"))
		am_hiz = true;

	if (!FUNC9(fwnode, "maxim,refout-load",
				      &refout_load)) {
		ret = FUNC11(client, refout_load,
						  &refout_bits);
		if (ret) {
			FUNC3(&client->dev, "invalid refout_load %u\n",
				refout_load);
			return -EINVAL;
		}
	}

	clk = FUNC5(&client->dev, NULL);
	if (FUNC0(clk)) {
		ret = FUNC1(clk);
		FUNC3(&client->dev, "cannot get clock %d\n", ret);
		return ret;
	}

	regmap = FUNC7(client, &max2175_regmap_config);
	if (FUNC0(regmap)) {
		ret = FUNC1(regmap);
		FUNC3(&client->dev, "regmap init failed %d\n", ret);
		return -ENODEV;
	}

	/* Alloc tuner context */
	ctx = FUNC6(&client->dev, sizeof(*ctx), GFP_KERNEL);
	if (ctx == NULL)
		return -ENOMEM;

	sd = &ctx->sd;
	ctx->master = master;
	ctx->am_hiz = am_hiz;
	ctx->mode_resolved = false;
	ctx->regmap = regmap;
	ctx->xtal_freq = FUNC2(clk);
	FUNC4(&client->dev, "xtal freq %luHz\n", ctx->xtal_freq);

	FUNC22(sd, client, &max2175_ops);
	ctx->client = client;

	sd->flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;

	/* Controls */
	hdl = &ctx->ctrl_hdl;
	ret = FUNC18(hdl, 7);
	if (ret)
		return ret;

	ctx->lna_gain = FUNC21(hdl, &max2175_ctrl_ops,
					  V4L2_CID_RF_TUNER_LNA_GAIN,
					  0, 63, 1, 0);
	ctx->lna_gain->flags |= (V4L2_CTRL_FLAG_VOLATILE |
				 V4L2_CTRL_FLAG_READ_ONLY);
	ctx->if_gain = FUNC21(hdl, &max2175_ctrl_ops,
					 V4L2_CID_RF_TUNER_IF_GAIN,
					 0, 31, 1, 0);
	ctx->if_gain->flags |= (V4L2_CTRL_FLAG_VOLATILE |
				V4L2_CTRL_FLAG_READ_ONLY);
	ctx->pll_lock = FUNC21(hdl, &max2175_ctrl_ops,
					  V4L2_CID_RF_TUNER_PLL_LOCK,
					  0, 1, 1, 0);
	ctx->pll_lock->flags |= (V4L2_CTRL_FLAG_VOLATILE |
				 V4L2_CTRL_FLAG_READ_ONLY);
	ctx->i2s_en = FUNC20(hdl, &max2175_i2s_en, NULL);
	ctx->hsls = FUNC20(hdl, &max2175_hsls, NULL);

	if (ctx->xtal_freq == MAX2175_EU_XTAL_FREQ) {
		ctx->rx_mode = FUNC20(hdl,
						    &max2175_eu_rx_mode, NULL);
		ctx->rx_modes = eu_rx_modes;
		ctx->bands_rf = &eu_bands_rf;
	} else {
		ctx->rx_mode = FUNC20(hdl,
						    &max2175_na_rx_mode, NULL);
		ctx->rx_modes = na_rx_modes;
		ctx->bands_rf = &na_bands_rf;
	}
	ctx->sd.ctrl_handler = &ctx->ctrl_hdl;

	/* Set the defaults */
	ctx->freq = ctx->bands_rf->rangelow;

	/* Register subdev */
	ret = FUNC15(sd);
	if (ret) {
		FUNC3(&client->dev, "register subdev failed\n");
		goto err_reg;
	}

	/* Initialize device */
	ret = FUNC10(ctx, refout_bits);
	if (ret)
		goto err_init;

	ret = FUNC19(hdl);
	if (ret)
		goto err_init;

	return 0;

err_init:
	FUNC16(sd);
err_reg:
	FUNC17(&ctx->ctrl_hdl);

	return ret;
}