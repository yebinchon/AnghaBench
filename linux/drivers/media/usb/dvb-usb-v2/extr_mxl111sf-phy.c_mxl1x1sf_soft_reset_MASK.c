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
 int FUNC0 (struct mxl111sf_state*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int) ; 

int FUNC3(struct mxl111sf_state *state)
{
	int ret;
	FUNC1("()");

	ret = FUNC0(state, 0xff, 0x00); /* AIC */
	if (FUNC2(ret))
		goto fail;
	ret = FUNC0(state, 0x02, 0x01); /* get out of reset */
	FUNC2(ret);
fail:
	return ret;
}