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
struct i2c_msg {int flags; int addr; int* buf; int len; } ;
struct i2c_adapter {int dummy; } ;
struct dvb_usb_device {int /*<<< orphan*/  i2c_mutex; } ;

/* Variables and functions */
 int EAGAIN ; 
 int I2C_M_RD ; 
 struct dvb_usb_device* FUNC0 (struct i2c_adapter*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct dvb_usb_device*,int,int*,int,int*,int) ; 

__attribute__((used)) static int FUNC4(struct i2c_adapter *adapter, struct i2c_msg *msg,
				int num)
{
	struct dvb_usb_device *d = FUNC0(adapter);
	int i;

	if (FUNC1(&d->i2c_mutex) < 0)
		return -EAGAIN;

	for (i = 0; i < num; i++) {
		u8 addr, snd_len, rcv_len, *snd_buf, *rcv_buf;
		int ret;

		if (msg[i].flags & I2C_M_RD) {
			addr = msg[i].addr;
			snd_buf = NULL;
			snd_len = 0;
			rcv_buf = msg[i].buf;
			rcv_len = msg[i].len;
		} else {
			addr = msg[i].addr;
			snd_buf = msg[i].buf;
			snd_len = msg[i].len;
			rcv_buf = NULL;
			rcv_len = 0;
		}

		ret = FUNC3(d, addr, snd_buf, snd_len, rcv_buf,
					rcv_len);
		if (ret < rcv_len)
			break;
	}

	FUNC2(&d->i2c_mutex);
	return i;
}