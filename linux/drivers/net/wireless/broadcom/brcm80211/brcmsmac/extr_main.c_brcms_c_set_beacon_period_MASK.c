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
typedef  int u32 ;
typedef  int u16 ;
struct brcms_c_info {TYPE_2__* hw; TYPE_1__* default_bss; } ;
struct TYPE_4__ {int /*<<< orphan*/  d11core; } ;
struct TYPE_3__ {int beacon_period; } ;

/* Variables and functions */
 int CFPREP_CBI_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct brcms_c_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct brcms_c_info*) ; 
 int /*<<< orphan*/  tsf_cfprep ; 
 int /*<<< orphan*/  tsf_cfpstart ; 

int FUNC4(struct brcms_c_info *wlc, u16 period)
{
	u32 bcnint_us;

	if (period == 0)
		return -EINVAL;

	wlc->default_bss->beacon_period = period;

	bcnint_us = period << 10;
	FUNC2(wlc);
	FUNC1(wlc->hw->d11core, FUNC0(tsf_cfprep),
		     (bcnint_us << CFPREP_CBI_SHIFT));
	FUNC1(wlc->hw->d11core, FUNC0(tsf_cfpstart), bcnint_us);
	FUNC3(wlc);

	return 0;
}