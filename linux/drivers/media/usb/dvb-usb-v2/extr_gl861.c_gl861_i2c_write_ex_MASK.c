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
typedef  int /*<<< orphan*/  u16 ;
struct dvb_usb_device {int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GL861_REQ_I2C_RAW ; 
 int /*<<< orphan*/  GL861_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int* FUNC1 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct dvb_usb_device *d, u8 addr, u8 *wbuf, u16 wlen)
{
	u8 *buf;
	int ret;

	buf = FUNC1(wbuf, wlen, GFP_KERNEL);
	if (!buf)
		return -ENOMEM;

	ret = FUNC2(d->udev, FUNC3(d->udev, 0),
				 GL861_REQ_I2C_RAW, GL861_WRITE,
				 addr << (8 + 1), 0x0100, buf, wlen, 2000);
	FUNC0(buf);
	return ret;
}