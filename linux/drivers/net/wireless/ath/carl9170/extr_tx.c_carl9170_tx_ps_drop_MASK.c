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
struct ieee80211_sta {scalar_t__ drv_priv; } ;
struct carl9170_sta_info {int /*<<< orphan*/  sleeping; } ;
struct ar9170 {int /*<<< orphan*/  tx_ampdu_upload; } ;

/* Variables and functions */
 struct ieee80211_tx_info* FUNC0 (struct sk_buff*) ; 
 int IEEE80211_TX_CTL_AMPDU ; 
 int IEEE80211_TX_CTL_CLEAR_PS_FILT ; 
 int IEEE80211_TX_CTL_NO_PS_BUFFER ; 
 int IEEE80211_TX_STAT_TX_FILTERED ; 
 struct ieee80211_sta* FUNC1 (struct ar9170*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ar9170*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct ar9170*,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC8(struct ar9170 *ar, struct sk_buff *skb)
{
	struct ieee80211_sta *sta;
	struct carl9170_sta_info *sta_info;
	struct ieee80211_tx_info *tx_info;

	FUNC5();
	sta = FUNC1(ar, skb);
	if (!sta)
		goto out_rcu;

	sta_info = (void *) sta->drv_priv;
	tx_info = FUNC0(skb);

	if (FUNC7(sta_info->sleeping) &&
	    !(tx_info->flags & (IEEE80211_TX_CTL_NO_PS_BUFFER |
				IEEE80211_TX_CTL_CLEAR_PS_FILT))) {
		FUNC6();

		if (tx_info->flags & IEEE80211_TX_CTL_AMPDU)
			FUNC2(&ar->tx_ampdu_upload);

		tx_info->flags |= IEEE80211_TX_STAT_TX_FILTERED;
		FUNC3(ar, skb);
		FUNC4(ar, skb, false);
		return true;
	}

out_rcu:
	FUNC6();
	return false;
}