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
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EBUSY ; 
 int EINVAL ; 
 int PRCMU_CLKSRC_CLK009 ; 
 int /*<<< orphan*/  PRCM_CLKOCR ; 
 int PRCM_CLKOCR_CLK1TYPE ; 
 int PRCM_CLKOCR_CLKODIV0_MASK ; 
 int PRCM_CLKOCR_CLKODIV0_SHIFT ; 
 int PRCM_CLKOCR_CLKODIV1_MASK ; 
 int PRCM_CLKOCR_CLKODIV1_SHIFT ; 
 int PRCM_CLKOCR_CLKOSEL0_MASK ; 
 int PRCM_CLKOCR_CLKOSEL0_SHIFT ; 
 int PRCM_CLKOCR_CLKOSEL1_MASK ; 
 int PRCM_CLKOCR_CLKOSEL1_SHIFT ; 
 int /*<<< orphan*/  clkout_lock ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

int FUNC5(u8 clkout, u8 source, u8 div)
{
	static int requests[2];
	int r = 0;
	unsigned long flags;
	u32 val;
	u32 bits;
	u32 mask;
	u32 div_mask;

	FUNC0(clkout > 1);
	FUNC0(div > 63);
	FUNC0((clkout == 0) && (source > PRCMU_CLKSRC_CLK009));

	if (!div && !requests[clkout])
		return -EINVAL;

	if (clkout == 0) {
		div_mask = PRCM_CLKOCR_CLKODIV0_MASK;
		mask = (PRCM_CLKOCR_CLKODIV0_MASK | PRCM_CLKOCR_CLKOSEL0_MASK);
		bits = ((source << PRCM_CLKOCR_CLKOSEL0_SHIFT) |
			(div << PRCM_CLKOCR_CLKODIV0_SHIFT));
	} else {
		div_mask = PRCM_CLKOCR_CLKODIV1_MASK;
		mask = (PRCM_CLKOCR_CLKODIV1_MASK | PRCM_CLKOCR_CLKOSEL1_MASK |
			PRCM_CLKOCR_CLK1TYPE);
		bits = ((source << PRCM_CLKOCR_CLKOSEL1_SHIFT) |
			(div << PRCM_CLKOCR_CLKODIV1_SHIFT));
	}
	bits &= mask;

	FUNC2(&clkout_lock, flags);

	val = FUNC1(PRCM_CLKOCR);
	if (val & div_mask) {
		if (div) {
			if ((val & mask) != bits) {
				r = -EBUSY;
				goto unlock_and_return;
			}
		} else {
			if ((val & mask & ~div_mask) != bits) {
				r = -EINVAL;
				goto unlock_and_return;
			}
		}
	}
	FUNC4((bits | (val & ~mask)), PRCM_CLKOCR);
	requests[clkout] += (div ? 1 : -1);

unlock_and_return:
	FUNC3(&clkout_lock, flags);

	return r;
}