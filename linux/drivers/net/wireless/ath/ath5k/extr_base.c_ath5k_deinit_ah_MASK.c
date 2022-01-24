#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ieee80211_hw {int dummy; } ;
struct ath5k_hw {int /*<<< orphan*/  irq; int /*<<< orphan*/  bhalq; struct ieee80211_hw* hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ath5k_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath5k_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath5k_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ath5k_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath5k_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath5k_hw*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct ath5k_hw*) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_hw*) ; 

void
FUNC8(struct ath5k_hw *ah)
{
	struct ieee80211_hw *hw = ah->hw;

	/*
	 * NB: the order of these is important:
	 * o call the 802.11 layer before detaching ath5k_hw to
	 *   ensure callbacks into the driver to delete global
	 *   key cache entries can be handled
	 * o reclaim the tx queue data structures after calling
	 *   the 802.11 layer as we'll get called back to reclaim
	 *   node state and potentially want to use them
	 * o to cleanup the tx queues the hal is called, so detach
	 *   it last
	 * XXX: ??? detach ath5k_hw ???
	 * Other than that, it's straightforward...
	 */
	FUNC7(hw);
	FUNC0(ah);
	FUNC4(ah);
	FUNC2(ah, ah->bhalq);
	FUNC5(ah);

	FUNC3(ah);
	/*
	 * NB: can't reclaim these until after ieee80211_ifdetach
	 * returns because we'll get called back to reclaim node
	 * state and potentially want to use them.
	 */
	FUNC1(ah);
	FUNC6(ah->irq, ah);
}