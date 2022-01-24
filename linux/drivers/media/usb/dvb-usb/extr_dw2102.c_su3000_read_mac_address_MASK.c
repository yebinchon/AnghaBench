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
struct i2c_msg {int addr; int* buf; int len; int /*<<< orphan*/  flags; } ;
struct dvb_usb_device {int /*<<< orphan*/  i2c_adap; } ;

/* Variables and functions */
 int /*<<< orphan*/  I2C_M_RD ; 
 int FUNC0 (int /*<<< orphan*/ *,struct i2c_msg*,int) ; 

__attribute__((used)) static int FUNC1(struct dvb_usb_device *d, u8 mac[6])
{
	int i;
	u8 obuf[] = { 0x1f, 0xf0 };
	u8 ibuf[] = { 0 };
	struct i2c_msg msg[] = {
		{
			.addr = 0x51,
			.flags = 0,
			.buf = obuf,
			.len = 2,
		}, {
			.addr = 0x51,
			.flags = I2C_M_RD,
			.buf = ibuf,
			.len = 1,

		}
	};

	for (i = 0; i < 6; i++) {
		obuf[1] = 0xf0 + i;
		if (FUNC0(&d->i2c_adap, msg, 2) != 2)
			break;
		else
			mac[i] = ibuf[0];
	}

	return 0;
}