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
struct i2c_msg {int addr; int len; int* buf; int flags; } ;
struct i2c_adapter {int dummy; } ;
struct dvb_usb_device {int /*<<< orphan*/  i2c_mutex; int /*<<< orphan*/  usb_mutex; struct dib0700_state* priv; } ;
struct dib0700_state {int* buf; } ;

/* Variables and functions */
 int EINTR ; 
 int EIO ; 
 int I2C_M_RD ; 
 int REQUEST_I2C_READ ; 
 int REQUEST_I2C_WRITE ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (struct dvb_usb_device*,int*,int,int*,int) ; 
 int FUNC2 (struct dvb_usb_device*,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 struct dvb_usb_device* FUNC4 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (int*,int*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct i2c_adapter *adap,
				   struct i2c_msg *msg, int num)
{
	struct dvb_usb_device *d = FUNC4(adap);
	struct dib0700_state *st = d->priv;
	int i, len, result;

	if (FUNC6(&d->i2c_mutex) < 0)
		return -EINTR;
	if (FUNC6(&d->usb_mutex) < 0) {
		FUNC3("could not acquire lock");
		FUNC7(&d->i2c_mutex);
		return -EINTR;
	}

	for (i = 0; i < num; i++) {
		/* fill in the address */
		st->buf[1] = msg[i].addr << 1;
		/* fill the buffer */
		if (msg[i].len > sizeof(st->buf) - 2) {
			FUNC0("i2c xfer to big: %d\n",
				msg[i].len);
			result = -EIO;
			goto unlock;
		}
		FUNC5(&st->buf[2], msg[i].buf, msg[i].len);

		/* write/read request */
		if (i+1 < num && (msg[i+1].flags & I2C_M_RD)) {
			st->buf[0] = REQUEST_I2C_READ;
			st->buf[1] |= 1;

			/* special thing in the current firmware: when length is zero the read-failed */
			len = FUNC1(d, st->buf, msg[i].len + 2,
					      st->buf, msg[i + 1].len);
			if (len <= 0) {
				FUNC0("I2C read failed on address 0x%02x\n",
						msg[i].addr);
				result = -EIO;
				goto unlock;
			}

			if (msg[i + 1].len > sizeof(st->buf)) {
				FUNC0("i2c xfer buffer to small for %d\n",
					msg[i].len);
				result = -EIO;
				goto unlock;
			}
			FUNC5(msg[i + 1].buf, st->buf, msg[i + 1].len);

			msg[i+1].len = len;

			i++;
		} else {
			st->buf[0] = REQUEST_I2C_WRITE;
			result = FUNC2(d, st->buf, msg[i].len + 2);
			if (result < 0)
				goto unlock;
		}
	}
	result = i;
unlock:
	FUNC7(&d->usb_mutex);
	FUNC7(&d->i2c_mutex);

	return result;
}