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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct brcms_hardware {int forcefastclk; int mac_suspend_depth; int /*<<< orphan*/  wake_override; TYPE_1__* band; struct brcms_c_info* wlc; } ;
struct brcms_c_info {int /*<<< orphan*/  wl; } ;
struct TYPE_2__ {int /*<<< orphan*/  pi; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCMA_CLKMODE_DYNAMIC ; 
 int /*<<< orphan*/  BCMA_CLKMODE_FAST ; 
 int /*<<< orphan*/  BRCMS_WAKE_OVERRIDE_MACSUSPEND ; 
 int /*<<< orphan*/  FUNC0 (struct brcms_c_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct brcms_hardware*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct brcms_c_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct brcms_hardware*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct brcms_hardware *wlc_hw, u16 chanspec)
{
	u32 macintmask;
	bool fastclk;
	struct brcms_c_info *wlc = wlc_hw->wlc;

	/* request FAST clock if not on */
	fastclk = wlc_hw->forcefastclk;
	if (!fastclk)
		FUNC1(wlc_hw, BCMA_CLKMODE_FAST);

	/* disable interrupts */
	macintmask = FUNC4(wlc->wl);

	/* set up the specified band and chanspec */
	FUNC3(wlc_hw, FUNC6(chanspec));
	FUNC9(wlc_hw->band->pi, chanspec);

	/* do one-time phy inits and calibration */
	FUNC8(wlc_hw->band->pi);

	/* core-specific initialization */
	FUNC2(wlc);

	/* band-specific inits */
	FUNC0(wlc, chanspec);

	/* restore macintmask */
	FUNC5(wlc->wl, macintmask);

	/* seed wake_override with BRCMS_WAKE_OVERRIDE_MACSUSPEND since the mac
	 * is suspended and brcms_c_enable_mac() will clear this override bit.
	 */
	FUNC7(wlc_hw->wake_override, BRCMS_WAKE_OVERRIDE_MACSUSPEND);

	/*
	 * initialize mac_suspend_depth to 1 to match ucode
	 * initial suspended state
	 */
	wlc_hw->mac_suspend_depth = 1;

	/* restore the clk */
	if (!fastclk)
		FUNC1(wlc_hw, BCMA_CLKMODE_DYNAMIC);
}