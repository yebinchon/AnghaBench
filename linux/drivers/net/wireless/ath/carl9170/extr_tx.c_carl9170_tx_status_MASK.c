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
struct ar9170 {int /*<<< orphan*/  tx_ack_failures; } ;

/* Variables and functions */
 struct ieee80211_tx_info* FUNC0 (struct sk_buff*) ; 
 int IEEE80211_TX_CTL_AMPDU ; 
 int IEEE80211_TX_STAT_ACK ; 
 int /*<<< orphan*/  FUNC1 (struct ar9170*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct ar9170*,struct sk_buff*,struct ieee80211_tx_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct ar9170*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct ar9170*,struct sk_buff*,struct ieee80211_tx_info*) ; 

void FUNC6(struct ar9170 *ar, struct sk_buff *skb,
			const bool success)
{
	struct ieee80211_tx_info *txinfo;

	FUNC1(ar, skb);

	txinfo = FUNC0(skb);

	FUNC2(ar, skb, txinfo);

	if (success)
		txinfo->flags |= IEEE80211_TX_STAT_ACK;
	else
		ar->tx_ack_failures++;

	if (txinfo->flags & IEEE80211_TX_CTL_AMPDU)
		FUNC5(ar, skb, txinfo);

	FUNC3(ar, skb);
	FUNC4(skb);
}