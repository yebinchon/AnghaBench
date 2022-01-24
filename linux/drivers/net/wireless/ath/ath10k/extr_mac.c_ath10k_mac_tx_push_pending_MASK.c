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
typedef  scalar_t__ u32 ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_3__ {scalar_t__ mode; } ;
struct TYPE_4__ {int num_pending_tx; int max_num_pending_tx; TYPE_1__ tx_q_state; } ;
struct ath10k {TYPE_2__ htt; struct ieee80211_hw* hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  EBUSY ; 
 scalar_t__ HTT_TX_MODE_SWITCH_PUSH ; 
 scalar_t__ IEEE80211_NUM_ACS ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

void FUNC3(struct ath10k *ar)
{
	struct ieee80211_hw *hw = ar->hw;
	u32 ac;

	if (ar->htt.tx_q_state.mode != HTT_TX_MODE_SWITCH_PUSH)
		return;

	if (ar->htt.num_pending_tx >= (ar->htt.max_num_pending_tx / 2))
		return;

	FUNC1();
	for (ac = 0; ac < IEEE80211_NUM_ACS; ac++) {
		if (FUNC0(hw, ac) == -EBUSY)
			break;
	}
	FUNC2();
}