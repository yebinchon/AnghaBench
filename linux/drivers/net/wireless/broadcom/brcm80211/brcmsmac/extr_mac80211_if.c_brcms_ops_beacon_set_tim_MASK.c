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
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int dummy; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_hw {struct brcms_info* priv; } ;
struct brcms_info {int /*<<< orphan*/  lock; TYPE_3__* wlc; } ;
struct TYPE_6__ {TYPE_2__* vif; } ;
struct TYPE_4__ {int /*<<< orphan*/  dtim_period; } ;
struct TYPE_5__ {TYPE_1__ bss_conf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC1 (struct ieee80211_hw*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct ieee80211_hw *hw,
				 struct ieee80211_sta *sta, bool set)
{
	struct brcms_info *wl = hw->priv;
	struct sk_buff *beacon = NULL;
	u16 tim_offset = 0;

	FUNC2(&wl->lock);
	if (wl->wlc->vif)
		beacon = FUNC1(hw, wl->wlc->vif,
						  &tim_offset, NULL);
	if (beacon)
		FUNC0(wl->wlc, beacon, tim_offset,
				       wl->wlc->vif->bss_conf.dtim_period);
	FUNC3(&wl->lock);

	return 0;
}