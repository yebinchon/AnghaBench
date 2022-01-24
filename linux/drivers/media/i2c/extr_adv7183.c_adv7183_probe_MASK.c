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
struct TYPE_5__ {int width; int height; } ;
struct v4l2_subdev_format {TYPE_1__ format; int /*<<< orphan*/  which; } ;
struct v4l2_subdev {struct v4l2_ctrl_handler* ctrl_handler; } ;
struct v4l2_ctrl_handler {int error; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_7__ {unsigned int* platform_data; } ;
struct i2c_client {int addr; TYPE_3__ dev; TYPE_2__* adapter; } ;
struct adv7183 {unsigned int reset_pin; unsigned int oe_pin; int /*<<< orphan*/  std; int /*<<< orphan*/  output; int /*<<< orphan*/  input; struct v4l2_ctrl_handler hdl; struct v4l2_subdev sd; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADV7183_8BIT_OUT ; 
 int /*<<< orphan*/  ADV7183_COMPOSITE4 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EBUSY ; 
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOF_OUT_INIT_HIGH ; 
 int /*<<< orphan*/  GPIOF_OUT_INIT_LOW ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE_DATA ; 
 int /*<<< orphan*/  V4L2_CID_BRIGHTNESS ; 
 int /*<<< orphan*/  V4L2_CID_CONTRAST ; 
 int /*<<< orphan*/  V4L2_CID_HUE ; 
 int /*<<< orphan*/  V4L2_CID_SATURATION ; 
 int /*<<< orphan*/  V4L2_STD_PAL ; 
 int /*<<< orphan*/  V4L2_SUBDEV_FORMAT_ACTIVE ; 
 int /*<<< orphan*/  adv7183_ctrl_ops ; 
 int /*<<< orphan*/  adv7183_init_regs ; 
 int /*<<< orphan*/  adv7183_ops ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_subdev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_subdev*,int /*<<< orphan*/ *,struct v4l2_subdev_format*) ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_subdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_3__*,unsigned int,int /*<<< orphan*/ ,char*) ; 
 struct adv7183* FUNC5 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct v4l2_ctrl_handler*) ; 
 int /*<<< orphan*/  FUNC10 (struct v4l2_ctrl_handler*,int) ; 
 int FUNC11 (struct v4l2_ctrl_handler*) ; 
 int /*<<< orphan*/  FUNC12 (struct v4l2_ctrl_handler*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct v4l2_subdev*,struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct i2c_client*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC15 (struct i2c_client*,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	struct adv7183 *decoder;
	struct v4l2_subdev *sd;
	struct v4l2_ctrl_handler *hdl;
	int ret;
	struct v4l2_subdev_format fmt = {
		.which = V4L2_SUBDEV_FORMAT_ACTIVE,
	};
	const unsigned *pin_array;

	/* Check if the adapter supports the needed features */
	if (!FUNC7(client->adapter, I2C_FUNC_SMBUS_BYTE_DATA))
		return -EIO;

	FUNC15(client, "chip found @ 0x%02x (%s)\n",
			client->addr << 1, client->adapter->name);

	pin_array = client->dev.platform_data;
	if (pin_array == NULL)
		return -EINVAL;

	decoder = FUNC5(&client->dev, sizeof(*decoder), GFP_KERNEL);
	if (decoder == NULL)
		return -ENOMEM;

	decoder->reset_pin = pin_array[0];
	decoder->oe_pin = pin_array[1];

	if (FUNC4(&client->dev, decoder->reset_pin,
				  GPIOF_OUT_INIT_LOW, "ADV7183 Reset")) {
		FUNC14(client, "failed to request GPIO %d\n", decoder->reset_pin);
		return -EBUSY;
	}

	if (FUNC4(&client->dev, decoder->oe_pin,
				  GPIOF_OUT_INIT_HIGH,
				  "ADV7183 Output Enable")) {
		FUNC14(client, "failed to request GPIO %d\n", decoder->oe_pin);
		return -EBUSY;
	}

	sd = &decoder->sd;
	FUNC13(sd, client, &adv7183_ops);

	hdl = &decoder->hdl;
	FUNC10(hdl, 4);
	FUNC12(hdl, &adv7183_ctrl_ops,
			V4L2_CID_BRIGHTNESS, -128, 127, 1, 0);
	FUNC12(hdl, &adv7183_ctrl_ops,
			V4L2_CID_CONTRAST, 0, 0xFF, 1, 0x80);
	FUNC12(hdl, &adv7183_ctrl_ops,
			V4L2_CID_SATURATION, 0, 0xFFFF, 1, 0x8080);
	FUNC12(hdl, &adv7183_ctrl_ops,
			V4L2_CID_HUE, 0, 0xFFFF, 1, 0x8080);
	/* hook the control handler into the driver */
	sd->ctrl_handler = hdl;
	if (hdl->error) {
		ret = hdl->error;

		FUNC9(hdl);
		return ret;
	}

	/* v4l2 doesn't support an autodetect standard, pick PAL as default */
	decoder->std = V4L2_STD_PAL;
	decoder->input = ADV7183_COMPOSITE4;
	decoder->output = ADV7183_8BIT_OUT;

	/* reset chip */
	/* reset pulse width at least 5ms */
	FUNC8(10);
	FUNC6(decoder->reset_pin, 1);
	/* wait 5ms before any further i2c writes are performed */
	FUNC8(5);

	FUNC3(sd, adv7183_init_regs, FUNC0(adv7183_init_regs));
	FUNC1(sd, decoder->std);
	fmt.format.width = 720;
	fmt.format.height = 576;
	FUNC2(sd, NULL, &fmt);

	/* initialize the hardware to the default control values */
	ret = FUNC11(hdl);
	if (ret) {
		FUNC9(hdl);
		return ret;
	}

	return 0;
}