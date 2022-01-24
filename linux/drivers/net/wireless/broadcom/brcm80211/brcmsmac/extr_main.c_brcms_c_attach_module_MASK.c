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
typedef  int uint ;
struct brcms_c_info {int /*<<< orphan*/  wiphy; int /*<<< orphan*/ * ampdu; int /*<<< orphan*/ * asi; TYPE_1__* pub; } ;
struct TYPE_2__ {int unit; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (struct brcms_c_info*) ; 
 int /*<<< orphan*/ * FUNC1 (struct brcms_c_info*) ; 
 scalar_t__ FUNC2 (struct brcms_c_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static uint FUNC4(struct brcms_c_info *wlc)
{
	uint err = 0;
	uint unit;
	unit = wlc->pub->unit;

	wlc->asi = FUNC1(wlc);
	if (wlc->asi == NULL) {
		FUNC3(wlc->wiphy, "wl%d: attach: antsel_attach "
			  "failed\n", unit);
		err = 44;
		goto fail;
	}

	wlc->ampdu = FUNC0(wlc);
	if (wlc->ampdu == NULL) {
		FUNC3(wlc->wiphy, "wl%d: attach: ampdu_attach "
			  "failed\n", unit);
		err = 50;
		goto fail;
	}

	if ((FUNC2(wlc) != 0)) {
		FUNC3(wlc->wiphy, "wl%d: attach: stf_attach "
			  "failed\n", unit);
		err = 68;
		goto fail;
	}
 fail:
	return err;
}