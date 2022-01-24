#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct dvb_usb_device {struct cxusb_medion_dev* priv; } ;
struct cxusb_medion_dev {int /*<<< orphan*/  v4l2_release; int /*<<< orphan*/  v4l2dev; int /*<<< orphan*/  videodev; int /*<<< orphan*/  radiodev; } ;

/* Variables and functions */
 int /*<<< orphan*/  OPS ; 
 int /*<<< orphan*/  FUNC0 (struct dvb_usb_device*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct dvb_usb_device *dvbdev)
{
	struct cxusb_medion_dev *cxdev = dvbdev->priv;

	FUNC0(dvbdev, OPS, "unregistering analog\n");

	FUNC2(cxdev->radiodev);
	FUNC2(cxdev->videodev);

	FUNC1(&cxdev->v4l2dev);
	FUNC3(&cxdev->v4l2_release);

	FUNC0(dvbdev, OPS, "analog unregistered\n");
}