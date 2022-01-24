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
struct ieee80211_hw {int dummy; } ;
struct ieee80211_channel_switch {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*) ; 

__attribute__((used)) static void FUNC2(struct ieee80211_hw *hw,
				   struct ieee80211_vif *vif,
				   struct ieee80211_channel_switch *chsw)
{
	/* By implementing this operation, we prevent mac80211 from
	 * starting its own channel switch timer, so that we can call
	 * ieee80211_chswitch_done() ourselves at the right time
	 * (which is when the absence time event starts).
	 */

	FUNC0(FUNC1(hw),
			   "dummy channel switch op\n");
}