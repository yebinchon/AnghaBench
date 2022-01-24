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
struct mxl111sf_state {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MXL_CMD_REG_READ ; 
 int FUNC0 (struct mxl111sf_state*,int /*<<< orphan*/ ,scalar_t__*,int,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__,scalar_t__,scalar_t__) ; 

int FUNC5(struct mxl111sf_state *state, u8 addr, u8 *data)
{
	u8 buf[2];
	int ret;

	ret = FUNC0(state, MXL_CMD_REG_READ, &addr, 1, buf, 2);
	if (FUNC2(ret)) {
		FUNC1("error reading reg: 0x%02x", addr);
		goto fail;
	}

	if (buf[0] == addr)
		*data = buf[1];
	else {
		FUNC4("invalid response reading reg: 0x%02x != 0x%02x, 0x%02x",
		    addr, buf[0], buf[1]);
		ret = -EINVAL;
	}

	FUNC3("R: (0x%02x, 0x%02x)\n", addr, buf[1]);
fail:
	return ret;
}