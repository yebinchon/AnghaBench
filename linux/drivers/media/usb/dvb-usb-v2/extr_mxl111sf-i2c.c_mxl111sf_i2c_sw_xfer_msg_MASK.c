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
struct mxl111sf_state {int dummy; } ;
struct i2c_msg {int flags; int addr; int len; int* buf; } ;

/* Variables and functions */
 int I2C_M_RD ; 
 int /*<<< orphan*/  FUNC0 (struct mxl111sf_state*) ; 
 int FUNC1 (struct mxl111sf_state*,int*) ; 
 int FUNC2 (struct mxl111sf_state*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mxl111sf_state*) ; 
 int FUNC4 (struct mxl111sf_state*) ; 
 int FUNC5 (struct mxl111sf_state*) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static int FUNC8(struct mxl111sf_state *state,
				    struct i2c_msg *msg)
{
	int i, ret;

	FUNC7("()");

	if (msg->flags & I2C_M_RD) {

		ret = FUNC4(state);
		if (FUNC6(ret))
			goto fail;

		ret = FUNC2(state,
						    (msg->addr << 1) | 0x01);
		if (FUNC6(ret)) {
			FUNC5(state);
			goto fail;
		}

		for (i = 0; i < msg->len; i++) {
			ret = FUNC1(state,
							    &msg->buf[i]);
			if (FUNC6(ret)) {
				FUNC5(state);
				goto fail;
			}

			if (i < msg->len - 1)
				FUNC0(state);
		}

		FUNC3(state);

		ret = FUNC5(state);
		if (FUNC6(ret))
			goto fail;

	} else {

		ret = FUNC4(state);
		if (FUNC6(ret))
			goto fail;

		ret = FUNC2(state,
						    (msg->addr << 1) & 0xfe);
		if (FUNC6(ret)) {
			FUNC5(state);
			goto fail;
		}

		for (i = 0; i < msg->len; i++) {
			ret = FUNC2(state,
							    msg->buf[i]);
			if (FUNC6(ret)) {
				FUNC5(state);
				goto fail;
			}
		}

		/* FIXME: we only want to do this on the last transaction */
		FUNC5(state);
	}
fail:
	return ret;
}