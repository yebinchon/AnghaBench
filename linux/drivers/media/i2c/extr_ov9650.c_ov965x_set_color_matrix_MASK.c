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
struct ov965x {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (int const*) ; 
 int FUNC1 (int) ; 
 int FUNC2 (struct ov965x*,int,int const) ; 

__attribute__((used)) static int FUNC3(struct ov965x *ov965x)
{
	static const u8 mtx[] = {
		/* MTX1..MTX9, MTXS */
		0x3a, 0x3d, 0x03, 0x12, 0x26, 0x38, 0x40, 0x40, 0x40, 0x0d
	};
	u8 addr = FUNC1(1);
	unsigned int i;

	for (i = 0; i < FUNC0(mtx); i++) {
		int ret = FUNC2(ov965x, addr, mtx[i]);

		if (ret < 0)
			return ret;
		addr++;
	}

	return 0;
}