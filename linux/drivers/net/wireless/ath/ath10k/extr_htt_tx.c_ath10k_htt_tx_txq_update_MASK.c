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
struct ieee80211_txq {int dummy; } ;
struct ieee80211_hw {struct ath10k* priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_lock; } ;
struct ath10k {TYPE_1__ htt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*,struct ieee80211_txq*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct ieee80211_hw *hw,
			      struct ieee80211_txq *txq)
{
	struct ath10k *ar = hw->priv;

	FUNC2(&ar->htt.tx_lock);
	FUNC0(hw, txq);
	FUNC1(ar);
	FUNC3(&ar->htt.tx_lock);
}