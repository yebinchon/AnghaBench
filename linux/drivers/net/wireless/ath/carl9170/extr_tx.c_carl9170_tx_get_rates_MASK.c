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
struct ieee80211_vif {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  rates; } ;
struct ieee80211_tx_info {TYPE_1__ control; } ;
struct ieee80211_sta {int dummy; } ;
struct ar9170 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ CARL9170_TX_MAX_RATES ; 
 struct ieee80211_tx_info* FUNC1 (struct sk_buff*) ; 
 scalar_t__ IEEE80211_TX_MAX_RATES ; 
 scalar_t__ IEEE80211_TX_RATE_TABLE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_vif*,struct ieee80211_sta*,struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct ar9170 *ar,
				  struct ieee80211_vif *vif,
				  struct ieee80211_sta *sta,
				  struct sk_buff *skb)
{
	struct ieee80211_tx_info *info;

	FUNC0(IEEE80211_TX_MAX_RATES < CARL9170_TX_MAX_RATES);
	FUNC0(IEEE80211_TX_MAX_RATES > IEEE80211_TX_RATE_TABLE_SIZE);

	info = FUNC1(skb);

	FUNC2(vif, sta, skb,
			       info->control.rates,
			       IEEE80211_TX_MAX_RATES);
}