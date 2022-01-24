#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u16 ;
struct brcms_c_info {int bandinit_pending; TYPE_3__* band; TYPE_2__* pub; TYPE_1__* default_bss; int /*<<< orphan*/  cmi; } ;
struct TYPE_6__ {scalar_t__ bandunit; int /*<<< orphan*/  pi; } ;
struct TYPE_5__ {scalar_t__ up; } ;
struct TYPE_4__ {scalar_t__ chanspec; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ MAXCHANNEL ; 
 int /*<<< orphan*/  FUNC0 (struct brcms_c_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct brcms_c_info*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct brcms_c_info*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct brcms_c_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (struct brcms_c_info*) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

int FUNC9(struct brcms_c_info *wlc, u16 channel)
{
	u16 chspec = FUNC6(channel);

	if (channel < 0 || channel > MAXCHANNEL)
		return -EINVAL;

	if (!FUNC4(wlc->cmi, chspec))
		return -EINVAL;


	if (!wlc->pub->up && FUNC5(wlc)) {
		if (wlc->band->bandunit != FUNC7(chspec))
			wlc->bandinit_pending = true;
		else
			wlc->bandinit_pending = false;
	}

	wlc->default_bss->chanspec = chspec;
	/* brcms_c_BSSinit() will sanitize the rateset before
	 * using it.. */
	if (wlc->pub->up && (FUNC8(wlc->band->pi) != chspec)) {
		FUNC2(wlc, chspec);
		FUNC3(wlc);
		FUNC1(wlc, chspec);
		FUNC0(wlc);
	}
	return 0;
}