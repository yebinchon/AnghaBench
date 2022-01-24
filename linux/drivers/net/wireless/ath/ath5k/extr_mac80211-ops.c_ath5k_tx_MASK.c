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
typedef  size_t u16 ;
struct sk_buff {int dummy; } ;
struct ieee80211_tx_control {int dummy; } ;
struct ieee80211_hw {struct ath5k_hw* priv; } ;
struct TYPE_3__ {size_t q_tx_num; } ;
struct TYPE_4__ {TYPE_1__ cap_queues; } ;
struct ath5k_hw {int /*<<< orphan*/ * txqs; TYPE_2__ ah_capabilities; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*,struct sk_buff*,int /*<<< orphan*/ *,struct ieee80211_tx_control*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*,struct sk_buff*) ; 
 size_t FUNC3 (struct sk_buff*) ; 

__attribute__((used)) static void
FUNC4(struct ieee80211_hw *hw, struct ieee80211_tx_control *control,
	 struct sk_buff *skb)
{
	struct ath5k_hw *ah = hw->priv;
	u16 qnum = FUNC3(skb);

	if (FUNC0(qnum >= ah->ah_capabilities.cap_queues.q_tx_num)) {
		FUNC2(hw, skb);
		return;
	}

	FUNC1(hw, skb, &ah->txqs[qnum], control);
}