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
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_2__ {void* tx_highest; void* rx_highest; void* tx_mcs_map; void* rx_mcs_map; } ;
struct ieee80211_sta_vht_cap {int vht_supported; int cap; TYPE_1__ vht_mcs; int /*<<< orphan*/  member_0; } ;
struct ath10k_hw_params {int vht160_mcs_rx_highest; int vht160_mcs_tx_highest; } ;
struct ath10k {int vht_cap_info; int num_rf_chains; int cfg_tx_chainmask; struct ath10k_hw_params hw_params; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int IEEE80211_VHT_CAP_BEAMFORMEE_STS_MASK ; 
 int IEEE80211_VHT_CAP_BEAMFORMEE_STS_SHIFT ; 
 int IEEE80211_VHT_CAP_MU_BEAMFORMEE_CAPABLE ; 
 int IEEE80211_VHT_CAP_MU_BEAMFORMER_CAPABLE ; 
 int IEEE80211_VHT_CAP_SHORT_GI_160 ; 
 int IEEE80211_VHT_CAP_SOUNDING_DIMENSIONS_MASK ; 
 int IEEE80211_VHT_CAP_SOUNDING_DIMENSIONS_SHIFT ; 
 int IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_160MHZ ; 
 int IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_MASK ; 
 int IEEE80211_VHT_CAP_SU_BEAMFORMEE_CAPABLE ; 
 int IEEE80211_VHT_CAP_SU_BEAMFORMER_CAPABLE ; 
 int IEEE80211_VHT_CAP_TXSTBC ; 
 int IEEE80211_VHT_MCS_NOT_SUPPORTED ; 
 int IEEE80211_VHT_MCS_SUPPORT_0_9 ; 
 int FUNC1 (struct ath10k*) ; 
 int FUNC2 (struct ath10k*) ; 
 void* FUNC3 (int) ; 

__attribute__((used)) static struct ieee80211_sta_vht_cap FUNC4(struct ath10k *ar)
{
	struct ieee80211_sta_vht_cap vht_cap = {0};
	struct ath10k_hw_params *hw = &ar->hw_params;
	u16 mcs_map;
	u32 val;
	int i;

	vht_cap.vht_supported = 1;
	vht_cap.cap = ar->vht_cap_info;

	if (ar->vht_cap_info & (IEEE80211_VHT_CAP_SU_BEAMFORMEE_CAPABLE |
				IEEE80211_VHT_CAP_MU_BEAMFORMEE_CAPABLE)) {
		val = FUNC2(ar);
		val <<= IEEE80211_VHT_CAP_BEAMFORMEE_STS_SHIFT;
		val &= IEEE80211_VHT_CAP_BEAMFORMEE_STS_MASK;

		vht_cap.cap |= val;
	}

	if (ar->vht_cap_info & (IEEE80211_VHT_CAP_SU_BEAMFORMER_CAPABLE |
				IEEE80211_VHT_CAP_MU_BEAMFORMER_CAPABLE)) {
		val = FUNC1(ar);
		val <<= IEEE80211_VHT_CAP_SOUNDING_DIMENSIONS_SHIFT;
		val &= IEEE80211_VHT_CAP_SOUNDING_DIMENSIONS_MASK;

		vht_cap.cap |= val;
	}

	/* Currently the firmware seems to be buggy, don't enable 80+80
	 * mode until that's resolved.
	 */
	if ((ar->vht_cap_info & IEEE80211_VHT_CAP_SHORT_GI_160) &&
	    (ar->vht_cap_info & IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_MASK) == 0)
		vht_cap.cap |= IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_160MHZ;

	mcs_map = 0;
	for (i = 0; i < 8; i++) {
		if ((i < ar->num_rf_chains) && (ar->cfg_tx_chainmask & FUNC0(i)))
			mcs_map |= IEEE80211_VHT_MCS_SUPPORT_0_9 << (i * 2);
		else
			mcs_map |= IEEE80211_VHT_MCS_NOT_SUPPORTED << (i * 2);
	}

	if (ar->cfg_tx_chainmask <= 1)
		vht_cap.cap &= ~IEEE80211_VHT_CAP_TXSTBC;

	vht_cap.vht_mcs.rx_mcs_map = FUNC3(mcs_map);
	vht_cap.vht_mcs.tx_mcs_map = FUNC3(mcs_map);

	/* If we are supporting 160Mhz or 80+80, then the NIC may be able to do
	 * a restricted NSS for 160 or 80+80 vs what it can do for 80Mhz.  Give
	 * user-space a clue if that is the case.
	 */
	if ((vht_cap.cap & IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_MASK) &&
	    (hw->vht160_mcs_rx_highest != 0 ||
	     hw->vht160_mcs_tx_highest != 0)) {
		vht_cap.vht_mcs.rx_highest = FUNC3(hw->vht160_mcs_rx_highest);
		vht_cap.vht_mcs.tx_highest = FUNC3(hw->vht160_mcs_tx_highest);
	}

	return vht_cap;
}