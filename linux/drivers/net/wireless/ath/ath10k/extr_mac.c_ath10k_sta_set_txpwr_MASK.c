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
struct ieee80211_vif {scalar_t__ drv_priv; } ;
struct TYPE_2__ {scalar_t__ type; scalar_t__ power; } ;
struct ieee80211_sta {int /*<<< orphan*/  addr; TYPE_1__ txpwr; } ;
struct ieee80211_hw {struct ath10k* priv; } ;
struct ath10k_vif {int /*<<< orphan*/  vdev_id; } ;
struct ath10k {int /*<<< orphan*/  conf_mutex; } ;
typedef  scalar_t__ s16 ;

/* Variables and functions */
 scalar_t__ ATH10K_TX_POWER_MAX_VAL ; 
 scalar_t__ ATH10K_TX_POWER_MIN_VAL ; 
 int EINVAL ; 
 scalar_t__ NL80211_TX_POWER_AUTOMATIC ; 
 int /*<<< orphan*/  WMI_PEER_USE_FIXED_PWR ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*,char*,int) ; 
 int FUNC1 (struct ath10k*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct ieee80211_hw *hw,
				struct ieee80211_vif *vif,
				struct ieee80211_sta *sta)
{
	struct ath10k *ar = hw->priv;
	struct ath10k_vif *arvif = (void *)vif->drv_priv;
	int ret = 0;
	s16 txpwr;

	if (sta->txpwr.type == NL80211_TX_POWER_AUTOMATIC) {
		txpwr = 0;
	} else {
		txpwr = sta->txpwr.power;
		if (!txpwr)
			return -EINVAL;
	}

	if (txpwr > ATH10K_TX_POWER_MAX_VAL || txpwr < ATH10K_TX_POWER_MIN_VAL)
		return -EINVAL;

	FUNC2(&ar->conf_mutex);

	ret = FUNC1(ar, arvif->vdev_id, sta->addr,
					WMI_PEER_USE_FIXED_PWR, txpwr);
	if (ret) {
		FUNC0(ar, "failed to set tx power for station ret: %d\n",
			    ret);
		goto out;
	}

out:
	FUNC3(&ar->conf_mutex);
	return ret;
}