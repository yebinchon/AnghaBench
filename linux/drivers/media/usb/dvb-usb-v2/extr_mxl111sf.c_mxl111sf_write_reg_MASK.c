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
typedef  int /*<<< orphan*/  u8 ;
struct mxl111sf_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MXL_CMD_REG_WRITE ; 
 int FUNC0 (struct mxl111sf_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(struct mxl111sf_state *state, u8 addr, u8 data)
{
	u8 buf[] = { addr, data };
	int ret;

	FUNC2("W: (0x%02x, 0x%02x)\n", addr, data);

	ret = FUNC0(state, MXL_CMD_REG_WRITE, buf, 2, NULL, 0);
	if (FUNC1(ret))
		FUNC3("error writing reg: 0x%02x, val: 0x%02x", addr, data);
	return ret;
}