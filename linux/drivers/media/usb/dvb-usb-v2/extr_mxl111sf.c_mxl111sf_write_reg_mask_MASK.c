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
typedef  int u8 ;
struct mxl111sf_state {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct mxl111sf_state*,int,int*) ; 
 int FUNC1 (struct mxl111sf_state*,int,int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int,int) ; 

int FUNC4(struct mxl111sf_state *state,
				   u8 addr, u8 mask, u8 data)
{
	int ret;
	u8 val = 0;

	if (mask != 0xff) {
		ret = FUNC0(state, addr, &val);
#if 1
		/* don't know why this usually errors out on the first try */
		if (FUNC2(ret))
			FUNC3("error writing addr: 0x%02x, mask: 0x%02x, data: 0x%02x, retrying...",
			       addr, mask, data);

		ret = FUNC0(state, addr, &val);
#endif
		if (FUNC2(ret))
			goto fail;
	}
	val &= ~mask;
	val |= data;

	ret = FUNC1(state, addr, val);
	FUNC2(ret);
fail:
	return ret;
}