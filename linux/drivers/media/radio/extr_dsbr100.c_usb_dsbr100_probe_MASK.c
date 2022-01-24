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
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct v4l2_device {int /*<<< orphan*/  name; int /*<<< orphan*/  release; } ;
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_7__ {int error; } ;
struct TYPE_6__ {int device_caps; TYPE_3__* ctrl_handler; int /*<<< orphan*/ * lock; int /*<<< orphan*/  release; int /*<<< orphan*/ * ioctl_ops; int /*<<< orphan*/ * fops; struct v4l2_device* v4l2_dev; int /*<<< orphan*/  name; } ;
struct dsbr100_device {int curfreq; int muted; struct dsbr100_device* transfer_buffer; TYPE_3__ hdl; TYPE_1__ videodev; int /*<<< orphan*/  usbdev; int /*<<< orphan*/  v4l2_lock; struct v4l2_device v4l2_dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FREQ_MIN ; 
 int FREQ_MUL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  TB_LEN ; 
 int V4L2_CAP_RADIO ; 
 int V4L2_CAP_TUNER ; 
 int /*<<< orphan*/  V4L2_CID_AUDIO_MUTE ; 
 int /*<<< orphan*/  VFL_TYPE_RADIO ; 
 int /*<<< orphan*/  FUNC0 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC1 (struct dsbr100_device*) ; 
 struct dsbr100_device* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dsbr100_device* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  radio_nr ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  usb_dsbr100_ctrl_ops ; 
 int /*<<< orphan*/  usb_dsbr100_fops ; 
 int /*<<< orphan*/  usb_dsbr100_ioctl_ops ; 
 int /*<<< orphan*/  usb_dsbr100_release ; 
 int /*<<< orphan*/  FUNC6 (struct usb_interface*,struct dsbr100_device*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC10 (int /*<<< orphan*/ *,struct v4l2_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct v4l2_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct v4l2_device*,char*) ; 
 int /*<<< orphan*/  video_device_release_empty ; 
 int FUNC13 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,struct dsbr100_device*) ; 

__attribute__((used)) static int FUNC15(struct usb_interface *intf,
				const struct usb_device_id *id)
{
	struct dsbr100_device *radio;
	struct v4l2_device *v4l2_dev;
	int retval;

	radio = FUNC3(sizeof(struct dsbr100_device), GFP_KERNEL);

	if (!radio)
		return -ENOMEM;

	radio->transfer_buffer = FUNC2(TB_LEN, GFP_KERNEL);

	if (!(radio->transfer_buffer)) {
		FUNC1(radio);
		return -ENOMEM;
	}

	v4l2_dev = &radio->v4l2_dev;
	v4l2_dev->release = usb_dsbr100_release;

	retval = FUNC10(&intf->dev, v4l2_dev);
	if (retval < 0) {
		FUNC12(v4l2_dev, "couldn't register v4l2_device\n");
		goto err_reg_dev;
	}

	FUNC8(&radio->hdl, 1);
	FUNC9(&radio->hdl, &usb_dsbr100_ctrl_ops,
			  V4L2_CID_AUDIO_MUTE, 0, 1, 1, 1);
	if (radio->hdl.error) {
		retval = radio->hdl.error;
		FUNC12(v4l2_dev, "couldn't register control\n");
		goto err_reg_ctrl;
	}
	FUNC4(&radio->v4l2_lock);
	FUNC5(radio->videodev.name, v4l2_dev->name,
		sizeof(radio->videodev.name));
	radio->videodev.v4l2_dev = v4l2_dev;
	radio->videodev.fops = &usb_dsbr100_fops;
	radio->videodev.ioctl_ops = &usb_dsbr100_ioctl_ops;
	radio->videodev.release = video_device_release_empty;
	radio->videodev.lock = &radio->v4l2_lock;
	radio->videodev.ctrl_handler = &radio->hdl;
	radio->videodev.device_caps = V4L2_CAP_RADIO | V4L2_CAP_TUNER;

	radio->usbdev = FUNC0(intf);
	radio->curfreq = FREQ_MIN * FREQ_MUL;
	radio->muted = true;

	FUNC14(&radio->videodev, radio);
	FUNC6(intf, radio);

	retval = FUNC13(&radio->videodev, VFL_TYPE_RADIO, radio_nr);
	if (retval == 0)
		return 0;
	FUNC12(v4l2_dev, "couldn't register video device\n");

err_reg_ctrl:
	FUNC7(&radio->hdl);
	FUNC11(v4l2_dev);
err_reg_dev:
	FUNC1(radio->transfer_buffer);
	FUNC1(radio);
	return retval;
}