#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct ieee80211_vif {scalar_t__ drv_priv; } ;
struct ieee80211_hw {int dummy; } ;
struct cfg80211_chan_def {TYPE_1__* chan; } ;
struct cfg80211_bitrate_mask {TYPE_2__* control; } ;
struct ath10k_vif {int vht_num_rates; int /*<<< orphan*/  vdev_id; scalar_t__ vht_pfr; struct cfg80211_bitrate_mask bitrate_mask; struct ath10k* ar; } ;
struct TYPE_7__ {int /*<<< orphan*/  fw_features; } ;
struct TYPE_8__ {TYPE_3__ fw_file; } ;
struct ath10k {int ht_cap_info; int /*<<< orphan*/  conf_mutex; int /*<<< orphan*/  hw; int /*<<< orphan*/  num_rf_chains; TYPE_4__ normal_mode_fw; } ;
typedef  enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;
struct TYPE_6__ {scalar_t__* ht_mcs; scalar_t__ gi; int /*<<< orphan*/ * vht_mcs; } ;
struct TYPE_5__ {int band; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_FW_FEATURE_PEER_FIXED_RATE ; 
 int EINVAL ; 
 int EPERM ; 
 scalar_t__ NL80211_TXRATE_FORCE_LGI ; 
 scalar_t__ WMI_FIXED_RATE_NONE ; 
 int WMI_HT_CAP_LDPC ; 
 scalar_t__ FUNC0 (struct ath10k*,int,struct cfg80211_bitrate_mask const*,int*) ; 
 int FUNC1 (struct ath10k*,int,struct cfg80211_bitrate_mask const*,scalar_t__*,scalar_t__*,int) ; 
 scalar_t__ FUNC2 (struct ath10k*,int,struct cfg80211_bitrate_mask const*,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*,int,struct cfg80211_bitrate_mask const*,int) ; 
 int /*<<< orphan*/  ath10k_mac_clr_bitrate_mask_iter ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__ const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  ath10k_mac_set_bitrate_mask_iter ; 
 int FUNC6 (struct ath10k_vif*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC7 (struct ieee80211_vif*,struct cfg80211_chan_def*) ; 
 int /*<<< orphan*/  FUNC8 (struct ath10k*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ath10k_vif*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct ieee80211_hw *hw,
					  struct ieee80211_vif *vif,
					  const struct cfg80211_bitrate_mask *mask)
{
	struct ath10k_vif *arvif = (void *)vif->drv_priv;
	struct cfg80211_chan_def def;
	struct ath10k *ar = arvif->ar;
	enum nl80211_band band;
	const u8 *ht_mcs_mask;
	const u16 *vht_mcs_mask;
	u8 rate;
	u8 nss;
	u8 sgi;
	u8 ldpc;
	int single_nss;
	int ret;
	int vht_num_rates, allow_pfr;
	u8 vht_pfr;
	bool update_bitrate_mask = true;

	if (FUNC7(vif, &def))
		return -EPERM;

	band = def.chan->band;
	ht_mcs_mask = mask->control[band].ht_mcs;
	vht_mcs_mask = mask->control[band].vht_mcs;
	ldpc = !!(ar->ht_cap_info & WMI_HT_CAP_LDPC);

	sgi = mask->control[band].gi;
	if (sgi == NL80211_TXRATE_FORCE_LGI)
		return -EINVAL;

	allow_pfr = FUNC14(ATH10K_FW_FEATURE_PEER_FIXED_RATE,
			     ar->normal_mode_fw.fw_file.fw_features);
	if (allow_pfr) {
		FUNC12(&ar->conf_mutex);
		FUNC9(ar->hw,
						  ath10k_mac_clr_bitrate_mask_iter,
						  arvif);
		FUNC13(&ar->conf_mutex);
	}

	if (FUNC2(ar, band, mask,
						    &vht_num_rates)) {
		ret = FUNC1(ar, band, mask,
							      &rate, &nss,
							      false);
		if (ret) {
			FUNC8(ar, "failed to get single rate for vdev %i: %d\n",
				    arvif->vdev_id, ret);
			return ret;
		}
	} else if (FUNC0(ar, band, mask,
							  &single_nss)) {
		rate = WMI_FIXED_RATE_NONE;
		nss = single_nss;
	} else {
		rate = WMI_FIXED_RATE_NONE;
		nss = FUNC11(ar->num_rf_chains,
			  FUNC10(FUNC4(ht_mcs_mask),
			      FUNC5(vht_mcs_mask)));

		if (!FUNC3(ar, band, mask,
						     allow_pfr)) {
			u8 vht_nss;

			if (!allow_pfr || vht_num_rates != 1)
				return -EINVAL;

			/* Reach here, firmware supports peer fixed rate and has
			 * single vht rate, and don't update vif birate_mask, as
			 * the rate only for specific peer.
			 */
			FUNC1(ar, band, mask,
								&vht_pfr,
								&vht_nss,
								true);
			update_bitrate_mask = false;
		} else {
			vht_pfr = 0;
		}

		FUNC12(&ar->conf_mutex);

		if (update_bitrate_mask)
			arvif->bitrate_mask = *mask;
		arvif->vht_num_rates = vht_num_rates;
		arvif->vht_pfr = vht_pfr;
		FUNC9(ar->hw,
						  ath10k_mac_set_bitrate_mask_iter,
						  arvif);

		FUNC13(&ar->conf_mutex);
	}

	FUNC12(&ar->conf_mutex);

	ret = FUNC6(arvif, rate, nss, sgi, ldpc);
	if (ret) {
		FUNC8(ar, "failed to set fixed rate params on vdev %i: %d\n",
			    arvif->vdev_id, ret);
		goto exit;
	}

exit:
	FUNC13(&ar->conf_mutex);

	return ret;
}