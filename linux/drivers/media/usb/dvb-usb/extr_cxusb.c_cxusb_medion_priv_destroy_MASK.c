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
struct cxusb_medion_dev {int /*<<< orphan*/  open_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct dvb_usb_device *dvbdev)
{
	struct cxusb_medion_dev *cxdev = dvbdev->priv;

	FUNC0(&cxdev->open_lock);
}