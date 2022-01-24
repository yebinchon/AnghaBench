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
struct cxusb_medion_dev {scalar_t__ open_type; int open_ctr; int /*<<< orphan*/  open_lock; } ;

/* Variables and functions */
 scalar_t__ CXUSB_OPEN_ANALOG ; 
 scalar_t__ CXUSB_OPEN_INIT ; 
 scalar_t__ CXUSB_OPEN_NONE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct dvb_usb_device *dvbdev)
{
	struct cxusb_medion_dev *cxdev = dvbdev->priv;

	FUNC2(&cxdev->open_lock);

	if (cxdev->open_type == CXUSB_OPEN_INIT) {
		FUNC0(cxdev->open_ctr != 0);
		cxdev->open_type = CXUSB_OPEN_NONE;
		goto unlock;
	}

	if (!FUNC0(cxdev->open_ctr < 1)) {
		cxdev->open_ctr--;

		FUNC1("release %s\n",
			 cxdev->open_type == CXUSB_OPEN_ANALOG ?
			 "analog" : "digital");
	}

unlock:
	FUNC3(&cxdev->open_lock);
}