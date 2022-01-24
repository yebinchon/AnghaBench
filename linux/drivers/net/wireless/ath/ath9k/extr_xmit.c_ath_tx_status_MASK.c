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
struct sk_buff {int dummy; } ;
struct TYPE_2__ {struct ieee80211_sta** status_driver_data; } ;
struct ieee80211_tx_info {int flags; TYPE_1__ status; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 struct ieee80211_tx_info* FUNC0 (struct sk_buff*) ; 
 int IEEE80211_TX_CTL_REQ_TX_STATUS ; 
 int IEEE80211_TX_STATUS_EOSP ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*,struct ieee80211_sta*,struct ieee80211_tx_info*) ; 

__attribute__((used)) static void FUNC4(struct ieee80211_hw *hw, struct sk_buff *skb)
{
	struct ieee80211_tx_info *info = FUNC0(skb);
	struct ieee80211_sta *sta = info->status.status_driver_data[0];

	if (info->flags & (IEEE80211_TX_CTL_REQ_TX_STATUS |
			   IEEE80211_TX_STATUS_EOSP)) {
		FUNC2(hw, skb);
		return;
	}

	if (sta)
		FUNC3(hw, sta, info);

	FUNC1(skb);
}