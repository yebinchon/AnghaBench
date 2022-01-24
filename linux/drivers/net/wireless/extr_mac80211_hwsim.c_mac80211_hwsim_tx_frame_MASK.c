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
typedef  scalar_t__ u32 ;
struct sk_buff {int dummy; } ;
struct mac80211_hwsim_data {int /*<<< orphan*/  wmediumd; } ;
struct TYPE_2__ {int /*<<< orphan*/  rates; int /*<<< orphan*/  vif; } ;
struct ieee80211_tx_info {TYPE_1__ control; } ;
struct ieee80211_hw {struct mac80211_hwsim_data* priv; } ;
struct ieee80211_channel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct ieee80211_tx_info* FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SUPPORTS_RC_TABLE ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_hw*,struct sk_buff*,struct ieee80211_channel*) ; 
 void FUNC7 (struct ieee80211_hw*,struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee80211_hw*,struct sk_buff*,struct ieee80211_channel*) ; 

__attribute__((used)) static void FUNC9(struct ieee80211_hw *hw,
				    struct sk_buff *skb,
				    struct ieee80211_channel *chan)
{
	struct mac80211_hwsim_data *data = hw->priv;
	u32 _pid = FUNC2(data->wmediumd);

	if (FUNC5(hw, SUPPORTS_RC_TABLE)) {
		struct ieee80211_tx_info *txi = FUNC1(skb);
		FUNC4(txi->control.vif, NULL, skb,
				       txi->control.rates,
				       FUNC0(txi->control.rates));
	}

	FUNC6(hw, skb, chan);

	if (_pid)
		return FUNC7(hw, skb, _pid);

	FUNC8(hw, skb, chan);
	FUNC3(skb);
}