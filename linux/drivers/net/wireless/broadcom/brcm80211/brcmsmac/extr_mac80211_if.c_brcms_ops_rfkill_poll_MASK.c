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
struct ieee80211_hw {struct brcms_info* priv; } ;
struct brcms_info {TYPE_2__* pub; int /*<<< orphan*/  lock; int /*<<< orphan*/  wlc; } ;
struct TYPE_4__ {TYPE_1__* ieee_hw; } ;
struct TYPE_3__ {int /*<<< orphan*/  wiphy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct ieee80211_hw *hw)
{
	struct brcms_info *wl = hw->priv;
	bool blocked;

	FUNC1(&wl->lock);
	blocked = FUNC0(wl->wlc);
	FUNC2(&wl->lock);

	FUNC3(wl->pub->ieee_hw->wiphy, blocked);
}