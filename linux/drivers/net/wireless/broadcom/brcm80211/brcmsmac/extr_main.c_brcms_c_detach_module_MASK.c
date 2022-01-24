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
struct brcms_c_info {int /*<<< orphan*/ * ampdu; int /*<<< orphan*/ * asi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct brcms_c_info*) ; 

__attribute__((used)) static void FUNC3(struct brcms_c_info *wlc)
{
	if (wlc->asi) {
		FUNC1(wlc->asi);
		wlc->asi = NULL;
	}

	if (wlc->ampdu) {
		FUNC0(wlc->ampdu);
		wlc->ampdu = NULL;
	}

	FUNC2(wlc);
}