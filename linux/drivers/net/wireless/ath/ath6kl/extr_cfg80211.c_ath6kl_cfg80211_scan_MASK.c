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
typedef  size_t u8 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct wiphy {int dummy; } ;
struct cfg80211_scan_request {scalar_t__ n_channels; int /*<<< orphan*/  rates; int /*<<< orphan*/  no_cck; TYPE_1__** channels; int /*<<< orphan*/  ie_len; int /*<<< orphan*/  ie; int /*<<< orphan*/  n_ssids; int /*<<< orphan*/  ssids; int /*<<< orphan*/  wdev; } ;
struct ath6kl_vif {struct cfg80211_scan_request* scan_req; int /*<<< orphan*/  fw_vif_idx; int /*<<< orphan*/  flags; int /*<<< orphan*/  ndev; } ;
struct ath6kl {int /*<<< orphan*/  wmi; int /*<<< orphan*/  usr_bss_filter; } ;
typedef  size_t s8 ;
struct TYPE_2__ {int /*<<< orphan*/  center_freq; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALL_BSS_FILTER ; 
 int /*<<< orphan*/  ATH6KL_FG_SCAN_INTERVAL ; 
 int /*<<< orphan*/  CLEAR_BSSFILTER_ON_BEACON ; 
 int /*<<< orphan*/  CONNECTED ; 
 int EIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  WMI_FRAME_PROBE_REQ ; 
 int /*<<< orphan*/  WMI_LONG_SCAN ; 
 scalar_t__ WMI_MAX_CHANNELS ; 
 int /*<<< orphan*/  FUNC0 (struct ath6kl_vif*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath6kl_vif*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 struct ath6kl* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ath6kl*,struct ath6kl_vif*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct ath6kl_vif* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (size_t,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct wiphy *wiphy,
				struct cfg80211_scan_request *request)
{
	struct ath6kl_vif *vif = FUNC5(request->wdev);
	struct ath6kl *ar = FUNC3(vif->ndev);
	s8 n_channels = 0;
	u16 *channels = NULL;
	int ret = 0;
	u32 force_fg_scan = 0;

	if (!FUNC0(vif))
		return -EIO;

	FUNC1(vif);

	if (!ar->usr_bss_filter) {
		FUNC10(CLEAR_BSSFILTER_ON_BEACON, &vif->flags);
		ret = FUNC8(ar->wmi, vif->fw_vif_idx,
					       ALL_BSS_FILTER, 0);
		if (ret) {
			FUNC2("couldn't set bss filtering\n");
			return ret;
		}
	}

	ret = FUNC4(ar, vif, request->ssids,
				      request->n_ssids, NULL, 0);
	if (ret < 0)
		return ret;

	/* this also clears IE in fw if it's not set */
	ret = FUNC9(ar->wmi, vif->fw_vif_idx,
				       WMI_FRAME_PROBE_REQ,
				       request->ie, request->ie_len);
	if (ret) {
		FUNC2("failed to set Probe Request appie for scan\n");
		return ret;
	}

	/*
	 * Scan only the requested channels if the request specifies a set of
	 * channels. If the list is longer than the target supports, do not
	 * configure the list and instead, scan all available channels.
	 */
	if (request->n_channels > 0 &&
	    request->n_channels <= WMI_MAX_CHANNELS) {
		u8 i;

		n_channels = request->n_channels;

		channels = FUNC11(n_channels, sizeof(u16), GFP_KERNEL);
		if (channels == NULL) {
			FUNC6("failed to set scan channels, scan all channels");
			n_channels = 0;
		}

		for (i = 0; i < n_channels; i++)
			channels[i] = request->channels[i]->center_freq;
	}

	if (FUNC13(CONNECTED, &vif->flags))
		force_fg_scan = 1;

	vif->scan_req = request;

	ret = FUNC7(ar->wmi, vif->fw_vif_idx,
				       WMI_LONG_SCAN, force_fg_scan,
				       false, 0,
				       ATH6KL_FG_SCAN_INTERVAL,
				       n_channels, channels,
				       request->no_cck,
				       request->rates);
	if (ret) {
		FUNC2("failed to start scan: %d\n", ret);
		vif->scan_req = NULL;
	}

	FUNC12(channels);

	return ret;
}