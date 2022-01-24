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
struct i2c_msg {int flags; scalar_t__ len; int /*<<< orphan*/ * buf; } ;
struct i2c_adapter {int dummy; } ;
struct dvb_usb_device {int /*<<< orphan*/  i2c_mutex; } ;

/* Variables and functions */
 int EAGAIN ; 
 int I2C_M_RD ; 
 int /*<<< orphan*/  USB_READ_COFDM ; 
 int /*<<< orphan*/  USB_WRITE_COFDM ; 
 scalar_t__ FUNC0 (struct dvb_usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,scalar_t__) ; 
 struct dvb_usb_device* FUNC1 (struct i2c_adapter*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(struct i2c_adapter *adap,struct i2c_msg msg[],int num)
{
	struct dvb_usb_device *d = FUNC1(adap);
	int i;

	if (FUNC2(&d->i2c_mutex) < 0)
		return -EAGAIN;

	if (num > 2)
		FUNC4("more than 2 i2c messages at a time is not handled yet. TODO.");

	for (i = 0; i < num; i++) {
		/* write/read request */
		if (i+1 < num && (msg[i+1].flags & I2C_M_RD)) {
			if (FUNC0(d, USB_READ_COFDM, msg[i].buf[0], NULL, 0,
						msg[i+1].buf,msg[i+1].len) < 0)
				break;
			i++;
		} else
			if (FUNC0(d,USB_WRITE_COFDM, msg[i].buf[0],
						&msg[i].buf[1],msg[i].len-1,NULL,0) < 0)
				break;
	}

	FUNC3(&d->i2c_mutex);
	return i;
}