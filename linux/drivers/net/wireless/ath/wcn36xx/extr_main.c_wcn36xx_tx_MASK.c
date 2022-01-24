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
struct wcn36xx_sta {int dummy; } ;
struct wcn36xx {int /*<<< orphan*/  hw; } ;
struct sk_buff {int dummy; } ;
struct ieee80211_tx_control {scalar_t__ sta; } ;
struct ieee80211_hw {struct wcn36xx* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 struct wcn36xx_sta* FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (struct wcn36xx*,struct wcn36xx_sta*,struct sk_buff*) ; 

__attribute__((used)) static void FUNC3(struct ieee80211_hw *hw,
		       struct ieee80211_tx_control *control,
		       struct sk_buff *skb)
{
	struct wcn36xx *wcn = hw->priv;
	struct wcn36xx_sta *sta_priv = NULL;

	if (control->sta)
		sta_priv = FUNC1(control->sta);

	if (FUNC2(wcn, sta_priv, skb))
		FUNC0(wcn->hw, skb);
}