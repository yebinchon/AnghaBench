#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vb2_queue {int dummy; } ;
struct dvb_usb_device {TYPE_1__* udev; struct cxusb_medion_dev* priv; } ;
struct TYPE_6__ {int /*<<< orphan*/  buf; } ;
struct cxusb_medion_dev {int stop_streaming; TYPE_3__ auxbuf; TYPE_2__* videodev; int /*<<< orphan*/  urbwork; scalar_t__* streamurbs; int /*<<< orphan*/  cx25840; } ;
struct TYPE_5__ {int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_STREAMING_OFF ; 
 unsigned int CXUSB_VIDEO_URBS ; 
 int /*<<< orphan*/  OPS ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct dvb_usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cxusb_medion_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct cxusb_medion_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct dvb_usb_device*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  s_stream ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dvb_usb_device* FUNC11 (struct vb2_queue*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  video ; 

__attribute__((used)) static void FUNC13(struct vb2_queue *q)
{
	struct dvb_usb_device *dvbdev = FUNC11(q);
	struct cxusb_medion_dev *cxdev = dvbdev->priv;
	int ret;
	unsigned int i;

	FUNC4(dvbdev, OPS, "should stop streaming\n");

	if (FUNC0(cxdev->stop_streaming))
		return;

	cxdev->stop_streaming = true;

	FUNC1(dvbdev, CMD_STREAMING_OFF, NULL, 0, NULL, 0);

	ret = FUNC10(cxdev->cx25840, video, s_stream, 0);
	if (ret != 0)
		FUNC5(&dvbdev->udev->dev, "unable to stop stream (%d)\n",
			ret);

	/* let URB completion run */
	FUNC8(cxdev->videodev->lock);

	for (i = 0; i < CXUSB_VIDEO_URBS; i++)
		if (cxdev->streamurbs[i])
			FUNC9(cxdev->streamurbs[i]);

	FUNC6(&cxdev->urbwork);

	FUNC7(cxdev->videodev->lock);

	/* free transfer buffer and URB */
	FUNC12(cxdev->auxbuf.buf);

	FUNC3(cxdev);

	FUNC2(cxdev, false);

	cxdev->stop_streaming = false;
}