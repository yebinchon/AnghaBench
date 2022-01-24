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
struct sd {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int I2C_MAX_BYTES ; 
 int FUNC0 (struct sd*,int*,int) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(struct sd *sd, u8 reg, u8 *vals, u8 len)
{
	u8 regs[I2C_MAX_BYTES * 2];
	int i;

	if (FUNC1((len <= 0) || (len >= I2C_MAX_BYTES) ||
		     (reg + len > 0xff)))
		return -EINVAL;

	for (i = 0; i < len; i++) {
		regs[2 * i] = reg;
		regs[2 * i + 1] = vals[i];
		/* All addresses are shifted left one bit
		 * as bit 0 toggles r/w */
		reg += 2;
	}

	return FUNC0(sd, regs, len);
}