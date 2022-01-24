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
typedef  scalar_t__ u8 ;
struct dvb_usb_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  APO_REG_I2C_RW_SILICON_TUNER ; 
 int FUNC0 (struct dvb_usb_device*,int /*<<< orphan*/ ,scalar_t__,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int,int /*<<< orphan*/  (*) (char*)) ; 

__attribute__((used)) static int FUNC3(struct dvb_usb_device *d, u8 i2caddr, u8 reg,
			   u8 * data, int len)
{
	int ret, i;
	u8 temp;
	FUNC1("i2c_read i2caddr %x, reg %x, len %d\n ", i2caddr, reg, len);
	for (i = 0; i < len; i++) {
		temp = reg + i;
		ret =
		    FUNC0(d,
						APO_REG_I2C_RW_SILICON_TUNER,
						i2caddr, &temp, 1);
		if (ret) {
			FUNC1("i2c_read failed\n");
			return ret;
		}
		data[i] = temp;
	}
	FUNC1("i2c data read: ");
	FUNC2(data, len, deb_i2c);
	return 0;
}