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
struct i2c_msg {int flags; } ;
struct i2c_adapter {int dummy; } ;
struct dvb_usb_device {int /*<<< orphan*/  i2c_mutex; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 int I2C_M_RD ; 
 int FUNC0 (struct dvb_usb_device*,struct i2c_msg*) ; 
 int FUNC1 (struct dvb_usb_device*,struct i2c_msg*) ; 
 struct dvb_usb_device* FUNC2 (struct i2c_adapter*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static int FUNC6(struct i2c_adapter *adap, struct i2c_msg msg[],
				int num)
{
	struct dvb_usb_device *d = FUNC2(adap);
	int i;

	if (num > 2)
		return -EINVAL;

	if (FUNC3(&d->i2c_mutex) < 0)
		return -EAGAIN;

	for (i = 0; i < num; i++) {
		int ret;

		if (msg[i].flags & I2C_M_RD)
			ret = FUNC0(d, &msg[i]);
		else
			ret = FUNC1(d, &msg[i]);

		if (ret < 0)
			break;

		FUNC5(1000, 2000); /* avoid I2C errors */
	}

	FUNC4(&d->i2c_mutex);
	return i;
}