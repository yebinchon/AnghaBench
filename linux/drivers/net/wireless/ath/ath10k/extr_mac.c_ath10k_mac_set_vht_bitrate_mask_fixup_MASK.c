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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {int /*<<< orphan*/  vht_supported; } ;
struct ieee80211_sta {int /*<<< orphan*/  addr; TYPE_1__ vht_cap; } ;
struct ath10k_vif {int vht_num_rates; int /*<<< orphan*/  vdev_id; int /*<<< orphan*/  vht_pfr; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  WMI_PEER_PARAM_FIXED_RATE ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct ath10k*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC2(struct ath10k *ar,
						  struct ath10k_vif *arvif,
						  struct ieee80211_sta *sta)
{
	int err;
	u8 rate = arvif->vht_pfr;

	/* skip non vht and multiple rate peers */
	if (!sta->vht_cap.vht_supported || arvif->vht_num_rates != 1)
		return false;

	err = FUNC1(ar, arvif->vdev_id, sta->addr,
					WMI_PEER_PARAM_FIXED_RATE, rate);
	if (err)
		FUNC0(ar, "failed to eanble STA %pM peer fixed rate: %d\n",
			    sta->addr, err);

	return true;
}