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
struct mxl111sf_state {scalar_t__ chip_rev; } ;
struct i2c_msg {int flags; int /*<<< orphan*/  addr; int /*<<< orphan*/  len; } ;
struct i2c_adapter {int dummy; } ;
struct dvb_usb_device {int /*<<< orphan*/  i2c_mutex; struct mxl111sf_state* priv; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EREMOTEIO ; 
 int I2C_M_RD ; 
 scalar_t__ MXL111SF_V6 ; 
 struct dvb_usb_device* FUNC0 (struct i2c_adapter*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct mxl111sf_state*,struct i2c_msg*) ; 
 int FUNC4 (struct mxl111sf_state*,struct i2c_msg*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 

int FUNC7(struct i2c_adapter *adap,
		      struct i2c_msg msg[], int num)
{
	struct dvb_usb_device *d = FUNC0(adap);
	struct mxl111sf_state *state = d->priv;
	int hwi2c = (state->chip_rev > MXL111SF_V6);
	int i, ret;

	if (FUNC1(&d->i2c_mutex) < 0)
		return -EAGAIN;

	for (i = 0; i < num; i++) {
		ret = (hwi2c) ?
			FUNC3(state, &msg[i]) :
			FUNC4(state, &msg[i]);
		if (FUNC6(ret)) {
			FUNC5("failed with error %d on i2c transaction %d of %d, %sing %d bytes to/from 0x%02x",
				      ret, i+1, num,
				      (msg[i].flags & I2C_M_RD) ?
				      "read" : "writ",
				      msg[i].len, msg[i].addr);

			break;
		}
	}

	FUNC2(&d->i2c_mutex);

	return i == num ? num : -EREMOTEIO;
}