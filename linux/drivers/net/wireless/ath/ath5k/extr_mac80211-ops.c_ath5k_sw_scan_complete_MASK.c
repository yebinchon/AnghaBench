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
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct ath5k_hw* priv; } ;
struct ath5k_hw {scalar_t__ assoc; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR5K_LED_ASSOC ; 
 int /*<<< orphan*/  AR5K_LED_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct ath5k_hw*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(struct ieee80211_hw *hw, struct ieee80211_vif *vif)
{
	struct ath5k_hw *ah = hw->priv;
	FUNC0(ah, ah->assoc ?
		AR5K_LED_ASSOC : AR5K_LED_INIT);
}