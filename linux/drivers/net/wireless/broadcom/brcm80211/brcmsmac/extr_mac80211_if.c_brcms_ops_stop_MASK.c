#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ieee80211_hw {struct brcms_info* priv; } ;
struct brcms_info {int /*<<< orphan*/  lock; TYPE_2__* wlc; } ;
struct TYPE_7__ {int /*<<< orphan*/  bus; } ;
struct TYPE_6__ {TYPE_1__* hw; } ;
struct TYPE_5__ {TYPE_3__* d11core; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (struct brcms_info*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct ieee80211_hw *hw)
{
	struct brcms_info *wl = hw->priv;
	int status;

	FUNC4(hw);

	if (wl->wlc == NULL)
		return;

	FUNC5(&wl->lock);
	status = FUNC1(wl->wlc->hw->d11core);
	FUNC6(&wl->lock);
	if (!status) {
		FUNC3(wl->wlc->hw->d11core,
			  "wl: brcms_ops_stop: chipmatch failed\n");
		return;
	}

	FUNC0(wl->wlc->hw->d11core->bus, false);

	/* put driver in down state */
	FUNC5(&wl->lock);
	FUNC2(wl);
	FUNC6(&wl->lock);
}