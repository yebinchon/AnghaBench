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

/* Variables and functions */
 int NAND_HYNIX_1XNM_RR_REPEAT ; 
 int FUNC0 (int,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(const u8 *buf, int nmodes, int nregs,
				   int mode, int reg, bool inv, u8 *val)
{
	u8 tmp[NAND_HYNIX_1XNM_RR_REPEAT];
	int val_offs = (mode * nregs) + reg;
	int set_size = nmodes * nregs;
	int i, ret;

	for (i = 0; i < NAND_HYNIX_1XNM_RR_REPEAT; i++) {
		int set_offs = FUNC0(i, set_size, inv);

		tmp[i] = buf[val_offs + set_offs];
	}

	ret = FUNC1(tmp, NAND_HYNIX_1XNM_RR_REPEAT, val);
	if (ret)
		return ret;

	if (inv)
		*val = ~*val;

	return 0;
}