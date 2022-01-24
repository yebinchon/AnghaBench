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
typedef  int /*<<< orphan*/  u64 ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct brcms_info* priv; } ;
struct brcms_info {int /*<<< orphan*/  lock; int /*<<< orphan*/  wlc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static u64 FUNC3(struct ieee80211_hw *hw, struct ieee80211_vif *vif)
{
	struct brcms_info *wl = hw->priv;
	u64 tsf;

	FUNC1(&wl->lock);
	tsf = FUNC0(wl->wlc);
	FUNC2(&wl->lock);

	return tsf;
}