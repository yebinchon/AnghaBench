#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct dvb_usb_device {TYPE_1__* udev; struct cxusb_medion_dev* priv; } ;
struct cxusb_medion_dev {TYPE_2__* radiodev; int /*<<< orphan*/  dev_lock; int /*<<< orphan*/  v4l2dev; } ;
struct TYPE_7__ {int /*<<< orphan*/ * lock; int /*<<< orphan*/  (* release ) (TYPE_2__*) ;int /*<<< orphan*/ * ioctl_ops; int /*<<< orphan*/  vfl_dir; int /*<<< orphan*/  name; int /*<<< orphan*/ * v4l2_dev; int /*<<< orphan*/ * fops; int /*<<< orphan*/  device_caps; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  VFL_DIR_RX ; 
 int /*<<< orphan*/  VFL_TYPE_RADIO ; 
 int /*<<< orphan*/  cxusb_radio_fops ; 
 int /*<<< orphan*/  cxusb_radio_ioctl ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  radiocaps ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 TYPE_2__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,struct dvb_usb_device*) ; 

__attribute__((used)) static int FUNC6(struct dvb_usb_device *dvbdev)
{
	struct cxusb_medion_dev *cxdev = dvbdev->priv;
	int ret;

	cxdev->radiodev = FUNC2();
	if (!cxdev->radiodev) {
		FUNC0(&dvbdev->udev->dev, "radio device alloc failed\n");
		return -ENOMEM;
	}

	cxdev->radiodev->device_caps = radiocaps;
	cxdev->radiodev->fops = &cxusb_radio_fops;
	cxdev->radiodev->v4l2_dev = &cxdev->v4l2dev;
	FUNC1(cxdev->radiodev->name, "cxusb", sizeof(cxdev->radiodev->name));
	cxdev->radiodev->vfl_dir = VFL_DIR_RX;
	cxdev->radiodev->ioctl_ops = &cxusb_radio_ioctl;
	cxdev->radiodev->release = video_device_release;
	cxdev->radiodev->lock = &cxdev->dev_lock;
	FUNC5(cxdev->radiodev, dvbdev);

	ret = FUNC4(cxdev->radiodev, VFL_TYPE_RADIO, -1);
	if (ret) {
		FUNC0(&dvbdev->udev->dev,
			"radio device register failed, ret = %d\n", ret);
		FUNC3(cxdev->radiodev);
		return ret;
	}

	return 0;
}