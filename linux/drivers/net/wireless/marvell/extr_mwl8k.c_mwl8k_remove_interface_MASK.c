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
struct mwl8k_vif {int dummy; } ;
struct mwl8k_priv {int dummy; } ;
struct ieee80211_vif {scalar_t__ type; int /*<<< orphan*/  addr; } ;
struct ieee80211_hw {struct mwl8k_priv* priv; } ;

/* Variables and functions */
 struct mwl8k_vif* FUNC0 (struct ieee80211_vif*) ; 
 scalar_t__ NL80211_IFTYPE_AP ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*,struct ieee80211_vif*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*,struct ieee80211_vif*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mwl8k_priv*,struct mwl8k_vif*) ; 

__attribute__((used)) static void FUNC4(struct ieee80211_hw *hw,
				   struct ieee80211_vif *vif)
{
	struct mwl8k_priv *priv = hw->priv;
	struct mwl8k_vif *mwl8k_vif = FUNC0(vif);

	if (vif->type == NL80211_IFTYPE_AP)
		FUNC2(hw, vif, vif->addr);

	FUNC1(hw, vif, vif->addr);

	FUNC3(priv, mwl8k_vif);
}