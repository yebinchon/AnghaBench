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
typedef  int /*<<< orphan*/  u8 ;
struct ieee80211_txq {int /*<<< orphan*/  ac; } ;
struct ieee80211_hw {struct ath10k* priv; } ;
struct TYPE_3__ {scalar_t__ mode; } ;
struct TYPE_4__ {TYPE_1__ tx_q_state; } ;
struct ath10k {TYPE_2__ htt; } ;

/* Variables and functions */
 scalar_t__ HTT_TX_MODE_SWITCH_PUSH ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*,struct ieee80211_txq*) ; 
 scalar_t__ FUNC1 (struct ieee80211_hw*,struct ieee80211_txq*) ; 
 int FUNC2 (struct ieee80211_hw*,struct ieee80211_txq*) ; 
 struct ieee80211_txq* FUNC3 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*,struct ieee80211_txq*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct ieee80211_hw *hw,
					struct ieee80211_txq *txq)
{
	struct ath10k *ar = hw->priv;
	int ret;
	u8 ac;

	FUNC0(hw, txq);
	if (ar->htt.tx_q_state.mode != HTT_TX_MODE_SWITCH_PUSH)
		return;

	ac = txq->ac;
	FUNC6(hw, ac);
	txq = FUNC3(hw, ac);
	if (!txq)
		goto out;

	while (FUNC1(hw, txq)) {
		ret = FUNC2(hw, txq);
		if (ret < 0)
			break;
	}
	FUNC4(hw, txq, false);
	FUNC0(hw, txq);
out:
	FUNC5(hw, ac);
}