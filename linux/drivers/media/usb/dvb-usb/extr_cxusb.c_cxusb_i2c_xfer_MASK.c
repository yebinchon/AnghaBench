#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct i2c_msg {int addr; int flags; int len; int* buf; } ;
struct i2c_adapter {int dummy; } ;
struct dvb_usb_device {int /*<<< orphan*/  i2c_mutex; TYPE_2__* udev; } ;
typedef  int /*<<< orphan*/  obuf ;
typedef  int /*<<< orphan*/  ibuf ;
struct TYPE_3__ {int /*<<< orphan*/  idVendor; } ;
struct TYPE_4__ {TYPE_1__ descriptor; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_I2C_READ ; 
 int /*<<< orphan*/  CMD_I2C_WRITE ; 
 int EAGAIN ; 
 int EOPNOTSUPP ; 
 int EREMOTEIO ; 
 int I2C_M_RD ; 
 int MAX_XFER_SIZE ; 
 scalar_t__ USB_VID_MEDION ; 
 scalar_t__ FUNC0 (struct dvb_usb_device*,int /*<<< orphan*/ ,int*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dvb_usb_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct dvb_usb_device* FUNC3 (struct i2c_adapter*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int*,int*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 

__attribute__((used)) static int FUNC9(struct i2c_adapter *adap, struct i2c_msg msg[],
			  int num)
{
	struct dvb_usb_device *d = FUNC3(adap);
	int ret;
	int i;

	if (FUNC6(&d->i2c_mutex) < 0)
		return -EAGAIN;

	for (i = 0; i < num; i++) {
		if (FUNC4(d->udev->descriptor.idVendor) == USB_VID_MEDION)
			switch (msg[i].addr) {
			case 0x63:
				FUNC1(d, 0);
				break;
			default:
				FUNC1(d, 1);
				break;
			}

		if (msg[i].flags & I2C_M_RD) {
			/* read only */
			u8 obuf[3], ibuf[MAX_XFER_SIZE];

			if (1 + msg[i].len > sizeof(ibuf)) {
				FUNC8("i2c rd: len=%d is too big!\n",
				     msg[i].len);
				ret = -EOPNOTSUPP;
				goto unlock;
			}
			obuf[0] = 0;
			obuf[1] = msg[i].len;
			obuf[2] = msg[i].addr;
			if (FUNC0(d, CMD_I2C_READ,
					   obuf, 3,
					   ibuf, 1 + msg[i].len) < 0) {
				FUNC8("i2c read failed");
				break;
			}
			FUNC5(msg[i].buf, &ibuf[1], msg[i].len);
		} else if (i + 1 < num && (msg[i + 1].flags & I2C_M_RD) &&
			   msg[i].addr == msg[i + 1].addr) {
			/* write to then read from same address */
			u8 obuf[MAX_XFER_SIZE], ibuf[MAX_XFER_SIZE];

			if (3 + msg[i].len > sizeof(obuf)) {
				FUNC8("i2c wr: len=%d is too big!\n",
				     msg[i].len);
				ret = -EOPNOTSUPP;
				goto unlock;
			}
			if (1 + msg[i + 1].len > sizeof(ibuf)) {
				FUNC8("i2c rd: len=%d is too big!\n",
				     msg[i + 1].len);
				ret = -EOPNOTSUPP;
				goto unlock;
			}
			obuf[0] = msg[i].len;
			obuf[1] = msg[i + 1].len;
			obuf[2] = msg[i].addr;
			FUNC5(&obuf[3], msg[i].buf, msg[i].len);

			if (FUNC0(d, CMD_I2C_READ,
					   obuf, 3 + msg[i].len,
					   ibuf, 1 + msg[i + 1].len) < 0)
				break;

			if (ibuf[0] != 0x08)
				FUNC2("i2c read may have failed\n");

			FUNC5(msg[i + 1].buf, &ibuf[1], msg[i + 1].len);

			i++;
		} else {
			/* write only */
			u8 obuf[MAX_XFER_SIZE], ibuf;

			if (2 + msg[i].len > sizeof(obuf)) {
				FUNC8("i2c wr: len=%d is too big!\n",
				     msg[i].len);
				ret = -EOPNOTSUPP;
				goto unlock;
			}
			obuf[0] = msg[i].addr;
			obuf[1] = msg[i].len;
			FUNC5(&obuf[2], msg[i].buf, msg[i].len);

			if (FUNC0(d, CMD_I2C_WRITE, obuf,
					   2 + msg[i].len, &ibuf, 1) < 0)
				break;
			if (ibuf != 0x08)
				FUNC2("i2c write may have failed\n");
		}
	}

	if (i == num)
		ret = num;
	else
		ret = -EREMOTEIO;

unlock:
	FUNC7(&d->i2c_mutex);
	return ret;
}