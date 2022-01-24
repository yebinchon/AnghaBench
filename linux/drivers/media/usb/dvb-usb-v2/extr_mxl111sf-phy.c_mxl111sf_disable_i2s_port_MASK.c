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
struct mxl111sf_reg_ctrl_info {int member_0; int member_1; int member_2; } ;

/* Variables and functions */
 int FUNC0 (struct mxl111sf_state*,struct mxl111sf_reg_ctrl_info*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

int FUNC2(struct mxl111sf_state *state)
{
	static struct mxl111sf_reg_ctrl_info disable_i2s[] = {
		{0x15, 0x40, 0x00},
		{0,    0,    0}
	};

	FUNC1("()");

	return FUNC0(state, disable_i2s);
}