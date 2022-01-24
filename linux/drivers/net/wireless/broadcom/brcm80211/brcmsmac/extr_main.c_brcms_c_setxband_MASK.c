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
typedef  size_t uint ;
typedef  int /*<<< orphan*/  u32 ;
struct brcms_hardware {int /*<<< orphan*/  noreset; scalar_t__ sbclk; TYPE_1__* wlc; int /*<<< orphan*/ * bandstate; int /*<<< orphan*/  band; int /*<<< orphan*/  unit; int /*<<< orphan*/  d11core; } ;
struct TYPE_2__ {int /*<<< orphan*/ * bandstate; int /*<<< orphan*/  band; } ;

/* Variables and functions */
 int /*<<< orphan*/  SICF_GMODE ; 
 int /*<<< orphan*/  FUNC0 (struct brcms_hardware*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static void FUNC2(struct brcms_hardware *wlc_hw, uint bandunit)
{
	FUNC1(wlc_hw->d11core, "wl%d: bandunit %d\n", wlc_hw->unit,
			   bandunit);

	wlc_hw->band = wlc_hw->bandstate[bandunit];

	/*
	 * BMAC_NOTE:
	 *   until we eliminate need for wlc->band refs in low level code
	 */
	wlc_hw->wlc->band = wlc_hw->wlc->bandstate[bandunit];

	/* set gmode core flag */
	if (wlc_hw->sbclk && !wlc_hw->noreset) {
		u32 gmode = 0;

		if (bandunit == 0)
			gmode = SICF_GMODE;

		FUNC0(wlc_hw, SICF_GMODE, gmode);
	}
}