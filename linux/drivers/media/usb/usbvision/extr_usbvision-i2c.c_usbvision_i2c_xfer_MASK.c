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
struct usb_usbvision {int dummy; } ;
struct i2c_msg {int flags; int len; int /*<<< orphan*/  buf; } ;
struct i2c_adapter {int /*<<< orphan*/  retries; } ;

/* Variables and functions */
 int /*<<< orphan*/  DBG_I2C ; 
 int EREMOTEIO ; 
 int I2C_M_RD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC1 (struct i2c_adapter*) ; 
 int FUNC2 (struct i2c_adapter*,struct i2c_msg*,int /*<<< orphan*/ ,unsigned char*) ; 
 int FUNC3 (struct usb_usbvision*,unsigned char,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct usb_usbvision*,unsigned char,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC5(struct i2c_adapter *i2c_adap, struct i2c_msg msgs[], int num)
{
	struct i2c_msg *pmsg;
	struct usb_usbvision *usbvision;
	int i, ret;
	unsigned char addr = 0;

	usbvision = (struct usb_usbvision *)FUNC1(i2c_adap);

	for (i = 0; i < num; i++) {
		pmsg = &msgs[i];
		ret = FUNC2(i2c_adap, pmsg, i2c_adap->retries, &addr);
		if (ret != 0) {
			FUNC0(DBG_I2C, "got NAK from device, message #%d", i);
			return (ret < 0) ? ret : -EREMOTEIO;
		}

		if (pmsg->flags & I2C_M_RD) {
			/* read bytes into buffer */
			ret = (FUNC3(usbvision, addr, pmsg->buf, pmsg->len));
			if (ret < pmsg->len)
				return (ret < 0) ? ret : -EREMOTEIO;
		} else {
			/* write bytes from buffer */
			ret = (FUNC4(usbvision, addr, pmsg->buf, pmsg->len));
			if (ret < pmsg->len)
				return (ret < 0) ? ret : -EREMOTEIO;
		}
	}
	return num;
}