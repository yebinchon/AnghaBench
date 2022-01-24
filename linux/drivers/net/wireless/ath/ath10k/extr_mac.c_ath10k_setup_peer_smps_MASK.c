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
typedef  int /*<<< orphan*/  u8 ;
struct ieee80211_sta_ht_cap {int cap; int /*<<< orphan*/  ht_supported; } ;
struct ath10k_vif {int /*<<< orphan*/  vdev_id; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int EINVAL ; 
 int IEEE80211_HT_CAP_SM_PS ; 
 int IEEE80211_HT_CAP_SM_PS_SHIFT ; 
 int /*<<< orphan*/  WMI_PEER_SMPS_STATE ; 
 int /*<<< orphan*/ * ath10k_smps_map ; 
 int FUNC1 (struct ath10k*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct ath10k *ar, struct ath10k_vif *arvif,
				  const u8 *addr,
				  const struct ieee80211_sta_ht_cap *ht_cap)
{
	int smps;

	if (!ht_cap->ht_supported)
		return 0;

	smps = ht_cap->cap & IEEE80211_HT_CAP_SM_PS;
	smps >>= IEEE80211_HT_CAP_SM_PS_SHIFT;

	if (smps >= FUNC0(ath10k_smps_map))
		return -EINVAL;

	return FUNC1(ar, arvif->vdev_id, addr,
					 WMI_PEER_SMPS_STATE,
					 ath10k_smps_map[smps]);
}