#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
struct TYPE_14__ {int error; int /*<<< orphan*/ * lock; } ;
struct TYPE_15__ {int /*<<< orphan*/  function; } ;
struct TYPE_13__ {int flags; TYPE_7__ entity; TYPE_2__* ctrl_handler; } ;
struct TYPE_16__ {int /*<<< orphan*/  flags; } ;
struct ov2640_priv {int /*<<< orphan*/  clk; int /*<<< orphan*/  lock; TYPE_2__ hdl; TYPE_1__ subdev; TYPE_8__ pad; int /*<<< orphan*/  cfmt_code; int /*<<< orphan*/  win; } ;
struct TYPE_12__ {scalar_t__ of_node; } ;
struct i2c_client {TYPE_10__ dev; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE_DATA ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MEDIA_BUS_FMT_UYVY8_2X8 ; 
 int /*<<< orphan*/  MEDIA_ENT_F_CAM_SENSOR ; 
 int /*<<< orphan*/  MEDIA_PAD_FL_SOURCE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVGA_HEIGHT ; 
 int /*<<< orphan*/  SVGA_WIDTH ; 
 int /*<<< orphan*/  V4L2_CID_HFLIP ; 
 int /*<<< orphan*/  V4L2_CID_TEST_PATTERN ; 
 int /*<<< orphan*/  V4L2_CID_VFLIP ; 
 int V4L2_SUBDEV_FL_HAS_DEVNODE ; 
 int V4L2_SUBDEV_FL_HAS_EVENTS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_10__*,char*) ; 
 struct ov2640_priv* FUNC8 (TYPE_10__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_7__*) ; 
 int FUNC11 (TYPE_7__*,int,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ov2640_ctrl_ops ; 
 int FUNC14 (struct i2c_client*,struct ov2640_priv*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ov2640_subdev_ops ; 
 int /*<<< orphan*/  ov2640_test_pattern_menu ; 
 int FUNC16 (struct i2c_client*) ; 
 int FUNC17 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_1__*,struct i2c_client*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC23(struct i2c_client *client)
{
	struct ov2640_priv	*priv;
	struct i2c_adapter	*adapter = client->adapter;
	int			ret;

	if (!FUNC9(adapter, I2C_FUNC_SMBUS_BYTE_DATA)) {
		FUNC5(&adapter->dev,
			"OV2640: I2C-Adapter doesn't support SMBUS\n");
		return -EIO;
	}

	priv = FUNC8(&client->dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	if (client->dev.of_node) {
		priv->clk = FUNC7(&client->dev, "xvclk");
		if (FUNC1(priv->clk))
			return FUNC2(priv->clk);
		ret = FUNC4(priv->clk);
		if (ret)
			return ret;
	}

	ret = FUNC14(client, priv);
	if (ret)
		goto err_clk;

	priv->win = FUNC15(SVGA_WIDTH, SVGA_HEIGHT);
	priv->cfmt_code = MEDIA_BUS_FMT_UYVY8_2X8;

	FUNC22(&priv->subdev, client, &ov2640_subdev_ops);
	priv->subdev.flags |= V4L2_SUBDEV_FL_HAS_DEVNODE |
			      V4L2_SUBDEV_FL_HAS_EVENTS;
	FUNC13(&priv->lock);
	FUNC19(&priv->hdl, 3);
	priv->hdl.lock = &priv->lock;
	FUNC20(&priv->hdl, &ov2640_ctrl_ops,
			V4L2_CID_VFLIP, 0, 1, 1, 0);
	FUNC20(&priv->hdl, &ov2640_ctrl_ops,
			V4L2_CID_HFLIP, 0, 1, 1, 0);
	FUNC21(&priv->hdl, &ov2640_ctrl_ops,
			V4L2_CID_TEST_PATTERN,
			FUNC0(ov2640_test_pattern_menu) - 1, 0, 0,
			ov2640_test_pattern_menu);
	priv->subdev.ctrl_handler = &priv->hdl;
	if (priv->hdl.error) {
		ret = priv->hdl.error;
		goto err_hdl;
	}
#if defined(CONFIG_MEDIA_CONTROLLER)
	priv->pad.flags = MEDIA_PAD_FL_SOURCE;
	priv->subdev.entity.function = MEDIA_ENT_F_CAM_SENSOR;
	ret = media_entity_pads_init(&priv->subdev.entity, 1, &priv->pad);
	if (ret < 0)
		goto err_hdl;
#endif

	ret = FUNC16(client);
	if (ret < 0)
		goto err_videoprobe;

	ret = FUNC17(&priv->subdev);
	if (ret < 0)
		goto err_videoprobe;

	FUNC6(&adapter->dev, "OV2640 Probed\n");

	return 0;

err_videoprobe:
	FUNC10(&priv->subdev.entity);
err_hdl:
	FUNC18(&priv->hdl);
	FUNC12(&priv->lock);
err_clk:
	FUNC3(priv->clk);
	return ret;
}