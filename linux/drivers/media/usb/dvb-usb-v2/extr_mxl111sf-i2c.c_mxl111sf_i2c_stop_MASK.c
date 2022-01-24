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

/* Variables and functions */
 int /*<<< orphan*/  SW_I2C_ADDR ; 
 int SW_I2C_EN ; 
 int SW_SCL_OUT ; 
 int SW_SDA_OUT ; 
 int FUNC0 (struct mxl111sf_state*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(struct mxl111sf_state *state)
{
	int ret;

	FUNC2("()");

	ret = FUNC0(state, SW_I2C_ADDR,
				 0x10 | SW_I2C_EN); /* stop */
	if (FUNC1(ret))
		goto fail;

	ret = FUNC0(state, SW_I2C_ADDR,
				 0x10 | SW_I2C_EN | SW_SCL_OUT);
	if (FUNC1(ret))
		goto fail;

	ret = FUNC0(state, SW_I2C_ADDR,
				 0x10 | SW_I2C_EN | SW_SCL_OUT | SW_SDA_OUT);
	if (FUNC1(ret))
		goto fail;

	ret = FUNC0(state, SW_I2C_ADDR,
				 0x10 | SW_SCL_OUT | SW_SDA_OUT);
	FUNC1(ret);
fail:
	return ret;
}