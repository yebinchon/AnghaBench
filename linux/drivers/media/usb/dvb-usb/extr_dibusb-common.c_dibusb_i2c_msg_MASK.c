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
typedef  int u16 ;
struct dvb_usb_device {int dummy; } ;

/* Variables and functions */
 int DIBUSB_REQ_I2C_READ ; 
 int DIBUSB_REQ_I2C_WRITE ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MAX_XFER_SIZE ; 
 int FUNC0 (struct dvb_usb_device*,int*,int,int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

__attribute__((used)) static int FUNC5(struct dvb_usb_device *d, u8 addr,
			  u8 *wbuf, u16 wlen, u8 *rbuf, u16 rlen)
{
	u8 *sndbuf;
	int ret, wo, len;

	/* write only ? */
	wo = (rbuf == NULL || rlen == 0);

	len = 2 + wlen + (wo ? 0 : 2);

	sndbuf = FUNC2(MAX_XFER_SIZE, GFP_KERNEL);
	if (!sndbuf)
		return -ENOMEM;

	if (4 + wlen > MAX_XFER_SIZE) {
		FUNC4("i2c wr: len=%d is too big!\n", wlen);
		ret = -EOPNOTSUPP;
		goto ret;
	}

	sndbuf[0] = wo ? DIBUSB_REQ_I2C_WRITE : DIBUSB_REQ_I2C_READ;
	sndbuf[1] = (addr << 1) | (wo ? 0 : 1);

	FUNC3(&sndbuf[2], wbuf, wlen);

	if (!wo) {
		sndbuf[wlen + 2] = (rlen >> 8) & 0xff;
		sndbuf[wlen + 3] = rlen & 0xff;
	}

	ret = FUNC0(d, sndbuf, len, rbuf, rlen, 0);

ret:
	FUNC1(sndbuf);
	return ret;
}