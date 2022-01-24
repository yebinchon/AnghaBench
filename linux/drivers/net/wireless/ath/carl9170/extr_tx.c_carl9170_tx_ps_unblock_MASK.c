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
struct ieee80211_sta {scalar_t__ drv_priv; } ;
struct carl9170_sta_info {int /*<<< orphan*/  pending_frames; } ;
struct ar9170 {int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 struct ieee80211_sta* FUNC0 (struct ar9170*,struct sk_buff*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct ieee80211_sta*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct ar9170 *ar, struct sk_buff *skb)
{
	struct ieee80211_sta *sta;
	struct carl9170_sta_info *sta_info;

	FUNC3();
	sta = FUNC0(ar, skb);
	if (FUNC5(!sta))
		goto out_rcu;

	sta_info = (struct carl9170_sta_info *) sta->drv_priv;
	if (FUNC1(&sta_info->pending_frames) == 0)
		FUNC2(ar->hw, sta, false);

out_rcu:
	FUNC4();
}