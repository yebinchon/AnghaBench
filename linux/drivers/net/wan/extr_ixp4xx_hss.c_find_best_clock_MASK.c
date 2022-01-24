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
typedef  int u64 ;
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int,int,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int ixp4xx_timer_freq ; 

__attribute__((used)) static void FUNC2(u32 rate, u32 *best, u32 *reg)
{
	u32 a, b, diff = 0xFFFFFFFF;

	a = ixp4xx_timer_freq / rate;

	if (a > 0x3FF) { /* 10-bit value - we can go as slow as ca. 65 kb/s */
		FUNC0(rate, 0x3FF, 1, 1, best, &diff, reg);
		return;
	}
	if (a == 0) { /* > 66.666 MHz */
		a = 1; /* minimum divider is 1 (a = 0, b = 1, c = 1) */
		rate = ixp4xx_timer_freq;
	}

	if (rate * a == ixp4xx_timer_freq) { /* don't divide by 0 later */
		FUNC0(rate, a - 1, 1, 1, best, &diff, reg);
		return;
	}

	for (b = 0; b < 0x400; b++) {
		u64 c = (b + 1) * (u64)rate;
		FUNC1(c, ixp4xx_timer_freq - rate * a);
		c--;
		if (c >= 0xFFF) { /* 12-bit - no need to check more 'b's */
			if (b == 0 && /* also try a bit higher rate */
			    !FUNC0(rate, a - 1, 1, 1, best, &diff, reg))
				return;
			FUNC0(rate, a, b, 0xFFF, best, &diff, reg);
			return;
		}
		if (!FUNC0(rate, a, b, c, best, &diff, reg))
			return;
		if (!FUNC0(rate, a, b, c + 1, best, &diff, reg))
			return;
	}
}