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
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int ixp4xx_timer_freq ; 

__attribute__((used)) static u32 FUNC2(u32 rate, u32 a, u32 b, u32 c,
		       u32 *best, u32 *best_diff, u32 *reg)
{
	/* a is 10-bit, b is 10-bit, c is 12-bit */
	u64 new_rate;
	u32 new_diff;

	new_rate = ixp4xx_timer_freq * (u64)(c + 1);
	FUNC1(new_rate, a * (c + 1) + b + 1);
	new_diff = FUNC0((u32)new_rate - rate);

	if (new_diff < *best_diff) {
		*best = new_rate;
		*best_diff = new_diff;
		*reg = (a << 22) | (b << 12) | c;
	}
	return new_diff;
}