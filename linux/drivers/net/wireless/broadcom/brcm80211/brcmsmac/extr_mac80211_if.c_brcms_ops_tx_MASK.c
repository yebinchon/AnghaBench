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
struct sk_buff {int dummy; } ;
struct ieee80211_tx_info {int /*<<< orphan*/ * rate_driver_data; } ;
struct ieee80211_tx_control {int /*<<< orphan*/  sta; } ;
struct ieee80211_hw {struct brcms_info* priv; } ;
struct brcms_info {int /*<<< orphan*/  lock; TYPE_3__* wlc; TYPE_2__* pub; } ;
struct TYPE_6__ {TYPE_1__* hw; } ;
struct TYPE_5__ {int /*<<< orphan*/  up; } ;
struct TYPE_4__ {int /*<<< orphan*/  d11core; } ;

/* Variables and functions */
 struct ieee80211_tx_info* FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (TYPE_3__*,struct sk_buff*,struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct ieee80211_hw *hw,
			 struct ieee80211_tx_control *control,
			 struct sk_buff *skb)
{
	struct brcms_info *wl = hw->priv;
	struct ieee80211_tx_info *tx_info = FUNC0(skb);

	FUNC4(&wl->lock);
	if (!wl->pub->up) {
		FUNC2(wl->wlc->hw->d11core, "ops->tx called while down\n");
		FUNC3(skb);
		goto done;
	}
	if (FUNC1(wl->wlc, skb, hw))
		tx_info->rate_driver_data[0] = control->sta;
 done:
	FUNC5(&wl->lock);
}