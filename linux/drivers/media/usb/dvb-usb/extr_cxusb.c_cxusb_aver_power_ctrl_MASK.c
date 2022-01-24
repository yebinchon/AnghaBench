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
typedef  int u8 ;
struct dvb_usb_device {scalar_t__ state; int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int FUNC0 (int const*) ; 
 int CMD_I2C_WRITE ; 
 int CMD_POWER_OFF ; 
 int CMD_POWER_ON ; 
 scalar_t__ DVB_USB_STATE_INIT ; 
 int EREMOTEIO ; 
 int FUNC1 (struct dvb_usb_device*,int,int const*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct dvb_usb_device *d, int onoff)
{
	int ret;

	if (!onoff)
		return FUNC1(d, CMD_POWER_OFF, NULL, 0, NULL, 0);
	if (d->state == DVB_USB_STATE_INIT &&
	    FUNC4(d->udev, 0, 0) < 0)
		FUNC2("set interface failed");
	do {
		/* Nothing */
	} while (!(ret = FUNC1(d, CMD_POWER_ON, NULL, 0, NULL, 0)) &&
		 !(ret = FUNC1(d, 0x15, NULL, 0, NULL, 0)) &&
		 !(ret = FUNC1(d, 0x17, NULL, 0, NULL, 0)) && 0);

	if (!ret) {
		/*
		 * FIXME: We don't know why, but we need to configure the
		 * lgdt3303 with the register settings below on resume
		 */
		int i;
		u8 buf;
		static const u8 bufs[] = {
			0x0e, 0x2, 0x00, 0x7f,
			0x0e, 0x2, 0x02, 0xfe,
			0x0e, 0x2, 0x02, 0x01,
			0x0e, 0x2, 0x00, 0x03,
			0x0e, 0x2, 0x0d, 0x40,
			0x0e, 0x2, 0x0e, 0x87,
			0x0e, 0x2, 0x0f, 0x8e,
			0x0e, 0x2, 0x10, 0x01,
			0x0e, 0x2, 0x14, 0xd7,
			0x0e, 0x2, 0x47, 0x88,
		};
		FUNC3(20);
		for (i = 0; i < FUNC0(bufs); i += 4 / sizeof(u8)) {
			ret = FUNC1(d, CMD_I2C_WRITE,
					     bufs + i, 4, &buf, 1);
			if (ret)
				break;
			if (buf != 0x8)
				return -EREMOTEIO;
		}
	}
	return ret;
}