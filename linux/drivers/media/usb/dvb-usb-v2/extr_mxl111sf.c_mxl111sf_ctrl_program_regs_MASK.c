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
struct mxl111sf_reg_ctrl_info {int addr; int mask; int data; } ;

/* Variables and functions */
 int FUNC0 (struct mxl111sf_state*,int,int,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 

int FUNC3(struct mxl111sf_state *state,
			       struct mxl111sf_reg_ctrl_info *ctrl_reg_info)
{
	int i, ret = 0;

	for (i = 0;  ctrl_reg_info[i].addr |
		     ctrl_reg_info[i].mask |
		     ctrl_reg_info[i].data;  i++) {

		ret = FUNC0(state,
					      ctrl_reg_info[i].addr,
					      ctrl_reg_info[i].mask,
					      ctrl_reg_info[i].data);
		if (FUNC1(ret)) {
			FUNC2("failed on reg #%d (0x%02x)", i,
			    ctrl_reg_info[i].addr);
			break;
		}
	}
	return ret;
}