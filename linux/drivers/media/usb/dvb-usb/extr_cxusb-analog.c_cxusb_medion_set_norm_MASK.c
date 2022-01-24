#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int v4l2_std_id ;
struct dvb_usb_device {TYPE_1__* udev; } ;
struct cxusb_medion_dev {scalar_t__ input; int norm; int /*<<< orphan*/  cx25840; int /*<<< orphan*/  tuner; int /*<<< orphan*/  tda9887; struct dvb_usb_device* dvbdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  OPS ; 
 int V4L2_STD_PAL ; 
 int V4L2_STD_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (struct dvb_usb_device*,int /*<<< orphan*/ ,char*,unsigned int,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  s_std ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  video ; 

__attribute__((used)) static int FUNC3(struct cxusb_medion_dev *cxdev,
				 v4l2_std_id norm)
{
	struct dvb_usb_device *dvbdev = cxdev->dvbdev;
	int ret;

	FUNC0(dvbdev, OPS,
		      "trying to set standard for input %u to %lx\n",
		      (unsigned int)cxdev->input,
		      (unsigned long)norm);

	/* no autodetection support */
	if (norm == V4L2_STD_UNKNOWN)
		return -EINVAL;

	/* on composite or S-Video any std is acceptable */
	if (cxdev->input != 0) {
		ret = FUNC2(cxdev->cx25840, video, s_std, norm);
		if (ret)
			return ret;

		goto ret_savenorm;
	}

	/* TV tuner is only able to demodulate PAL */
	if ((norm & ~V4L2_STD_PAL) != 0)
		return -EINVAL;

	ret = FUNC2(cxdev->tda9887, video, s_std, norm);
	if (ret != 0) {
		FUNC1(&dvbdev->udev->dev,
			"tda9887 norm setup failed (%d)\n",
			ret);
		return ret;
	}

	ret = FUNC2(cxdev->tuner, video, s_std, norm);
	if (ret != 0) {
		FUNC1(&dvbdev->udev->dev,
			"tuner norm setup failed (%d)\n",
			ret);
		return ret;
	}

	ret = FUNC2(cxdev->cx25840, video, s_std, norm);
	if (ret != 0) {
		FUNC1(&dvbdev->udev->dev,
			"cx25840 norm setup failed (%d)\n",
			ret);
		return ret;
	}

ret_savenorm:
	cxdev->norm = norm;

	return 0;
}