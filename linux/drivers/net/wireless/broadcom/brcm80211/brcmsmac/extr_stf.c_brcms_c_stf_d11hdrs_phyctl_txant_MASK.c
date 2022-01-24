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
typedef  int u16 ;
struct brcms_c_info {int /*<<< orphan*/  band; TYPE_1__* stf; } ;
struct TYPE_2__ {int phytxant; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int PHY_TXC_ANT_MASK ; 
 int PHY_TXC_HTANT_MASK ; 
 int FUNC1 (struct brcms_c_info*,int /*<<< orphan*/ ) ; 

u16 FUNC2(struct brcms_c_info *wlc, u32 rspec)
{
	u16 phytxant = wlc->stf->phytxant;
	u16 mask = PHY_TXC_ANT_MASK;

	/* for non-siso rates or default setting, use the available chains */
	if (FUNC0(wlc->band)) {
		phytxant = FUNC1(wlc, rspec);
		mask = PHY_TXC_HTANT_MASK;
	}
	phytxant |= phytxant & mask;
	return phytxant;
}