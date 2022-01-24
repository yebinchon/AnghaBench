#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct v4l2_device {struct v4l2_ctrl_handler* ctrl_handler; } ;
struct v4l2_ctrl_handler {int error; } ;
struct tea5764_regs {scalar_t__ chipid; int manid; } ;
struct TYPE_4__ {int device_caps; struct v4l2_device* v4l2_dev; int /*<<< orphan*/ * lock; } ;
struct tea5764_device {TYPE_1__ vdev; int /*<<< orphan*/  mutex; struct tea5764_regs regs; struct i2c_client* i2c_client; struct v4l2_ctrl_handler ctrl_handler; struct v4l2_device v4l2_dev; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ TEA5764_CHIPID ; 
 int TEA5764_MANID ; 
 int V4L2_CAP_RADIO ; 
 int V4L2_CAP_TUNER ; 
 int /*<<< orphan*/  V4L2_CID_AUDIO_MUTE ; 
 int /*<<< orphan*/  V4L2_TUNER_MODE_STEREO ; 
 int /*<<< orphan*/  VFL_TYPE_RADIO ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,struct tea5764_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct tea5764_device*) ; 
 struct tea5764_device* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  radio_nr ; 
 int /*<<< orphan*/  tea5764_ctrl_ops ; 
 int FUNC7 (struct tea5764_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct tea5764_device*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct tea5764_device*) ; 
 TYPE_1__ tea5764_radio_template ; 
 int /*<<< orphan*/  FUNC10 (struct tea5764_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct v4l2_ctrl_handler*) ; 
 int /*<<< orphan*/  FUNC12 (struct v4l2_ctrl_handler*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct v4l2_ctrl_handler*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC14 (int /*<<< orphan*/ *,struct v4l2_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct v4l2_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct v4l2_device*,char*) ; 
 int FUNC17 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*,struct tea5764_device*) ; 

__attribute__((used)) static int FUNC19(struct i2c_client *client,
			     const struct i2c_device_id *id)
{
	struct tea5764_device *radio;
	struct v4l2_device *v4l2_dev;
	struct v4l2_ctrl_handler *hdl;
	struct tea5764_regs *r;
	int ret;

	FUNC0("probe");
	radio = FUNC5(sizeof(struct tea5764_device), GFP_KERNEL);
	if (!radio)
		return -ENOMEM;

	v4l2_dev = &radio->v4l2_dev;
	ret = FUNC14(&client->dev, v4l2_dev);
	if (ret < 0) {
		FUNC16(v4l2_dev, "could not register v4l2_device\n");
		goto errfr;
	}

	hdl = &radio->ctrl_handler;
	FUNC12(hdl, 1);
	FUNC13(hdl, &tea5764_ctrl_ops,
			V4L2_CID_AUDIO_MUTE, 0, 1, 1, 1);
	v4l2_dev->ctrl_handler = hdl;
	if (hdl->error) {
		ret = hdl->error;
		FUNC16(v4l2_dev, "Could not register controls\n");
		goto errunreg;
	}

	FUNC6(&radio->mutex);
	radio->i2c_client = client;
	ret = FUNC7(radio);
	if (ret)
		goto errunreg;
	r = &radio->regs;
	FUNC0("chipid = %04X, manid = %04X", r->chipid, r->manid);
	if (r->chipid != TEA5764_CHIPID ||
		(r->manid & 0x0fff) != TEA5764_MANID) {
		FUNC2("This chip is not a TEA5764!");
		ret = -EINVAL;
		goto errunreg;
	}

	radio->vdev = tea5764_radio_template;

	FUNC3(client, radio);
	FUNC18(&radio->vdev, radio);
	radio->vdev.lock = &radio->mutex;
	radio->vdev.v4l2_dev = v4l2_dev;
	radio->vdev.device_caps = V4L2_CAP_TUNER | V4L2_CAP_RADIO;

	/* initialize and power off the chip */
	FUNC7(radio);
	FUNC10(radio, V4L2_TUNER_MODE_STEREO);
	FUNC8(radio, 1);
	FUNC9(radio);

	ret = FUNC17(&radio->vdev, VFL_TYPE_RADIO, radio_nr);
	if (ret < 0) {
		FUNC2("Could not register video device!");
		goto errunreg;
	}

	FUNC1("registered.");
	return 0;
errunreg:
	FUNC11(hdl);
	FUNC15(v4l2_dev);
errfr:
	FUNC4(radio);
	return ret;
}