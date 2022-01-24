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
struct sk_buff {int dummy; } ;
struct ieee80211_tx_info {int flags; } ;
struct ath10k {int /*<<< orphan*/  data_lock; struct sk_buff* offchan_tx_skb; int /*<<< orphan*/  offchan_tx_completed; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_HTT ; 
 struct ieee80211_tx_info* FUNC0 (struct sk_buff*) ; 
 int IEEE80211_TX_CTL_TX_OFFCHAN ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,int /*<<< orphan*/ ,char*,struct sk_buff*) ; 
 scalar_t__ FUNC2 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct ath10k *ar, struct sk_buff *skb)
{
	struct ieee80211_tx_info *info = FUNC0(skb);

	if (FUNC5(!(info->flags & IEEE80211_TX_CTL_TX_OFFCHAN)))
		return;

	if (FUNC2(ar))
		return;

	/* If the original wait_for_completion() timed out before
	 * {data,mgmt}_tx_completed() was called then we could complete
	 * offchan_tx_completed for a different skb. Prevent this by using
	 * offchan_tx_skb.
	 */
	FUNC6(&ar->data_lock);
	if (ar->offchan_tx_skb != skb) {
		FUNC3(ar, "completed old offchannel frame\n");
		goto out;
	}

	FUNC4(&ar->offchan_tx_completed);
	ar->offchan_tx_skb = NULL; /* just for sanity */

	FUNC1(ar, ATH10K_DBG_HTT, "completed offchannel skb %pK\n", skb);
out:
	FUNC7(&ar->data_lock);
}