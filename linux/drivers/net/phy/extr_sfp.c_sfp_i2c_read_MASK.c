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
typedef  size_t u8 ;
struct sfp {int /*<<< orphan*/  i2c; } ;
struct i2c_msg {size_t addr; int len; size_t* buf; scalar_t__ flags; } ;

/* Variables and functions */
 int FUNC0 (struct i2c_msg*) ; 
 scalar_t__ I2C_M_RD ; 
 int FUNC1 (int /*<<< orphan*/ ,struct i2c_msg*,int) ; 

__attribute__((used)) static int FUNC2(struct sfp *sfp, bool a2, u8 dev_addr, void *buf,
			size_t len)
{
	struct i2c_msg msgs[2];
	u8 bus_addr = a2 ? 0x51 : 0x50;
	size_t this_len;
	int ret;

	msgs[0].addr = bus_addr;
	msgs[0].flags = 0;
	msgs[0].len = 1;
	msgs[0].buf = &dev_addr;
	msgs[1].addr = bus_addr;
	msgs[1].flags = I2C_M_RD;
	msgs[1].len = len;
	msgs[1].buf = buf;

	while (len) {
		this_len = len;
		if (this_len > 16)
			this_len = 16;

		msgs[1].len = this_len;

		ret = FUNC1(sfp->i2c, msgs, FUNC0(msgs));
		if (ret < 0)
			return ret;

		if (ret != FUNC0(msgs))
			break;

		msgs[1].buf += this_len;
		dev_addr += this_len;
		len -= this_len;
	}

	return msgs[1].buf - (u8 *)buf;
}