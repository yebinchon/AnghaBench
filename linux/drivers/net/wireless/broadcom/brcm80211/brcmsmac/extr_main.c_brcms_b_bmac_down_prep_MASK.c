#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint ;
struct brcms_hardware {TYPE_1__* band; TYPE_2__* wlc; int /*<<< orphan*/  up; } ;
struct TYPE_4__ {int /*<<< orphan*/  wl; scalar_t__ macintmask; } ;
struct TYPE_3__ {int /*<<< orphan*/  pi; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCMA_CLKMODE_FAST ; 
 int /*<<< orphan*/  FUNC0 (struct brcms_hardware*,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct brcms_hardware *wlc_hw)
{
	bool dev_gone;
	uint callbacks = 0;

	if (!wlc_hw->up)
		return callbacks;

	dev_gone = FUNC1(wlc_hw->wlc);

	/* disable interrupts */
	if (dev_gone)
		wlc_hw->wlc->macintmask = 0;
	else {
		/* now disable interrupts */
		FUNC2(wlc_hw->wlc->wl);

		/* ensure we're running on the pll clock again */
		FUNC0(wlc_hw, BCMA_CLKMODE_FAST);
	}
	/* down phy at the last of this stage */
	callbacks += FUNC3(wlc_hw->band->pi);

	return callbacks;
}