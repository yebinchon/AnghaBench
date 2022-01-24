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
struct i2c_msg {int addr; int* buf; int len; } ;
struct i2c_adapter {int dummy; } ;
struct dw2102_state {int* data; } ;
struct dvb_usb_device {int /*<<< orphan*/  i2c_mutex; int /*<<< orphan*/  data_mutex; struct dw2102_state* priv; } ;

/* Variables and functions */
#define  DW2102_RC_QUERY 129 
 int EAGAIN ; 
 int ENODEV ; 
 int EOPNOTSUPP ; 
#define  SU3000_STREAM_CTRL 128 
 int /*<<< orphan*/  FUNC0 (struct dvb_usb_device*,int*,int,int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct dvb_usb_device* FUNC2 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

__attribute__((used)) static int FUNC7(struct i2c_adapter *adap, struct i2c_msg msg[],
								int num)
{
	struct dvb_usb_device *d = FUNC2(adap);
	struct dw2102_state *state;

	if (!d)
		return -ENODEV;

	state = d->priv;

	if (FUNC4(&d->i2c_mutex) < 0)
		return -EAGAIN;
	if (FUNC4(&d->data_mutex) < 0) {
		FUNC5(&d->i2c_mutex);
		return -EAGAIN;
	}

	switch (num) {
	case 1:
		switch (msg[0].addr) {
		case SU3000_STREAM_CTRL:
			state->data[0] = msg[0].buf[0] + 0x36;
			state->data[1] = 3;
			state->data[2] = 0;
			if (FUNC0(d, state->data, 3,
					state->data, 0, 0) < 0)
				FUNC1("i2c transfer failed.");
			break;
		case DW2102_RC_QUERY:
			state->data[0] = 0x10;
			if (FUNC0(d, state->data, 1,
					state->data, 2, 0) < 0)
				FUNC1("i2c transfer failed.");
			msg[0].buf[1] = state->data[0];
			msg[0].buf[0] = state->data[1];
			break;
		default:
			if (3 + msg[0].len > sizeof(state->data)) {
				FUNC6("i2c wr: len=%d is too big!\n",
				     msg[0].len);
				num = -EOPNOTSUPP;
				break;
			}

			/* always i2c write*/
			state->data[0] = 0x08;
			state->data[1] = msg[0].addr;
			state->data[2] = msg[0].len;

			FUNC3(&state->data[3], msg[0].buf, msg[0].len);

			if (FUNC0(d, state->data, msg[0].len + 3,
						state->data, 1, 0) < 0)
				FUNC1("i2c transfer failed.");

		}
		break;
	case 2:
		/* always i2c read */
		if (4 + msg[0].len > sizeof(state->data)) {
			FUNC6("i2c rd: len=%d is too big!\n",
			     msg[0].len);
			num = -EOPNOTSUPP;
			break;
		}
		if (1 + msg[1].len > sizeof(state->data)) {
			FUNC6("i2c rd: len=%d is too big!\n",
			     msg[1].len);
			num = -EOPNOTSUPP;
			break;
		}

		state->data[0] = 0x09;
		state->data[1] = msg[0].len;
		state->data[2] = msg[1].len;
		state->data[3] = msg[0].addr;
		FUNC3(&state->data[4], msg[0].buf, msg[0].len);

		if (FUNC0(d, state->data, msg[0].len + 4,
					state->data, msg[1].len + 1, 0) < 0)
			FUNC1("i2c transfer failed.");

		FUNC3(msg[1].buf, &state->data[1], msg[1].len);
		break;
	default:
		FUNC6("more than 2 i2c messages at a time is not handled yet.");
		break;
	}
	FUNC5(&d->data_mutex);
	FUNC5(&d->i2c_mutex);
	return num;
}