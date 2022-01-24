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
typedef  int u16 ;
struct lme2510_state {int i2c_gate; int i2c_tuner_addr; int i2c_tuner_gate_r; int i2c_tuner_gate_w; } ;
struct i2c_msg {int flags; int addr; int len; int* buf; } ;
struct i2c_adapter {int dummy; } ;
struct dvb_usb_device {int /*<<< orphan*/  i2c_mutex; struct lme2510_state* priv; } ;

/* Variables and functions */
 int EAGAIN ; 
 int I2C_M_RD ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 struct dvb_usb_device* FUNC1 (struct i2c_adapter*) ; 
 scalar_t__ FUNC2 (struct dvb_usb_device*,int*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct i2c_adapter *adap, struct i2c_msg msg[],
				 int num)
{
	struct dvb_usb_device *d = FUNC1(adap);
	struct lme2510_state *st = d->priv;
	static u8 obuf[64], ibuf[64];
	int i, read, read_o;
	u16 len;
	u8 gate = st->i2c_gate;

	FUNC4(&d->i2c_mutex);

	if (gate == 0)
		gate = 5;

	for (i = 0; i < num; i++) {
		read_o = msg[i].flags & I2C_M_RD;
		read = i + 1 < num && msg[i + 1].flags & I2C_M_RD;
		read |= read_o;
		gate = (msg[i].addr == st->i2c_tuner_addr)
			? (read)	? st->i2c_tuner_gate_r
					: st->i2c_tuner_gate_w
			: st->i2c_gate;
		obuf[0] = gate | (read << 7);

		if (gate == 5)
			obuf[1] = (read) ? 2 : msg[i].len + 1;
		else
			obuf[1] = msg[i].len + read + 1;

		obuf[2] = msg[i].addr << 1;

		if (read) {
			if (read_o)
				len = 3;
			else {
				FUNC3(&obuf[3], msg[i].buf, msg[i].len);
				obuf[msg[i].len+3] = msg[i+1].len;
				len = msg[i].len+4;
			}
		} else {
			FUNC3(&obuf[3], msg[i].buf, msg[i].len);
			len = msg[i].len+3;
		}

		if (FUNC2(d, obuf, len, ibuf, 64) < 0) {
			FUNC0(1, "i2c transfer failed.");
			FUNC5(&d->i2c_mutex);
			return -EAGAIN;
		}

		if (read) {
			if (read_o)
				FUNC3(msg[i].buf, &ibuf[1], msg[i].len);
			else {
				FUNC3(msg[i+1].buf, &ibuf[1], msg[i+1].len);
				i++;
			}
		}
	}

	FUNC5(&d->i2c_mutex);
	return i;
}