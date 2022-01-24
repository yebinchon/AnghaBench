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
struct brcms_info {int /*<<< orphan*/  lock; TYPE_2__* pub; int /*<<< orphan*/  wlc; } ;
struct TYPE_4__ {TYPE_1__* ieee_hw; } ;
struct TYPE_3__ {int /*<<< orphan*/  wiphy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

bool FUNC5(struct brcms_info *wl)
{
	bool blocked = FUNC0(wl->wlc);

	FUNC2(&wl->lock);
	FUNC3(wl->pub->ieee_hw->wiphy, blocked);
	if (blocked)
		FUNC4(wl->pub->ieee_hw->wiphy);
	FUNC1(&wl->lock);
	return blocked;
}