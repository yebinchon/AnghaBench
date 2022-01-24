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
typedef  int /*<<< orphan*/  u16 ;
struct brcms_hardware {int forcefastclk; TYPE_1__* band; } ;
struct TYPE_2__ {int /*<<< orphan*/  pi; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCMA_CLKMODE_DYNAMIC ; 
 int /*<<< orphan*/  BCMA_CLKMODE_FAST ; 
 int /*<<< orphan*/  FUNC0 (struct brcms_hardware*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct brcms_hardware*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(struct brcms_hardware *wlc_hw, u16 bw)
{
	bool fastclk;

	/* request FAST clock if not on */
	fastclk = wlc_hw->forcefastclk;
	if (!fastclk)
		FUNC0(wlc_hw, BCMA_CLKMODE_FAST);

	FUNC2(wlc_hw->band->pi, bw);

	FUNC1(wlc_hw);
	FUNC4(wlc_hw->band->pi, FUNC3(wlc_hw->band->pi));

	/* restore the clk */
	if (!fastclk)
		FUNC0(wlc_hw, BCMA_CLKMODE_DYNAMIC);
}