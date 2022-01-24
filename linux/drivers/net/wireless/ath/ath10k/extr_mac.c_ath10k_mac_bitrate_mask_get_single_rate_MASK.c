#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct cfg80211_bitrate_mask {TYPE_1__* control; } ;
struct ath10k {int phy_capability; } ;
typedef  enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;
struct TYPE_4__ {int hw_value; int /*<<< orphan*/  bitrate; } ;
struct TYPE_3__ {int /*<<< orphan*/ * vht_mcs; int /*<<< orphan*/ * ht_mcs; int /*<<< orphan*/  legacy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ ATH10K_MAC_FIRST_OFDM_RATE_IDX ; 
 int EINVAL ; 
 int WHAL_WLAN_11A_CAPABILITY ; 
 int WMI_RATE_PREAMBLE_CCK ; 
 int WMI_RATE_PREAMBLE_HT ; 
 int WMI_RATE_PREAMBLE_OFDM ; 
 int WMI_RATE_PREAMBLE_VHT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* ath10k_wmi_legacy_rates ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct ath10k *ar,
					enum nl80211_band band,
					const struct cfg80211_bitrate_mask *mask,
					u8 *rate, u8 *nss, bool vht_only)
{
	int rate_idx;
	int i;
	u16 bitrate;
	u8 preamble;
	u8 hw_rate;

	if (vht_only)
		goto next;

	if (FUNC4(mask->control[band].legacy) == 1) {
		rate_idx = FUNC2(mask->control[band].legacy) - 1;

		if (ar->phy_capability & WHAL_WLAN_11A_CAPABILITY)
			rate_idx += ATH10K_MAC_FIRST_OFDM_RATE_IDX;

		hw_rate = ath10k_wmi_legacy_rates[rate_idx].hw_value;
		bitrate = ath10k_wmi_legacy_rates[rate_idx].bitrate;

		if (FUNC1(bitrate))
			preamble = WMI_RATE_PREAMBLE_CCK;
		else
			preamble = WMI_RATE_PREAMBLE_OFDM;

		*nss = 1;
		*rate = preamble << 6 |
			(*nss - 1) << 4 |
			hw_rate << 0;

		return 0;
	}

	for (i = 0; i < FUNC0(mask->control[band].ht_mcs); i++) {
		if (FUNC5(mask->control[band].ht_mcs[i]) == 1) {
			*nss = i + 1;
			*rate = WMI_RATE_PREAMBLE_HT << 6 |
				(*nss - 1) << 4 |
				(FUNC2(mask->control[band].ht_mcs[i]) - 1);

			return 0;
		}
	}

next:
	for (i = 0; i < FUNC0(mask->control[band].vht_mcs); i++) {
		if (FUNC3(mask->control[band].vht_mcs[i]) == 1) {
			*nss = i + 1;
			*rate = WMI_RATE_PREAMBLE_VHT << 6 |
				(*nss - 1) << 4 |
				(FUNC2(mask->control[band].vht_mcs[i]) - 1);

			return 0;
		}
	}

	return -EINVAL;
}