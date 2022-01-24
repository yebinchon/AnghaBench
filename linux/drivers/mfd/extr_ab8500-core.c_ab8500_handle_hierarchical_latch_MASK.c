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
struct ab8500 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AB8500_INTERRUPT ; 
 scalar_t__ AB8500_IT_LATCH1_REG ; 
 int FUNC0 (int) ; 
 int FUNC1 (struct ab8500*,int,int) ; 
 int FUNC2 (struct ab8500*,int /*<<< orphan*/ ,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int) ; 

__attribute__((used)) static int FUNC4(struct ab8500 *ab8500,
					int hier_offset, u8 hier_val)
{
	int latch_bit, status;
	u8 latch_offset, latch_val;

	do {
		latch_bit = FUNC0(hier_val);
		latch_offset = (hier_offset << 3) + latch_bit;

		FUNC3(&latch_offset, hier_offset);

		status = FUNC2(ab8500,
				AB8500_INTERRUPT,
				AB8500_IT_LATCH1_REG + latch_offset,
				&latch_val);
		if (status < 0 || latch_val == 0)
			goto discard;

		status = FUNC1(ab8500,
				latch_offset, latch_val);
		if (status < 0)
			return status;
discard:
		hier_val &= ~(1 << latch_bit);
	} while (hier_val);

	return 0;
}