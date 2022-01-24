#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct v4l2_ctrl_handler {int error; } ;
struct TYPE_5__ {int numerator; int denominator; } ;
struct v4l2_subdev {struct v4l2_ctrl_handler* ctrl_handler; } ;
struct vs6624 {unsigned int ce_pin; struct v4l2_ctrl_handler hdl; int /*<<< orphan*/  fmt; TYPE_1__ frame_rate; struct v4l2_subdev sd; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_7__ {unsigned int* platform_data; } ;
struct i2c_client {int addr; TYPE_2__* adapter; TYPE_3__ dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOF_OUT_INIT_HIGH ; 
 int /*<<< orphan*/  I2C_FUNC_I2C ; 
 int MAX_FRAME_RATE ; 
 int /*<<< orphan*/  V4L2_CID_CONTRAST ; 
 int /*<<< orphan*/  V4L2_CID_HFLIP ; 
 int /*<<< orphan*/  V4L2_CID_SATURATION ; 
 int /*<<< orphan*/  V4L2_CID_VFLIP ; 
 int /*<<< orphan*/  VS6624_DIO_EN ; 
 int /*<<< orphan*/  VS6624_DISABLE_FR_DAMPER ; 
 int /*<<< orphan*/  VS6624_FR_DEN ; 
 int /*<<< orphan*/  VS6624_FR_NUM_LSB ; 
 int /*<<< orphan*/  VS6624_FR_NUM_MSB ; 
 int /*<<< orphan*/  VS6624_HSYNC_SETUP ; 
 int /*<<< orphan*/  VS6624_MICRO_EN ; 
 int FUNC0 (TYPE_3__*,unsigned int const,int /*<<< orphan*/ ,char*) ; 
 struct vs6624* FUNC1 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct v4l2_ctrl_handler*) ; 
 int /*<<< orphan*/  FUNC6 (struct v4l2_ctrl_handler*,int) ; 
 int FUNC7 (struct v4l2_ctrl_handler*) ; 
 int /*<<< orphan*/  FUNC8 (struct v4l2_ctrl_handler*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct v4l2_subdev*,struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct i2c_client*,char*,unsigned int const) ; 
 int /*<<< orphan*/  FUNC11 (struct i2c_client*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vs6624_ctrl_ops ; 
 int /*<<< orphan*/  vs6624_default ; 
 int /*<<< orphan*/  vs6624_default_fmt ; 
 int /*<<< orphan*/  vs6624_ops ; 
 int /*<<< orphan*/  vs6624_p1 ; 
 int /*<<< orphan*/  vs6624_p2 ; 
 int /*<<< orphan*/  vs6624_run_setup ; 
 int /*<<< orphan*/  FUNC12 (struct v4l2_subdev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct v4l2_subdev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	struct vs6624 *sensor;
	struct v4l2_subdev *sd;
	struct v4l2_ctrl_handler *hdl;
	const unsigned *ce;
	int ret;

	/* Check if the adapter supports the needed features */
	if (!FUNC2(client->adapter, I2C_FUNC_I2C))
		return -EIO;

	ce = client->dev.platform_data;
	if (ce == NULL)
		return -EINVAL;

	ret = FUNC0(&client->dev, *ce, GPIOF_OUT_INIT_HIGH,
				    "VS6624 Chip Enable");
	if (ret) {
		FUNC10(client, "failed to request GPIO %d\n", *ce);
		return ret;
	}
	/* wait 100ms before any further i2c writes are performed */
	FUNC3(100);

	sensor = FUNC1(&client->dev, sizeof(*sensor), GFP_KERNEL);
	if (sensor == NULL)
		return -ENOMEM;

	sd = &sensor->sd;
	FUNC9(sd, client, &vs6624_ops);

	FUNC13(sd, vs6624_p1);
	FUNC12(sd, VS6624_MICRO_EN, 0x2);
	FUNC12(sd, VS6624_DIO_EN, 0x1);
	FUNC4(10000, 11000);
	FUNC13(sd, vs6624_p2);

	FUNC13(sd, vs6624_default);
	FUNC12(sd, VS6624_HSYNC_SETUP, 0xF);
	FUNC13(sd, vs6624_run_setup);

	/* set frame rate */
	sensor->frame_rate.numerator = MAX_FRAME_RATE;
	sensor->frame_rate.denominator = 1;
	FUNC12(sd, VS6624_DISABLE_FR_DAMPER, 0x0);
	FUNC12(sd, VS6624_FR_NUM_MSB,
			sensor->frame_rate.numerator >> 8);
	FUNC12(sd, VS6624_FR_NUM_LSB,
			sensor->frame_rate.numerator & 0xFF);
	FUNC12(sd, VS6624_FR_DEN,
			sensor->frame_rate.denominator & 0xFF);

	sensor->fmt = vs6624_default_fmt;
	sensor->ce_pin = *ce;

	FUNC11(client, "chip found @ 0x%02x (%s)\n",
			client->addr << 1, client->adapter->name);

	hdl = &sensor->hdl;
	FUNC6(hdl, 4);
	FUNC8(hdl, &vs6624_ctrl_ops,
			V4L2_CID_CONTRAST, 0, 0xFF, 1, 0x87);
	FUNC8(hdl, &vs6624_ctrl_ops,
			V4L2_CID_SATURATION, 0, 0xFF, 1, 0x78);
	FUNC8(hdl, &vs6624_ctrl_ops,
			V4L2_CID_HFLIP, 0, 1, 1, 0);
	FUNC8(hdl, &vs6624_ctrl_ops,
			V4L2_CID_VFLIP, 0, 1, 1, 0);
	/* hook the control handler into the driver */
	sd->ctrl_handler = hdl;
	if (hdl->error) {
		int err = hdl->error;

		FUNC5(hdl);
		return err;
	}

	/* initialize the hardware to the default control values */
	ret = FUNC7(hdl);
	if (ret)
		FUNC5(hdl);
	return ret;
}