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
typedef  int /*<<< orphan*/  u32 ;
struct brcms_hardware {int sbclk; int clk; int /*<<< orphan*/  d11core; int /*<<< orphan*/  corerev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  OFF ; 
 int /*<<< orphan*/  ON ; 
 int PDBG_RFD ; 
 int /*<<< orphan*/  SICF_PCLKE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct brcms_hardware*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct brcms_hardware*) ; 
 int /*<<< orphan*/  phydebug ; 

__attribute__((used)) static bool FUNC7(struct brcms_hardware *wlc_hw)
{
	bool v, clk, xtal;
	u32 flags = 0;

	xtal = wlc_hw->sbclk;
	if (!xtal)
		FUNC5(wlc_hw, ON);

	/* may need to take core out of reset first */
	clk = wlc_hw->clk;
	if (!clk) {
		/*
		 * mac no longer enables phyclk automatically when driver
		 * accesses phyreg throughput mac. This can be skipped since
		 * only mac reg is accessed below
		 */
		if (FUNC1(wlc_hw->corerev, 18))
			flags |= SICF_PCLKE;

		/*
		 * TODO: test suspend/resume
		 *
		 * AI chip doesn't restore bar0win2 on
		 * hibernation/resume, need sw fixup
		 */

		FUNC3(wlc_hw->d11core, flags);
		FUNC6(wlc_hw);
	}

	v = ((FUNC4(wlc_hw->d11core,
			  FUNC0(phydebug)) & PDBG_RFD) != 0);

	/* put core back into reset */
	if (!clk)
		FUNC2(wlc_hw->d11core, 0);

	if (!xtal)
		FUNC5(wlc_hw, OFF);

	return v;
}