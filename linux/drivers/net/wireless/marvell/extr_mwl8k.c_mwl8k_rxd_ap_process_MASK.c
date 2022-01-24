#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mwl8k_rxd_ap {int rx_ctrl; int rate; int channel; int rx_status; int /*<<< orphan*/  pkt_len; int /*<<< orphan*/  qos_control; int /*<<< orphan*/  noise_floor; int /*<<< orphan*/  rssi; } ;
struct ieee80211_rx_status {scalar_t__ encoding; int rate_idx; int /*<<< orphan*/  flag; int /*<<< orphan*/  band; int /*<<< orphan*/  freq; int /*<<< orphan*/  bw; int /*<<< orphan*/  signal; } ;
typedef  int /*<<< orphan*/  s8 ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_3__ {int hw_value; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int MWL8K_AP_RATE_INFO_40MHZ ; 
 int MWL8K_AP_RATE_INFO_MCS_FORMAT ; 
 int FUNC1 (int) ; 
 int MWL8K_AP_RXSTAT_DECRYPT_ERR_MASK ; 
 int MWL8K_AP_RXSTAT_GENERAL_DECRYPT_ERR ; 
 int MWL8K_AP_RXSTAT_TKIP_DECRYPT_MIC_ERR ; 
 int MWL8K_AP_RX_CTRL_OWNED_BY_HOST ; 
 int MWL8K_LEGACY_5G_RATE_OFFSET ; 
 int /*<<< orphan*/  NL80211_BAND_2GHZ ; 
 int /*<<< orphan*/  NL80211_BAND_5GHZ ; 
 int /*<<< orphan*/  RATE_INFO_BW_40 ; 
 scalar_t__ RX_ENC_HT ; 
 int /*<<< orphan*/  RX_FLAG_MMIC_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_rx_status*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* mwl8k_rates_24 ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int
FUNC6(void *_rxd, struct ieee80211_rx_status *status,
		     __le16 *qos, s8 *noise)
{
	struct mwl8k_rxd_ap *rxd = _rxd;

	if (!(rxd->rx_ctrl & MWL8K_AP_RX_CTRL_OWNED_BY_HOST))
		return -1;
	FUNC5();

	FUNC4(status, 0, sizeof(*status));

	status->signal = -rxd->rssi;
	*noise = -rxd->noise_floor;

	if (rxd->rate & MWL8K_AP_RATE_INFO_MCS_FORMAT) {
		status->encoding = RX_ENC_HT;
		if (rxd->rate & MWL8K_AP_RATE_INFO_40MHZ)
			status->bw = RATE_INFO_BW_40;
		status->rate_idx = FUNC1(rxd->rate);
	} else {
		int i;

		for (i = 0; i < FUNC0(mwl8k_rates_24); i++) {
			if (mwl8k_rates_24[i].hw_value == rxd->rate) {
				status->rate_idx = i;
				break;
			}
		}
	}

	if (rxd->channel > 14) {
		status->band = NL80211_BAND_5GHZ;
		if (!(status->encoding == RX_ENC_HT) &&
		    status->rate_idx >= MWL8K_LEGACY_5G_RATE_OFFSET)
			status->rate_idx -= MWL8K_LEGACY_5G_RATE_OFFSET;
	} else {
		status->band = NL80211_BAND_2GHZ;
	}
	status->freq = FUNC2(rxd->channel,
						      status->band);

	*qos = rxd->qos_control;

	if ((rxd->rx_status != MWL8K_AP_RXSTAT_GENERAL_DECRYPT_ERR) &&
	    (rxd->rx_status & MWL8K_AP_RXSTAT_DECRYPT_ERR_MASK) &&
	    (rxd->rx_status & MWL8K_AP_RXSTAT_TKIP_DECRYPT_MIC_ERR))
		status->flag |= RX_FLAG_MMIC_ERROR;

	return FUNC3(rxd->pkt_len);
}