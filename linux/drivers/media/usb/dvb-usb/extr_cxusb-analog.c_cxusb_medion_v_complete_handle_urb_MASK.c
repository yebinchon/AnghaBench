#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct urb {int number_of_packets; TYPE_1__* iso_frame_desc; int /*<<< orphan*/  status; } ;
struct dvb_usb_device {TYPE_2__* udev; } ;
struct cxusb_medion_dev {unsigned int nexturb; int /*<<< orphan*/  urbcomplete; int /*<<< orphan*/  auxbuf; struct urb** streamurbs; struct dvb_usb_device* dvbdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {scalar_t__ actual_length; } ;

/* Variables and functions */
 unsigned int CXUSB_VIDEO_URBS ; 
 int /*<<< orphan*/  EXDEV ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  URB ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct dvb_usb_device*,int /*<<< orphan*/ *,struct urb*) ; 
 int /*<<< orphan*/  FUNC2 (struct dvb_usb_device*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,unsigned int,int) ; 
 int FUNC4 (unsigned int,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct urb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC6(struct cxusb_medion_dev *cxdev,
					       bool *auxbuf_reset)
{
	struct dvb_usb_device *dvbdev = cxdev->dvbdev;
	unsigned int urbn;
	struct urb *urb;
	int ret;

	*auxbuf_reset = false;

	urbn = cxdev->nexturb;
	if (!FUNC4(urbn, &cxdev->urbcomplete))
		return false;

	FUNC0(urbn, &cxdev->urbcomplete);

	do {
		cxdev->nexturb++;
		cxdev->nexturb %= CXUSB_VIDEO_URBS;
		urb = cxdev->streamurbs[cxdev->nexturb];
	} while (!urb);

	urb = cxdev->streamurbs[urbn];
	FUNC2(dvbdev, URB, "URB %u status = %d\n", urbn, urb->status);

	if (urb->status == 0 || urb->status == -EXDEV) {
		int i;
		unsigned long len;

		for (i = 0, len = 0; i < urb->number_of_packets; i++)
			len += urb->iso_frame_desc[i].actual_length;

		FUNC2(dvbdev, URB, "URB %u data len = %lu\n", urbn,
			      len);

		if (len > 0) {
			FUNC2(dvbdev, URB, "appending URB\n");

			/*
			 * append new data to auxbuf while
			 * overwriting old data if necessary
			 *
			 * if any overwrite happens then we can no
			 * longer rely on consistency of the whole
			 * data so let's start again the current
			 * auxbuf frame assembling process from
			 * the beginning
			 */
			*auxbuf_reset =
				!FUNC1(dvbdev,
							 &cxdev->auxbuf,
							 urb);
		}
	}

	FUNC2(dvbdev, URB, "URB %u resubmit\n", urbn);

	ret = FUNC5(urb, GFP_KERNEL);
	if (ret != 0)
		FUNC3(&dvbdev->udev->dev,
			"unable to resubmit URB %u (%d), you'll have to restart streaming\n",
			urbn, ret);

	/* next URB is complete already? reschedule us then to handle it */
	return FUNC4(cxdev->nexturb, &cxdev->urbcomplete);
}