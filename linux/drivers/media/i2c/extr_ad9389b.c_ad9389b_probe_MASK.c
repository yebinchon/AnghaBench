#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  function; } ;
struct v4l2_subdev {TYPE_1__ entity; struct v4l2_ctrl_handler* ctrl_handler; int /*<<< orphan*/  flags; } ;
struct v4l2_dv_timings {int dummy; } ;
struct v4l2_ctrl_handler {int error; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_10__ {struct ad9389b_platform_data* platform_data; } ;
struct i2c_client {int addr; TYPE_4__* adapter; int /*<<< orphan*/  name; TYPE_6__ dev; } ;
struct TYPE_8__ {int /*<<< orphan*/  flags; } ;
struct ad9389b_state {int chip_revision; struct v4l2_ctrl_handler hdl; struct v4l2_dv_timings dv_timings; int /*<<< orphan*/  edid_handler; int /*<<< orphan*/  edid_i2c_client; TYPE_2__ pad; void* rgb_quantization_range_ctrl; void* have_edid0_ctrl; void* rx_sense_ctrl; void* hotplug_ctrl; void* hdmi_mode_ctrl; struct v4l2_subdev sd; int /*<<< orphan*/  pdata; } ;
struct ad9389b_platform_data {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EIO ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MEDIA_ENT_F_DV_ENCODER ; 
 int /*<<< orphan*/  MEDIA_PAD_FL_SINK ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V4L2_CID_DV_TX_EDID_PRESENT ; 
 int /*<<< orphan*/  V4L2_CID_DV_TX_HOTPLUG ; 
 int /*<<< orphan*/  V4L2_CID_DV_TX_MODE ; 
 int /*<<< orphan*/  V4L2_CID_DV_TX_RGB_RANGE ; 
 int /*<<< orphan*/  V4L2_CID_DV_TX_RXSENSE ; 
 struct v4l2_dv_timings V4L2_DV_BT_CEA_1920X1080P60 ; 
 int /*<<< orphan*/  V4L2_DV_RGB_RANGE_AUTO ; 
 int /*<<< orphan*/  V4L2_DV_RGB_RANGE_FULL ; 
 int /*<<< orphan*/  V4L2_DV_TX_MODE_DVI_D ; 
 int /*<<< orphan*/  V4L2_DV_TX_MODE_HDMI ; 
 int /*<<< orphan*/  V4L2_SUBDEV_FL_HAS_DEVNODE ; 
 int /*<<< orphan*/  ad9389b_ctrl_ops ; 
 int /*<<< orphan*/  ad9389b_edid_handler ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  ad9389b_ops ; 
 int FUNC4 (struct v4l2_subdev*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct v4l2_subdev*,int) ; 
 int /*<<< orphan*/  debug ; 
 struct ad9389b_state* FUNC6 (TYPE_6__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int FUNC10 (TYPE_1__*,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,struct ad9389b_platform_data*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct v4l2_ctrl_handler*) ; 
 int /*<<< orphan*/  FUNC13 (struct v4l2_ctrl_handler*,int) ; 
 void* FUNC14 (struct v4l2_ctrl_handler*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC15 (struct v4l2_ctrl_handler*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int,int /*<<< orphan*/ ,struct v4l2_subdev*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC17 (struct v4l2_subdev*,char*,...) ; 
 int /*<<< orphan*/  FUNC18 (struct v4l2_subdev*,struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (struct v4l2_subdev*,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int,int /*<<< orphan*/ ,struct i2c_client*,char*,int) ; 
 int /*<<< orphan*/  FUNC21 (struct i2c_client*,char*) ; 

__attribute__((used)) static int FUNC22(struct i2c_client *client, const struct i2c_device_id *id)
{
	const struct v4l2_dv_timings dv1080p60 = V4L2_DV_BT_CEA_1920X1080P60;
	struct ad9389b_state *state;
	struct ad9389b_platform_data *pdata = client->dev.platform_data;
	struct v4l2_ctrl_handler *hdl;
	struct v4l2_subdev *sd;
	int err = -EIO;

	/* Check if the adapter supports the needed features */
	if (!FUNC7(client->adapter, I2C_FUNC_SMBUS_BYTE_DATA))
		return -EIO;

	FUNC20(1, debug, client, "detecting ad9389b client on address 0x%x\n",
		client->addr << 1);

	state = FUNC6(&client->dev, sizeof(*state), GFP_KERNEL);
	if (!state)
		return -ENOMEM;

	/* Platform data */
	if (pdata == NULL) {
		FUNC21(client, "No platform data!\n");
		return -ENODEV;
	}
	FUNC11(&state->pdata, pdata, sizeof(state->pdata));

	sd = &state->sd;
	FUNC18(sd, client, &ad9389b_ops);
	sd->flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;

	hdl = &state->hdl;
	FUNC13(hdl, 5);

	state->hdmi_mode_ctrl = FUNC15(hdl, &ad9389b_ctrl_ops,
			V4L2_CID_DV_TX_MODE, V4L2_DV_TX_MODE_HDMI,
			0, V4L2_DV_TX_MODE_DVI_D);
	state->hotplug_ctrl = FUNC14(hdl, NULL,
			V4L2_CID_DV_TX_HOTPLUG, 0, 1, 0, 0);
	state->rx_sense_ctrl = FUNC14(hdl, NULL,
			V4L2_CID_DV_TX_RXSENSE, 0, 1, 0, 0);
	state->have_edid0_ctrl = FUNC14(hdl, NULL,
			V4L2_CID_DV_TX_EDID_PRESENT, 0, 1, 0, 0);
	state->rgb_quantization_range_ctrl =
		FUNC15(hdl, &ad9389b_ctrl_ops,
			V4L2_CID_DV_TX_RGB_RANGE, V4L2_DV_RGB_RANGE_FULL,
			0, V4L2_DV_RGB_RANGE_AUTO);
	sd->ctrl_handler = hdl;
	if (hdl->error) {
		err = hdl->error;

		goto err_hdl;
	}
	state->pad.flags = MEDIA_PAD_FL_SINK;
	sd->entity.function = MEDIA_ENT_F_DV_ENCODER;
	err = FUNC10(&sd->entity, 1, &state->pad);
	if (err)
		goto err_hdl;

	state->chip_revision = FUNC4(sd, 0x0);
	if (state->chip_revision != 2) {
		FUNC17(sd, "chip_revision %d != 2\n", state->chip_revision);
		err = -EIO;
		goto err_entity;
	}
	FUNC16(1, debug, sd, "reg 0x41 0x%x, chip version (reg 0x00) 0x%x\n",
		 FUNC4(sd, 0x41), state->chip_revision);

	state->edid_i2c_client = FUNC8(client->adapter, (0x7e >> 1));
	if (FUNC1(state->edid_i2c_client)) {
		FUNC17(sd, "failed to register edid i2c client\n");
		err = FUNC2(state->edid_i2c_client);
		goto err_entity;
	}

	FUNC0(&state->edid_handler, ad9389b_edid_handler);
	state->dv_timings = dv1080p60;

	FUNC3(sd);
	FUNC5(sd, true);

	FUNC19(sd, "%s found @ 0x%x (%s)\n", client->name,
		  client->addr << 1, client->adapter->name);
	return 0;

err_entity:
	FUNC9(&sd->entity);
err_hdl:
	FUNC12(&state->hdl);
	return err;
}