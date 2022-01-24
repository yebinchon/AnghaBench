#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct v4l2_subdev {int /*<<< orphan*/  ctrl_handler; } ;
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct usb_device_id {int /*<<< orphan*/  idProduct; int /*<<< orphan*/  idVendor; } ;
struct TYPE_9__ {int /*<<< orphan*/  name; int /*<<< orphan*/  release; } ;
struct TYPE_8__ {int device_caps; int /*<<< orphan*/  vfl_dir; int /*<<< orphan*/  release; int /*<<< orphan*/ * lock; int /*<<< orphan*/ * ioctl_ops; int /*<<< orphan*/ * fops; TYPE_4__* v4l2_dev; int /*<<< orphan*/  name; int /*<<< orphan*/  ctrl_handler; } ;
struct i2c_adapter {int dummy; } ;
struct si4713_usb_device {struct si4713_usb_device* buffer; TYPE_4__ v4l2_dev; TYPE_1__ vdev; int /*<<< orphan*/  lock; struct v4l2_subdev* v4l2_subdev; struct i2c_adapter i2c_adapter; struct usb_interface* intf; int /*<<< orphan*/  usbdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUFFER_LENGTH ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int V4L2_CAP_MODULATOR ; 
 int V4L2_CAP_RDS_OUTPUT ; 
 int /*<<< orphan*/  VFL_DIR_TX ; 
 int /*<<< orphan*/  VFL_TYPE_RADIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC4 (struct si4713_usb_device*) ; 
 struct si4713_usb_device* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct si4713_usb_device* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  si4713_board_info ; 
 int FUNC8 (struct si4713_usb_device*) ; 
 int FUNC9 (struct si4713_usb_device*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct usb_interface*,TYPE_4__*) ; 
 int /*<<< orphan*/  usb_si4713_fops ; 
 int /*<<< orphan*/  usb_si4713_ioctl_ops ; 
 int /*<<< orphan*/  usb_si4713_video_device_release ; 
 int FUNC12 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*) ; 
 struct v4l2_subdev* FUNC14 (TYPE_4__*,struct i2c_adapter*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  video_device_release_empty ; 
 int FUNC16 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,struct si4713_usb_device*) ; 

__attribute__((used)) static int FUNC18(struct usb_interface *intf,
				const struct usb_device_id *id)
{
	struct si4713_usb_device *radio;
	struct i2c_adapter *adapter;
	struct v4l2_subdev *sd;
	int retval = -ENOMEM;

	FUNC1(&intf->dev, "Si4713 development board discovered: (%04X:%04X)\n",
			id->idVendor, id->idProduct);

	/* Initialize local device structure */
	radio = FUNC6(sizeof(struct si4713_usb_device), GFP_KERNEL);
	if (radio)
		radio->buffer = FUNC5(BUFFER_LENGTH, GFP_KERNEL);

	if (!radio || !radio->buffer) {
		FUNC0(&intf->dev, "kmalloc for si4713_usb_device failed\n");
		FUNC4(radio);
		return -ENOMEM;
	}

	FUNC7(&radio->lock);

	radio->usbdev = FUNC3(intf);
	radio->intf = intf;
	FUNC11(intf, &radio->v4l2_dev);

	retval = FUNC9(radio);
	if (retval < 0)
		goto err_v4l2;

	retval = FUNC12(&intf->dev, &radio->v4l2_dev);
	if (retval < 0) {
		FUNC0(&intf->dev, "couldn't register v4l2_device\n");
		goto err_v4l2;
	}

	retval = FUNC8(radio);
	if (retval < 0) {
		FUNC0(&intf->dev, "could not register i2c device\n");
		goto err_i2cdev;
	}

	adapter = &radio->i2c_adapter;
	sd = FUNC14(&radio->v4l2_dev, adapter,
					  &si4713_board_info, NULL);
	radio->v4l2_subdev = sd;
	if (!sd) {
		FUNC0(&intf->dev, "cannot get v4l2 subdevice\n");
		retval = -ENODEV;
		goto del_adapter;
	}

	radio->vdev.ctrl_handler = sd->ctrl_handler;
	radio->v4l2_dev.release = usb_si4713_video_device_release;
	FUNC10(radio->vdev.name, radio->v4l2_dev.name,
		sizeof(radio->vdev.name));
	radio->vdev.v4l2_dev = &radio->v4l2_dev;
	radio->vdev.fops = &usb_si4713_fops;
	radio->vdev.ioctl_ops = &usb_si4713_ioctl_ops;
	radio->vdev.lock = &radio->lock;
	radio->vdev.release = video_device_release_empty;
	radio->vdev.vfl_dir = VFL_DIR_TX;
	radio->vdev.device_caps = V4L2_CAP_MODULATOR | V4L2_CAP_RDS_OUTPUT;

	FUNC17(&radio->vdev, radio);

	retval = FUNC16(&radio->vdev, VFL_TYPE_RADIO, -1);
	if (retval < 0) {
		FUNC0(&intf->dev, "could not register video device\n");
		goto del_adapter;
	}

	FUNC1(&intf->dev, "V4L2 device registered as %s\n",
			FUNC15(&radio->vdev));

	return 0;

del_adapter:
	FUNC2(adapter);
err_i2cdev:
	FUNC13(&radio->v4l2_dev);
err_v4l2:
	FUNC4(radio->buffer);
	FUNC4(radio);
	return retval;
}