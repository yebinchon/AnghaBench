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
 int EINVAL ; 
 int FUNC0 (struct mxl111sf_state*,int,int*) ; 
 int FUNC1 (struct mxl111sf_state*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct mxl111sf_state *state, u8 pin, u8 val)
{
	int ret;
	u8 tmp;

	FUNC2("(%d, %d)", pin, val);

	if ((pin > 0) && (pin < 8)) {
		ret = FUNC0(state, 0x19, &tmp);
		if (FUNC3(ret))
			goto fail;
		tmp &= ~(1 << (pin - 1));
		tmp |= (val << (pin - 1));
		ret = FUNC1(state, 0x19, tmp);
		if (FUNC3(ret))
			goto fail;
	} else if (pin <= 10) {
		if (pin == 0)
			pin += 7;
		ret = FUNC0(state, 0x30, &tmp);
		if (FUNC3(ret))
			goto fail;
		tmp &= ~(1 << (pin - 3));
		tmp |= (val << (pin - 3));
		ret = FUNC1(state, 0x30, tmp);
		if (FUNC3(ret))
			goto fail;
	} else
		ret = -EINVAL;
fail:
	return ret;
}