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
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_3__ {int /*<<< orphan*/  rx_mac_timestamp; } ;
struct wmi_mgmt_rx_ev_arg {TYPE_1__ ext_info; int /*<<< orphan*/  rate; int /*<<< orphan*/  phy_mode; int /*<<< orphan*/  snr; int /*<<< orphan*/  status; int /*<<< orphan*/  channel; } ;
struct sk_buff {size_t len; scalar_t__ data; } ;
struct ieee80211_supported_band {int dummy; } ;
struct ieee80211_rx_status {int flag; size_t band; int signal; int rate_idx; struct sk_buff* freq; int /*<<< orphan*/  mactime; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; } ;
struct TYPE_4__ {struct ieee80211_supported_band* sbands; } ;
struct ath10k {int /*<<< orphan*/  hw; TYPE_2__ mac; int /*<<< orphan*/  dev_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_CAC_RUNNING ; 
 int /*<<< orphan*/  ATH10K_DBG_MGMT ; 
 int ATH10K_DEFAULT_NOISE_FLOOR ; 
 int ATH10K_MAX_5G_CHAN ; 
 int IEEE80211_FCTL_FTYPE ; 
 int IEEE80211_FCTL_PROTECTED ; 
 int IEEE80211_FCTL_STYPE ; 
 struct ieee80211_rx_status* FUNC0 (struct sk_buff*) ; 
 int MODE_11B ; 
 size_t NL80211_BAND_2GHZ ; 
 size_t NL80211_BAND_5GHZ ; 
 int RX_FLAG_DECRYPTED ; 
 int RX_FLAG_IV_STRIPPED ; 
 int RX_FLAG_MACTIME_END ; 
 int RX_FLAG_MMIC_ERROR ; 
 int RX_FLAG_MMIC_STRIPPED ; 
 int RX_FLAG_SKIP_MONITOR ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int WMI_RX_STATUS_ERR_CRC ; 
 int WMI_RX_STATUS_ERR_DECRYPT ; 
 int WMI_RX_STATUS_ERR_KEY_CACHE_MISS ; 
 int WMI_RX_STATUS_ERR_MIC ; 
 int WMI_RX_STATUS_EXT_INFO ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ath10k*,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC6 (struct ieee80211_supported_band*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ath10k*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct ath10k*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ath10k*,struct sk_buff*,struct ieee80211_rx_status*) ; 
 int FUNC10 (struct ath10k*,struct sk_buff*,struct wmi_mgmt_rx_ev_arg*) ; 
 scalar_t__ FUNC11 (struct ath10k*,struct ieee80211_hdr*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*) ; 
 struct sk_buff* FUNC13 (int,size_t) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct ieee80211_rx_status*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC22(struct ath10k *ar, struct sk_buff *skb)
{
	struct wmi_mgmt_rx_ev_arg arg = {};
	struct ieee80211_rx_status *status = FUNC0(skb);
	struct ieee80211_hdr *hdr;
	struct ieee80211_supported_band *sband;
	u32 rx_status;
	u32 channel;
	u32 phy_mode;
	u32 snr;
	u32 rate;
	u16 fc;
	int ret;

	ret = FUNC10(ar, skb, &arg);
	if (ret) {
		FUNC8(ar, "failed to parse mgmt rx event: %d\n", ret);
		FUNC12(skb);
		return ret;
	}

	channel = FUNC3(arg.channel);
	rx_status = FUNC3(arg.status);
	snr = FUNC3(arg.snr);
	phy_mode = FUNC3(arg.phy_mode);
	rate = FUNC3(arg.rate);

	FUNC20(status, 0, sizeof(*status));

	FUNC5(ar, ATH10K_DBG_MGMT,
		   "event mgmt rx status %08x\n", rx_status);

	if ((FUNC21(ATH10K_CAC_RUNNING, &ar->dev_flags)) ||
	    (rx_status & (WMI_RX_STATUS_ERR_DECRYPT |
	    WMI_RX_STATUS_ERR_KEY_CACHE_MISS | WMI_RX_STATUS_ERR_CRC))) {
		FUNC12(skb);
		return 0;
	}

	if (rx_status & WMI_RX_STATUS_ERR_MIC)
		status->flag |= RX_FLAG_MMIC_ERROR;

	if (rx_status & WMI_RX_STATUS_EXT_INFO) {
		status->mactime =
			FUNC4(arg.ext_info.rx_mac_timestamp);
		status->flag |= RX_FLAG_MACTIME_END;
	}
	/* Hardware can Rx CCK rates on 5GHz. In that case phy_mode is set to
	 * MODE_11B. This means phy_mode is not a reliable source for the band
	 * of mgmt rx.
	 */
	if (channel >= 1 && channel <= 14) {
		status->band = NL80211_BAND_2GHZ;
	} else if (channel >= 36 && channel <= ATH10K_MAX_5G_CHAN) {
		status->band = NL80211_BAND_5GHZ;
	} else {
		/* Shouldn't happen unless list of advertised channels to
		 * mac80211 has been changed.
		 */
		FUNC1(1);
		FUNC12(skb);
		return 0;
	}

	if (phy_mode == MODE_11B && status->band == NL80211_BAND_5GHZ)
		FUNC5(ar, ATH10K_DBG_MGMT, "wmi mgmt rx 11b (CCK) on 5GHz\n");

	sband = &ar->mac.sbands[status->band];

	status->freq = FUNC13(channel, status->band);
	status->signal = snr + ATH10K_DEFAULT_NOISE_FLOOR;
	status->rate_idx = FUNC6(sband, rate / 100);

	hdr = (struct ieee80211_hdr *)skb->data;
	fc = FUNC19(hdr->frame_control);

	/* Firmware is guaranteed to report all essential management frames via
	 * WMI while it can deliver some extra via HTT. Since there can be
	 * duplicates split the reporting wrt monitor/sniffing.
	 */
	status->flag |= RX_FLAG_SKIP_MONITOR;

	FUNC9(ar, skb, status);

	if (FUNC11(ar, hdr)) {
		status->flag |= RX_FLAG_DECRYPTED;

		if (!FUNC14(hdr->frame_control) &&
		    !FUNC16(hdr->frame_control) &&
		    !FUNC17(hdr->frame_control)) {
			status->flag |= RX_FLAG_IV_STRIPPED |
					RX_FLAG_MMIC_STRIPPED;
			hdr->frame_control = FUNC2(fc &
					~IEEE80211_FCTL_PROTECTED);
		}
	}

	if (FUNC15(hdr->frame_control))
		FUNC7(ar, skb);

	FUNC5(ar, ATH10K_DBG_MGMT,
		   "event mgmt rx skb %pK len %d ftype %02x stype %02x\n",
		   skb, skb->len,
		   fc & IEEE80211_FCTL_FTYPE, fc & IEEE80211_FCTL_STYPE);

	FUNC5(ar, ATH10K_DBG_MGMT,
		   "event mgmt rx freq %d band %d snr %d, rate_idx %d\n",
		   status->freq, status->band, status->signal,
		   status->rate_idx);

	FUNC18(ar->hw, skb);

	return 0;
}