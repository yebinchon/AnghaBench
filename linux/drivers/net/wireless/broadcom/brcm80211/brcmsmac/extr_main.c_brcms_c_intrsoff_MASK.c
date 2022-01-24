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
typedef  scalar_t__ u32 ;
struct brcms_hardware {int /*<<< orphan*/  d11core; int /*<<< orphan*/  clk; } ;
struct brcms_c_info {scalar_t__ macintstatus; scalar_t__ macintmask; struct brcms_hardware* hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

u32 FUNC4(struct brcms_c_info *wlc)
{
	struct brcms_hardware *wlc_hw = wlc->hw;
	u32 macintmask;

	if (!wlc_hw->clk)
		return 0;

	macintmask = wlc->macintmask;	/* isr can still happen */

	FUNC2(wlc_hw->d11core, FUNC0(macintmask), 0);
	(void)FUNC1(wlc_hw->d11core, FUNC0(macintmask));
	FUNC3(1);		/* ensure int line is no longer driven */
	wlc->macintmask = 0;

	/* return previous macintmask; resolve race between us and our isr */
	return wlc->macintstatus ? 0 : macintmask;
}