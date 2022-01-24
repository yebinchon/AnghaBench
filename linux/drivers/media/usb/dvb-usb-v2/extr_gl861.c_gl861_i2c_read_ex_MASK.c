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
typedef  scalar_t__ u16 ;
struct dvb_usb_device {int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GL861_READ ; 
 int /*<<< orphan*/  GL861_REQ_I2C_READ ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int* FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct dvb_usb_device *d, u8 addr, u8 *rbuf, u16 rlen)
{
	u8 *buf;
	int ret;

	buf = FUNC1(rlen, GFP_KERNEL);
	if (!buf)
		return -ENOMEM;

	ret = FUNC3(d->udev, FUNC4(d->udev, 0),
				 GL861_REQ_I2C_READ, GL861_READ,
				 addr << (8 + 1), 0x0100, buf, rlen, 2000);
	if (ret > 0 && rlen > 0)
		FUNC2(buf, rbuf, rlen);
	FUNC0(buf);
	return ret;
}