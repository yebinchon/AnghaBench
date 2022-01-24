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
struct dvb_usb_device {int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int FUNC0 (int const**) ; 
 int ENODEV ; 
 int FUNC1 (struct dvb_usb_device*,int,int*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct dvb_usb_device*,int,int*,int) ; 
 int FUNC3 (struct dvb_usb_device*,int,int*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static int FUNC6(struct dvb_usb_device *d)
{
	int i, ret;
	u8 wbuf[2], rbuf[2];

	static const u8 friio_init_cmds[][2] = {
		{0x33, 0x08}, {0x37, 0x40}, {0x3a, 0x1f}, {0x3b, 0xff},
		{0x3c, 0x1f}, {0x3d, 0xff}, {0x38, 0x00}, {0x35, 0x00},
		{0x39, 0x00}, {0x36, 0x00},
	};

	ret = FUNC4(d->udev, 0, 0);
	if (ret < 0)
		return ret;

	wbuf[0] = 0x11;
	wbuf[1] = 0x02;
	ret = FUNC1(d, 0x00, wbuf, 2, NULL, 0);
	if (ret < 0)
		return ret;
	FUNC5(2000, 3000);

	wbuf[0] = 0x11;
	wbuf[1] = 0x00;
	ret = FUNC1(d, 0x00, wbuf, 2, NULL, 0);
	if (ret < 0)
		return ret;

	/*
	 * Check if the dev is really a Friio White, since it might be
	 * another device, Friio Black, with the same VID/PID.
	 */

	FUNC5(1000, 2000);
	wbuf[0] = 0x03;
	wbuf[1] = 0x80;
	ret = FUNC3(d, 0x09, wbuf, 2);
	if (ret < 0)
		return ret;

	FUNC5(2000, 3000);
	ret = FUNC2(d, 0x09, rbuf, 2);
	if (ret < 0)
		return ret;
	if (rbuf[0] != 0xff || rbuf[1] != 0xff)
		return -ENODEV;


	FUNC5(1000, 2000);
	ret = FUNC3(d, 0x48, wbuf, 2);
	if (ret < 0)
		return ret;

	FUNC5(2000, 3000);
	ret = FUNC2(d, 0x48, rbuf, 2);
	if (ret < 0)
		return ret;
	if (rbuf[0] != 0xff || rbuf[1] != 0xff)
		return -ENODEV;

	wbuf[0] = 0x30;
	wbuf[1] = 0x04;
	ret = FUNC1(d, 0x00, wbuf, 2, NULL, 0);
	if (ret < 0)
		return ret;

	wbuf[0] = 0x00;
	wbuf[1] = 0x01;
	ret = FUNC1(d, 0x00, wbuf, 2, NULL, 0);
	if (ret < 0)
		return ret;

	wbuf[0] = 0x06;
	wbuf[1] = 0x0f;
	ret = FUNC1(d, 0x00, wbuf, 2, NULL, 0);
	if (ret < 0)
		return ret;

	for (i = 0; i < FUNC0(friio_init_cmds); i++) {
		ret = FUNC1(d, 0x00, (u8 *)friio_init_cmds[i], 2,
				      NULL, 0);
		if (ret < 0)
			return ret;
	}
	return 0;
}