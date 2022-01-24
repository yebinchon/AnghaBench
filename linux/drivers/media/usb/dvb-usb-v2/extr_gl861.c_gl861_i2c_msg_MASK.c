#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u16 ;
struct dvb_usb_device {TYPE_1__* udev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int GL861_READ ; 
 int GL861_REQ_I2C_READ ; 
 int GL861_REQ_I2C_WRITE ; 
 int GL861_WRITE ; 
 int /*<<< orphan*/  KBUILD_MODNAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int* FUNC3 (int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int*,int*,int) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int,int,int,int,int*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 

__attribute__((used)) static int FUNC8(struct dvb_usb_device *d, u8 addr,
			 u8 *wbuf, u16 wlen, u8 *rbuf, u16 rlen)
{
	u16 index;
	u16 value = addr << (8 + 1);
	int wo = (rbuf == NULL || rlen == 0); /* write-only */
	u8 req, type;
	u8 *buf;
	int ret;

	if (wo) {
		req = GL861_REQ_I2C_WRITE;
		type = GL861_WRITE;
		buf = FUNC3(wbuf, wlen, GFP_KERNEL);
	} else { /* rw */
		req = GL861_REQ_I2C_READ;
		type = GL861_READ;
		buf = FUNC2(rlen, GFP_KERNEL);
	}
	if (!buf)
		return -ENOMEM;

	switch (wlen) {
	case 1:
		index = wbuf[0];
		break;
	case 2:
		index = wbuf[0];
		value = value + wbuf[1];
		break;
	default:
		FUNC0(&d->udev->dev, "%s: wlen=%d, aborting\n",
				KBUILD_MODNAME, wlen);
		FUNC1(buf);
		return -EINVAL;
	}

	FUNC7(1000, 2000); /* avoid I2C errors */

	ret = FUNC5(d->udev, FUNC6(d->udev, 0), req, type,
			      value, index, buf, rlen, 2000);

	if (!wo && ret > 0)
		FUNC4(rbuf, buf, rlen);

	FUNC1(buf);
	return ret;
}