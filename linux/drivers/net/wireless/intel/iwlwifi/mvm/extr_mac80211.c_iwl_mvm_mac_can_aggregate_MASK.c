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
struct sk_buff {scalar_t__ protocol; } ;
struct iwl_mvm {int dummy; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_IP ; 
 struct iwl_mvm* FUNC0 (struct ieee80211_hw*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_mvm*) ; 

__attribute__((used)) static bool FUNC4(struct ieee80211_hw *hw,
				      struct sk_buff *head,
				      struct sk_buff *skb)
{
	struct iwl_mvm *mvm = FUNC0(hw);

	/* For now don't aggregate IPv6 in AMSDU */
	if (skb->protocol != FUNC1(ETH_P_IP))
		return false;

	if (!FUNC3(mvm))
		return true;

	return FUNC2(skb) == FUNC2(head);
}