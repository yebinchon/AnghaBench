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
typedef  scalar_t__ u8 ;
struct brcms_hardware {int /*<<< orphan*/  band; int /*<<< orphan*/  sih; struct bcma_device* d11core; } ;
struct bcma_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ BCMA_CHIP_ID_BCM43224 ; 
 scalar_t__ BCMA_CHIP_ID_BCM43225 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ WL_SPURAVOID_ON1 ; 
 scalar_t__ WL_SPURAVOID_ON2 ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bcma_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  tsf_clk_frac_h ; 
 int /*<<< orphan*/  tsf_clk_frac_l ; 

void FUNC4(struct brcms_hardware *wlc_hw, u8 spurmode)
{
	struct bcma_device *core = wlc_hw->d11core;

	if ((FUNC2(wlc_hw->sih) == BCMA_CHIP_ID_BCM43224) ||
	    (FUNC2(wlc_hw->sih) == BCMA_CHIP_ID_BCM43225)) {
		if (spurmode == WL_SPURAVOID_ON2) {	/* 126Mhz */
			FUNC3(core, FUNC1(tsf_clk_frac_l), 0x2082);
			FUNC3(core, FUNC1(tsf_clk_frac_h), 0x8);
		} else if (spurmode == WL_SPURAVOID_ON1) {	/* 123Mhz */
			FUNC3(core, FUNC1(tsf_clk_frac_l), 0x5341);
			FUNC3(core, FUNC1(tsf_clk_frac_h), 0x8);
		} else {	/* 120Mhz */
			FUNC3(core, FUNC1(tsf_clk_frac_l), 0x8889);
			FUNC3(core, FUNC1(tsf_clk_frac_h), 0x8);
		}
	} else if (FUNC0(wlc_hw->band)) {
		if (spurmode == WL_SPURAVOID_ON1) {	/* 82Mhz */
			FUNC3(core, FUNC1(tsf_clk_frac_l), 0x7CE0);
			FUNC3(core, FUNC1(tsf_clk_frac_h), 0xC);
		} else {	/* 80Mhz */
			FUNC3(core, FUNC1(tsf_clk_frac_l), 0xCCCD);
			FUNC3(core, FUNC1(tsf_clk_frac_h), 0xC);
		}
	}
}