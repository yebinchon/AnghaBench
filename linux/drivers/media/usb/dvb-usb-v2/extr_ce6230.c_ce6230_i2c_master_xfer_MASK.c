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
struct usb_req {int value; int index; int* data; scalar_t__ data_len; int /*<<< orphan*/  cmd; } ;
struct i2c_msg {int flags; int addr; int* buf; scalar_t__ len; } ;
struct i2c_adapter {int dummy; } ;
struct dvb_usb_device {int /*<<< orphan*/  i2c_mutex; TYPE_1__* udev; } ;
typedef  int /*<<< orphan*/  req ;
struct TYPE_4__ {int demod_address; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEMOD_READ ; 
 int /*<<< orphan*/  DEMOD_WRITE ; 
 int EAGAIN ; 
 int EOPNOTSUPP ; 
 int I2C_M_RD ; 
 int /*<<< orphan*/  I2C_WRITE ; 
 int /*<<< orphan*/  KBUILD_MODNAME ; 
 int FUNC0 (struct dvb_usb_device*,struct usb_req*) ; 
 TYPE_2__ ce6230_zl10353_config ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct dvb_usb_device* FUNC2 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_req*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct i2c_adapter *adap,
		struct i2c_msg msg[], int num)
{
	struct dvb_usb_device *d = FUNC2(adap);
	int ret = 0, i = 0;
	struct usb_req req;

	if (num > 2)
		return -EOPNOTSUPP;

	FUNC3(&req, 0, sizeof(req));

	if (FUNC4(&d->i2c_mutex) < 0)
		return -EAGAIN;

	while (i < num) {
		if (num > i + 1 && (msg[i+1].flags & I2C_M_RD)) {
			if (msg[i].addr ==
				ce6230_zl10353_config.demod_address) {
				req.cmd = DEMOD_READ;
				req.value = msg[i].addr >> 1;
				req.index = msg[i].buf[0];
				req.data_len = msg[i+1].len;
				req.data = &msg[i+1].buf[0];
				ret = FUNC0(d, &req);
			} else {
				FUNC1(&d->udev->dev, "%s: I2C read not " \
						"implemented\n",
						KBUILD_MODNAME);
				ret = -EOPNOTSUPP;
			}
			i += 2;
		} else {
			if (msg[i].addr ==
				ce6230_zl10353_config.demod_address) {
				req.cmd = DEMOD_WRITE;
				req.value = msg[i].addr >> 1;
				req.index = msg[i].buf[0];
				req.data_len = msg[i].len-1;
				req.data = &msg[i].buf[1];
				ret = FUNC0(d, &req);
			} else {
				req.cmd = I2C_WRITE;
				req.value = 0x2000 + (msg[i].addr >> 1);
				req.index = 0x0000;
				req.data_len = msg[i].len;
				req.data = &msg[i].buf[0];
				ret = FUNC0(d, &req);
			}
			i += 1;
		}
		if (ret)
			break;
	}

	FUNC5(&d->i2c_mutex);
	return ret ? ret : i;
}