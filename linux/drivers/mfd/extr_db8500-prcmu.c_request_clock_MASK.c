#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
typedef  int u32 ;
struct TYPE_2__ {int pllsw; scalar_t__ offset; } ;

/* Variables and functions */
 int PRCM_CLK_MGT_CLKEN ; 
 int PRCM_CLK_MGT_CLKPLLSW_MASK ; 
 scalar_t__ PRCM_SEM ; 
 int PRCM_SEM_PRCM_SEM ; 
 TYPE_1__* clk_mgt ; 
 int /*<<< orphan*/  clk_mgt_lock ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ prcmu_base ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC5(u8 clock, bool enable)
{
	u32 val;
	unsigned long flags;

	FUNC2(&clk_mgt_lock, flags);

	/* Grab the HW semaphore. */
	while ((FUNC1(PRCM_SEM) & PRCM_SEM_PRCM_SEM) != 0)
		FUNC0();

	val = FUNC1(prcmu_base + clk_mgt[clock].offset);
	if (enable) {
		val |= (PRCM_CLK_MGT_CLKEN | clk_mgt[clock].pllsw);
	} else {
		clk_mgt[clock].pllsw = (val & PRCM_CLK_MGT_CLKPLLSW_MASK);
		val &= ~(PRCM_CLK_MGT_CLKEN | PRCM_CLK_MGT_CLKPLLSW_MASK);
	}
	FUNC4(val, prcmu_base + clk_mgt[clock].offset);

	/* Release the HW semaphore. */
	FUNC4(0, PRCM_SEM);

	FUNC3(&clk_mgt_lock, flags);

	return 0;
}