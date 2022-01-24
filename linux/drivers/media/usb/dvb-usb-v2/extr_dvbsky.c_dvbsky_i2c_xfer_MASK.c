#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct i2c_msg {int len; int flags; int addr; int* buf; } ;
struct i2c_adapter {int dummy; } ;
struct dvb_usb_device {int /*<<< orphan*/  i2c_mutex; TYPE_1__* udev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EOPNOTSUPP ; 
 int I2C_M_RD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,...) ; 
 int FUNC1 (struct dvb_usb_device*,int*,int,int*,int) ; 
 struct dvb_usb_device* FUNC2 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct i2c_adapter *adap, struct i2c_msg msg[],
	int num)
{
	struct dvb_usb_device *d = FUNC2(adap);
	int ret = 0;
	u8 ibuf[64], obuf[64];

	if (FUNC4(&d->i2c_mutex) < 0)
		return -EAGAIN;

	if (num > 2) {
		FUNC0(&d->udev->dev,
		"too many i2c messages[%d], max 2.", num);
		ret = -EOPNOTSUPP;
		goto i2c_error;
	}

	if (num == 1) {
		if (msg[0].len > 60) {
			FUNC0(&d->udev->dev,
			"too many i2c bytes[%d], max 60.",
			msg[0].len);
			ret = -EOPNOTSUPP;
			goto i2c_error;
		}
		if (msg[0].flags & I2C_M_RD) {
			/* single read */
			obuf[0] = 0x09;
			obuf[1] = 0;
			obuf[2] = msg[0].len;
			obuf[3] = msg[0].addr;
			ret = FUNC1(d, obuf, 4,
					ibuf, msg[0].len + 1);
			if (!ret)
				FUNC3(msg[0].buf, &ibuf[1], msg[0].len);
		} else {
			/* write */
			obuf[0] = 0x08;
			obuf[1] = msg[0].addr;
			obuf[2] = msg[0].len;
			FUNC3(&obuf[3], msg[0].buf, msg[0].len);
			ret = FUNC1(d, obuf,
					msg[0].len + 3, ibuf, 1);
		}
	} else {
		if ((msg[0].len > 60) || (msg[1].len > 60)) {
			FUNC0(&d->udev->dev,
			"too many i2c bytes[w-%d][r-%d], max 60.",
			msg[0].len, msg[1].len);
			ret = -EOPNOTSUPP;
			goto i2c_error;
		}
		/* write then read */
		obuf[0] = 0x09;
		obuf[1] = msg[0].len;
		obuf[2] = msg[1].len;
		obuf[3] = msg[0].addr;
		FUNC3(&obuf[4], msg[0].buf, msg[0].len);
		ret = FUNC1(d, obuf,
			msg[0].len + 4, ibuf, msg[1].len + 1);
		if (!ret)
			FUNC3(msg[1].buf, &ibuf[1], msg[1].len);
	}
i2c_error:
	FUNC5(&d->i2c_mutex);
	return (ret) ? ret : num;
}