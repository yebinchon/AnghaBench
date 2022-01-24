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
typedef  int /*<<< orphan*/  u8 ;
struct dvb_usb_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIBUSB_IOCTL_CMD_POWER_MODE ; 
 int /*<<< orphan*/  DIBUSB_IOCTL_POWER_WAKEUP ; 
 int /*<<< orphan*/  DIBUSB_REQ_SET_IOCTL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct dvb_usb_device*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int,int /*<<< orphan*/ ) ; 

int FUNC3(struct dvb_usb_device *d, int onoff)
{
	u8 *b;
	int ret;

	if (!onoff)
		return 0;

	b = FUNC2(3, GFP_KERNEL);
	if (!b)
		return -ENOMEM;

	b[0] = DIBUSB_REQ_SET_IOCTL;
	b[1] = DIBUSB_IOCTL_CMD_POWER_MODE;
	b[2] = DIBUSB_IOCTL_POWER_WAKEUP;

	ret = FUNC0(d, b, 3);

	FUNC1(b);

	return ret;
}