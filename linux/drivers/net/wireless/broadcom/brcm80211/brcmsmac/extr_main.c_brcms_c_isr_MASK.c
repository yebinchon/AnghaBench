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
typedef  int u32 ;
struct brcms_hardware {int /*<<< orphan*/  d11core; int /*<<< orphan*/  up; } ;
struct brcms_c_info {int macintstatus; int /*<<< orphan*/  macintmask; struct brcms_hardware* hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct brcms_c_info*,int) ; 

bool FUNC2(struct brcms_c_info *wlc)
{
	struct brcms_hardware *wlc_hw = wlc->hw;
	u32 macintstatus;

	if (!wlc_hw->up || !wlc->macintmask)
		return false;

	/* read and clear macintstatus and intstatus registers */
	macintstatus = FUNC1(wlc, true);

	if (macintstatus == 0xffffffff) {
		FUNC0(wlc_hw->d11core,
			  "DEVICEREMOVED detected in the ISR code path\n");
		return false;
	}

	/* it is not for us */
	if (macintstatus == 0)
		return false;

	/* save interrupt status bits */
	wlc->macintstatus = macintstatus;

	return true;

}