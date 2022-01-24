#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct dvb_usb_device {TYPE_1__* udev; struct cxusb_medion_dev* priv; } ;
struct TYPE_5__ {int /*<<< orphan*/  release; } ;
struct cxusb_medion_dev {int width; int height; int /*<<< orphan*/  v4l2_release; TYPE_2__ v4l2dev; int /*<<< orphan*/  videodev; int /*<<< orphan*/  buflist; int /*<<< orphan*/  urbwork; int /*<<< orphan*/  dev_lock; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct dvb_usb_device*) ; 
 int FUNC3 (struct dvb_usb_device*) ; 
 int FUNC4 (struct dvb_usb_device*) ; 
 int /*<<< orphan*/  cxusb_medion_v4l2_release ; 
 int /*<<< orphan*/  cxusb_medion_v_complete_work ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int FUNC10 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

int FUNC13(struct dvb_usb_device *dvbdev)
{
	struct cxusb_medion_dev *cxdev = dvbdev->priv;
	int ret;

	FUNC8(&cxdev->dev_lock);

	FUNC6(&cxdev->v4l2_release);

	cxdev->v4l2dev.release = cxusb_medion_v4l2_release;

	ret = FUNC10(&dvbdev->udev->dev, &cxdev->v4l2dev);
	if (ret != 0) {
		FUNC5(&dvbdev->udev->dev,
			"V4L2 device registration failed, ret = %d\n", ret);
		FUNC7(&cxdev->dev_lock);
		return ret;
	}

	ret = FUNC3(dvbdev);
	if (ret)
		goto ret_unregister;

	FUNC1(&cxdev->urbwork, cxusb_medion_v_complete_work);
	FUNC0(&cxdev->buflist);

	cxdev->width = 320;
	cxdev->height = 240;

	ret = FUNC4(dvbdev);
	if (ret)
		goto ret_unregister;

	ret = FUNC2(dvbdev);
	if (ret)
		goto ret_vunreg;

	return 0;

ret_vunreg:
	FUNC11(cxdev->videodev);

ret_unregister:
	FUNC9(&cxdev->v4l2dev);
	FUNC12(&cxdev->v4l2_release);

	return ret;
}