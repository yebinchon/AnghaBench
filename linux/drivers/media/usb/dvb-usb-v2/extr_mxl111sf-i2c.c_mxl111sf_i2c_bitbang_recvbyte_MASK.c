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
 int /*<<< orphan*/  SW_I2C_ADDR ; 
 int /*<<< orphan*/  SW_I2C_BUSY_ADDR ; 
 int SW_I2C_EN ; 
 int SW_SCL_OUT ; 
 int SW_SDA_IN ; 
 int SW_SDA_OUT ; 
 int FUNC0 (struct mxl111sf_state*,int /*<<< orphan*/ ,int*) ; 
 int FUNC1 (struct mxl111sf_state*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(struct mxl111sf_state *state,
					 u8 *pbyte)
{
	int i, ret;
	u8 byte = 0;
	u8 data = 0;

	FUNC3("()");

	*pbyte = 0;

	ret = FUNC1(state, SW_I2C_ADDR,
				 0x10 | SW_I2C_EN | SW_SDA_OUT);
	if (FUNC2(ret))
		goto fail;

	for (i = 0; i < 8; i++) {
		ret = FUNC1(state, SW_I2C_ADDR,
					 0x10 | SW_I2C_EN |
					 SW_SCL_OUT | SW_SDA_OUT);
		if (FUNC2(ret))
			goto fail;

		ret = FUNC0(state, SW_I2C_BUSY_ADDR, &data);
		if (FUNC2(ret))
			goto fail;

		if (data & SW_SDA_IN)
			byte |= (0x80 >> i);

		ret = FUNC1(state, SW_I2C_ADDR,
					 0x10 | SW_I2C_EN | SW_SDA_OUT);
		if (FUNC2(ret))
			goto fail;
	}
	*pbyte = byte;
fail:
	return ret;
}