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
struct mwl8k_priv {int sniffer_enabled; int /*<<< orphan*/  vif_list; } ;
struct ieee80211_hw {int /*<<< orphan*/  wiphy; struct mwl8k_priv* priv; } ;

/* Variables and functions */
 unsigned int FIF_ALLMULTI ; 
 unsigned int FIF_BCN_PRBRESP_PROMISC ; 
 unsigned int FIF_CONTROL ; 
 unsigned int FIF_OTHER_BSS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct ieee80211_hw*,int) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC4(struct ieee80211_hw *hw,
			       unsigned int changed_flags,
			       unsigned int *total_flags)
{
	struct mwl8k_priv *priv = hw->priv;

	/*
	 * Hardware sniffer mode is mutually exclusive with STA
	 * operation, so refuse to enable sniffer mode if a STA
	 * interface is active.
	 */
	if (!FUNC0(&priv->vif_list)) {
		if (FUNC2())
			FUNC3(hw->wiphy,
				   "not enabling sniffer mode because STA interface is active\n");
		return 0;
	}

	if (!priv->sniffer_enabled) {
		if (FUNC1(hw, 1))
			return 0;
		priv->sniffer_enabled = true;
	}

	*total_flags &=	FIF_ALLMULTI |
			FIF_BCN_PRBRESP_PROMISC | FIF_CONTROL |
			FIF_OTHER_BSS;

	return 1;
}