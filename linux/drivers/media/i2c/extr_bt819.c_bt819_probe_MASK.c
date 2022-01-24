#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct v4l2_subdev {TYPE_1__* ctrl_handler; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int addr; TYPE_5__* adapter; int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {int error; } ;
struct bt819 {int enable; TYPE_1__ hdl; scalar_t__ input; int /*<<< orphan*/  norm; struct v4l2_subdev sd; } ;
struct TYPE_7__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE_DATA ; 
 int /*<<< orphan*/  V4L2_CID_BRIGHTNESS ; 
 int /*<<< orphan*/  V4L2_CID_CONTRAST ; 
 int /*<<< orphan*/  V4L2_CID_HUE ; 
 int /*<<< orphan*/  V4L2_CID_SATURATION ; 
 int /*<<< orphan*/  V4L2_STD_NTSC ; 
 int /*<<< orphan*/  bt819_ctrl_ops ; 
 int FUNC0 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  bt819_ops ; 
 int FUNC1 (struct bt819*,int) ; 
 int /*<<< orphan*/  debug ; 
 struct bt819* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ,struct v4l2_subdev*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct v4l2_subdev*,struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct i2c_client*,char*,char const*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	int i, ver;
	struct bt819 *decoder;
	struct v4l2_subdev *sd;
	const char *name;

	/* Check if the adapter supports the needed features */
	if (!FUNC3(client->adapter, I2C_FUNC_SMBUS_BYTE_DATA))
		return -ENODEV;

	decoder = FUNC2(&client->dev, sizeof(*decoder), GFP_KERNEL);
	if (decoder == NULL)
		return -ENOMEM;
	sd = &decoder->sd;
	FUNC9(sd, client, &bt819_ops);

	ver = FUNC1(decoder, 0x17);
	switch (ver & 0xf0) {
	case 0x70:
		name = "bt819a";
		break;
	case 0x60:
		name = "bt817a";
		break;
	case 0x20:
		name = "bt815a";
		break;
	default:
		FUNC8(1, debug, sd,
			"unknown chip version 0x%02x\n", ver);
		return -ENODEV;
	}

	FUNC10(client, "%s found @ 0x%x (%s)\n", name,
			client->addr << 1, client->adapter->name);

	decoder->norm = V4L2_STD_NTSC;
	decoder->input = 0;
	decoder->enable = 1;

	i = FUNC0(sd);
	if (i < 0)
		FUNC8(1, debug, sd, "init status %d\n", i);

	FUNC5(&decoder->hdl, 4);
	FUNC7(&decoder->hdl, &bt819_ctrl_ops,
			V4L2_CID_BRIGHTNESS, -128, 127, 1, 0);
	FUNC7(&decoder->hdl, &bt819_ctrl_ops,
			V4L2_CID_CONTRAST, 0, 511, 1, 0xd8);
	FUNC7(&decoder->hdl, &bt819_ctrl_ops,
			V4L2_CID_SATURATION, 0, 511, 1, 0xfe);
	FUNC7(&decoder->hdl, &bt819_ctrl_ops,
			V4L2_CID_HUE, -128, 127, 1, 0);
	sd->ctrl_handler = &decoder->hdl;
	if (decoder->hdl.error) {
		int err = decoder->hdl.error;

		FUNC4(&decoder->hdl);
		return err;
	}
	FUNC6(&decoder->hdl);
	return 0;
}