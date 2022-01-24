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
typedef  int u32 ;
struct ieee80211_conf {int flags; } ;
struct ieee80211_hw {struct ieee80211_conf conf; struct ath10k* priv; } ;
struct ath10k {int monitor; int /*<<< orphan*/  conf_mutex; } ;

/* Variables and functions */
 int IEEE80211_CONF_CHANGE_MONITOR ; 
 int IEEE80211_CONF_CHANGE_PS ; 
 int IEEE80211_CONF_MONITOR ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*) ; 
 int FUNC1 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct ieee80211_hw *hw, u32 changed)
{
	struct ath10k *ar = hw->priv;
	struct ieee80211_conf *conf = &hw->conf;
	int ret = 0;

	FUNC3(&ar->conf_mutex);

	if (changed & IEEE80211_CONF_CHANGE_PS)
		FUNC0(ar);

	if (changed & IEEE80211_CONF_CHANGE_MONITOR) {
		ar->monitor = conf->flags & IEEE80211_CONF_MONITOR;
		ret = FUNC1(ar);
		if (ret)
			FUNC2(ar, "failed to recalc monitor: %d\n", ret);
	}

	FUNC4(&ar->conf_mutex);
	return ret;
}