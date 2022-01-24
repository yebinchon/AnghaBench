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
 int V8_SPI_MODE_REG ; 
 int FUNC0 (struct mxl111sf_state*,int,int*) ; 
 int FUNC1 (struct mxl111sf_state*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 scalar_t__ FUNC3 (int) ; 

int FUNC4(struct mxl111sf_state *state, int onoff)
{
	u8 val;
	int ret;

	FUNC2("(%d)", onoff);

	ret = FUNC1(state, 0x00, 0x02);
	if (FUNC3(ret))
		goto fail;

	ret = FUNC0(state, V8_SPI_MODE_REG, &val);
	if (FUNC3(ret))
		goto fail;

	if (onoff)
		val |= 0x04;
	else
		val &= ~0x04;

	ret = FUNC1(state, V8_SPI_MODE_REG, val);
	if (FUNC3(ret))
		goto fail;

	ret = FUNC1(state, 0x00, 0x00);
	FUNC3(ret);
fail:
	return ret;
}