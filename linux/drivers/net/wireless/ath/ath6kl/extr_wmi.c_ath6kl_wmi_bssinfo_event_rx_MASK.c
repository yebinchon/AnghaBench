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
typedef  int u8 ;
struct wmi_bss_info_hdr2 {int snr; scalar_t__ frame_type; int /*<<< orphan*/  bssid; int /*<<< orphan*/  ch; } ;
struct wmi {struct ath6kl* parent_dev; } ;
struct ieee80211_channel {int dummy; } ;
struct cfg80211_bss {int dummy; } ;
struct ath6kl_vif {int assoc_bss_dtim_period; int /*<<< orphan*/  sched_scan_timer; int /*<<< orphan*/  flags; int /*<<< orphan*/  bssid; int /*<<< orphan*/  fw_vif_idx; } ;
struct ath6kl {int /*<<< orphan*/  wiphy; int /*<<< orphan*/  wmi; } ;
typedef  int /*<<< orphan*/  __le64 ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  ATH6KL_DBG_WMI ; 
 int /*<<< orphan*/  ATH6KL_SCHED_SCAN_RESULT_DELAY ; 
 scalar_t__ BEACON_FTYPE ; 
 int /*<<< orphan*/  CFG80211_BSS_FTYPE_BEACON ; 
 int /*<<< orphan*/  CFG80211_BSS_FTYPE_PRESP ; 
 int /*<<< orphan*/  CLEAR_BSSFILTER_ON_BEACON ; 
 int /*<<< orphan*/  CONNECTED ; 
 int /*<<< orphan*/  DTIM_PERIOD_AVAIL ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  NONE_BSS_FILTER ; 
 scalar_t__ PROBERESP_FTYPE ; 
 int /*<<< orphan*/  SCHED_SCANNING ; 
 int /*<<< orphan*/  WLAN_EID_TIM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int* FUNC2 (int /*<<< orphan*/ ,int*,int) ; 
 struct cfg80211_bss* FUNC3 (int /*<<< orphan*/ ,struct ieee80211_channel*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct cfg80211_bss*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct ieee80211_channel* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(struct wmi *wmi, u8 *datap, int len,
				       struct ath6kl_vif *vif)
{
	struct wmi_bss_info_hdr2 *bih;
	u8 *buf;
	struct ieee80211_channel *channel;
	struct ath6kl *ar = wmi->parent_dev;
	struct cfg80211_bss *bss;

	if (len <= sizeof(struct wmi_bss_info_hdr2))
		return -EINVAL;

	bih = (struct wmi_bss_info_hdr2 *) datap;
	buf = datap + sizeof(struct wmi_bss_info_hdr2);
	len -= sizeof(struct wmi_bss_info_hdr2);

	FUNC0(ATH6KL_DBG_WMI,
		   "bss info evt - ch %u, snr %d, rssi %d, bssid \"%pM\" "
		   "frame_type=%d\n",
		   bih->ch, bih->snr, bih->snr - 95, bih->bssid,
		   bih->frame_type);

	if (bih->frame_type != BEACON_FTYPE &&
	    bih->frame_type != PROBERESP_FTYPE)
		return 0; /* Only update BSS table for now */

	if (bih->frame_type == BEACON_FTYPE &&
	    FUNC14(CLEAR_BSSFILTER_ON_BEACON, &vif->flags)) {
		FUNC5(CLEAR_BSSFILTER_ON_BEACON, &vif->flags);
		FUNC1(ar->wmi, vif->fw_vif_idx,
					 NONE_BSS_FILTER, 0);
	}

	channel = FUNC8(ar->wiphy, FUNC9(bih->ch));
	if (channel == NULL)
		return -EINVAL;

	if (len < 8 + 2 + 2)
		return -EINVAL;

	if (bih->frame_type == BEACON_FTYPE &&
	    FUNC14(CONNECTED, &vif->flags) &&
	    FUNC10(bih->bssid, vif->bssid, ETH_ALEN) == 0) {
		const u8 *tim;
		tim = FUNC2(WLAN_EID_TIM, buf + 8 + 2 + 2,
				       len - 8 - 2 - 2);
		if (tim && tim[1] >= 2) {
			vif->assoc_bss_dtim_period = tim[3];
			FUNC13(DTIM_PERIOD_AVAIL, &vif->flags);
		}
	}

	bss = FUNC3(ar->wiphy, channel,
				  bih->frame_type == BEACON_FTYPE ?
					CFG80211_BSS_FTYPE_BEACON :
					CFG80211_BSS_FTYPE_PRESP,
				  bih->bssid, FUNC7((__le64 *)buf),
				  FUNC6(((__le16 *)buf) + 5),
				  FUNC6(((__le16 *)buf) + 4),
				  buf + 8 + 2 + 2, len - 8 - 2 - 2,
				  (bih->snr - 95) * 100, GFP_ATOMIC);
	if (bss == NULL)
		return -ENOMEM;
	FUNC4(ar->wiphy, bss);

	/*
	 * Firmware doesn't return any event when scheduled scan has
	 * finished, so we need to use a timer to find out when there are
	 * no more results.
	 *
	 * The timer is started from the first bss info received, otherwise
	 * the timer would not ever fire if the scan interval is short
	 * enough.
	 */
	if (FUNC14(SCHED_SCANNING, &vif->flags) &&
	    !FUNC15(&vif->sched_scan_timer)) {
		FUNC11(&vif->sched_scan_timer, jiffies +
			  FUNC12(ATH6KL_SCHED_SCAN_RESULT_DELAY));
	}

	return 0;
}