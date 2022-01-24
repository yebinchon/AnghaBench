#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int error; } ;
struct TYPE_7__ {int device_caps; int /*<<< orphan*/  release; int /*<<< orphan*/ * v4l2_dev; int /*<<< orphan*/ * lock; TYPE_3__* ctrl_handler; } ;
struct si470x_device {int band; scalar_t__ (* set_register ) (struct si470x_device*,size_t) ;int* registers; int buf_size; int /*<<< orphan*/  v4l2_dev; TYPE_3__ hdl; TYPE_1__ videodev; int /*<<< orphan*/  read_queue; scalar_t__ rd_index; scalar_t__ wr_index; int /*<<< orphan*/  buffer; scalar_t__ gpio_reset; int /*<<< orphan*/  lock; int /*<<< orphan*/  vidioc_querycap; int /*<<< orphan*/  fops_release; int /*<<< orphan*/  fops_open; int /*<<< orphan*/  get_register; int /*<<< orphan*/  completion; struct i2c_client* client; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 size_t DEVICEID ; 
 int /*<<< orphan*/  DRIVER_NAME ; 
 int EIO ; 
 int ENOMEM ; 
 double FREQ_MUL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_FALLING ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 size_t POWERCFG ; 
 int POWERCFG_ENABLE ; 
 int FUNC1 (scalar_t__) ; 
 int RADIO_FW_VERSION ; 
 size_t SI_CHIPID ; 
 int SI_CHIPID_FIRMWARE ; 
 int V4L2_CAP_HW_FREQ_SEEK ; 
 int V4L2_CAP_RADIO ; 
 int V4L2_CAP_RDS_CAPTURE ; 
 int V4L2_CAP_READWRITE ; 
 int V4L2_CAP_TUNER ; 
 int /*<<< orphan*/  V4L2_CID_AUDIO_MUTE ; 
 int /*<<< orphan*/  V4L2_CID_AUDIO_VOLUME ; 
 int /*<<< orphan*/  VFL_TYPE_RADIO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct si470x_device* FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct si470x_device*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC10 (struct i2c_client*,struct si470x_device*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  radio_nr ; 
 int rds_buf ; 
 int /*<<< orphan*/  si470x_ctrl_ops ; 
 int /*<<< orphan*/  si470x_fops_open ; 
 int /*<<< orphan*/  si470x_fops_release ; 
 scalar_t__ FUNC15 (struct si470x_device*) ; 
 int /*<<< orphan*/  si470x_get_register ; 
 int /*<<< orphan*/  si470x_i2c_interrupt ; 
 int /*<<< orphan*/  FUNC16 (struct si470x_device*,double) ; 
 scalar_t__ FUNC17 (struct si470x_device*,size_t) ; 
 TYPE_1__ si470x_viddev_template ; 
 int /*<<< orphan*/  si470x_vidioc_querycap ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  video_device_release_empty ; 
 int FUNC23 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_1__*,struct si470x_device*) ; 

__attribute__((used)) static int FUNC25(struct i2c_client *client)
{
	struct si470x_device *radio;
	int retval = 0;
	unsigned char version_warning = 0;

	/* private data allocation and initialization */
	radio = FUNC7(&client->dev, sizeof(*radio), GFP_KERNEL);
	if (!radio) {
		retval = -ENOMEM;
		goto err_initial;
	}

	radio->client = client;
	radio->band = 1; /* Default to 76 - 108 MHz */
	FUNC14(&radio->lock);
	FUNC11(&radio->completion);

	radio->get_register = si470x_get_register;
	radio->set_register = si470x_set_register;
	radio->fops_open = si470x_fops_open;
	radio->fops_release = si470x_fops_release;
	radio->vidioc_querycap = si470x_vidioc_querycap;

	retval = FUNC21(&client->dev, &radio->v4l2_dev);
	if (retval < 0) {
		FUNC2(&client->dev, "couldn't register v4l2_device\n");
		goto err_initial;
	}

	FUNC19(&radio->hdl, 2);
	FUNC20(&radio->hdl, &si470x_ctrl_ops,
			V4L2_CID_AUDIO_MUTE, 0, 1, 1, 1);
	FUNC20(&radio->hdl, &si470x_ctrl_ops,
			V4L2_CID_AUDIO_VOLUME, 0, 15, 1, 15);
	if (radio->hdl.error) {
		retval = radio->hdl.error;
		FUNC2(&client->dev, "couldn't register control\n");
		goto err_dev;
	}

	/* video device initialization */
	radio->videodev = si470x_viddev_template;
	radio->videodev.ctrl_handler = &radio->hdl;
	radio->videodev.lock = &radio->lock;
	radio->videodev.v4l2_dev = &radio->v4l2_dev;
	radio->videodev.release = video_device_release_empty;
	radio->videodev.device_caps =
		V4L2_CAP_HW_FREQ_SEEK | V4L2_CAP_READWRITE | V4L2_CAP_TUNER |
		V4L2_CAP_RADIO | V4L2_CAP_RDS_CAPTURE;
	FUNC24(&radio->videodev, radio);

	radio->gpio_reset = FUNC5(&client->dev, "reset",
						    GPIOD_OUT_LOW);
	if (FUNC0(radio->gpio_reset)) {
		retval = FUNC1(radio->gpio_reset);
		FUNC2(&client->dev, "Failed to request gpio: %d\n", retval);
		goto err_all;
	}

	if (radio->gpio_reset)
		FUNC9(radio->gpio_reset, 1);

	/* power up : need 110ms */
	radio->registers[POWERCFG] = POWERCFG_ENABLE;
	if (FUNC17(radio, POWERCFG) < 0) {
		retval = -EIO;
		goto err_all;
	}
	FUNC13(110);

	/* get device and chip versions */
	if (FUNC15(radio) < 0) {
		retval = -EIO;
		goto err_all;
	}
	FUNC3(&client->dev, "DeviceID=0x%4.4hx ChipID=0x%4.4hx\n",
			radio->registers[DEVICEID], radio->registers[SI_CHIPID]);
	if ((radio->registers[SI_CHIPID] & SI_CHIPID_FIRMWARE) < RADIO_FW_VERSION) {
		FUNC4(&client->dev,
			"This driver is known to work with firmware version %hu,\n",
			RADIO_FW_VERSION);
		FUNC4(&client->dev,
			"but the device has firmware version %hu.\n",
			radio->registers[SI_CHIPID] & SI_CHIPID_FIRMWARE);
		version_warning = 1;
	}

	/* give out version warning */
	if (version_warning == 1) {
		FUNC4(&client->dev,
			"If you have some trouble using this driver,\n");
		FUNC4(&client->dev,
			"please report to V4L ML at linux-media@vger.kernel.org\n");
	}

	/* set initial frequency */
	FUNC16(radio, 87.5 * FREQ_MUL); /* available in all regions */

	/* rds buffer allocation */
	radio->buf_size = rds_buf * 3;
	radio->buffer = FUNC6(&client->dev, radio->buf_size, GFP_KERNEL);
	if (!radio->buffer) {
		retval = -EIO;
		goto err_all;
	}

	/* rds buffer configuration */
	radio->wr_index = 0;
	radio->rd_index = 0;
	FUNC12(&radio->read_queue);

	retval = FUNC8(&client->dev, client->irq, NULL,
					   si470x_i2c_interrupt,
					   IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
					   DRIVER_NAME, radio);
	if (retval) {
		FUNC2(&client->dev, "Failed to register interrupt\n");
		goto err_all;
	}

	/* register video device */
	retval = FUNC23(&radio->videodev, VFL_TYPE_RADIO,
			radio_nr);
	if (retval) {
		FUNC4(&client->dev, "Could not register video device\n");
		goto err_all;
	}
	FUNC10(client, radio);

	return 0;
err_all:
	FUNC18(&radio->hdl);
err_dev:
	FUNC22(&radio->v4l2_dev);
err_initial:
	return retval;
}