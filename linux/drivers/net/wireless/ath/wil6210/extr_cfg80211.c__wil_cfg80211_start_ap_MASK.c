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
typedef  void* u8 ;
typedef  void* u32 ;
typedef  scalar_t__ u16 ;
struct wireless_dev {scalar_t__ iftype; } ;
struct wiphy {int dummy; } ;
struct wil6210_vif {int bi; size_t ssid_len; int /*<<< orphan*/  ssid; void* pbss; void* hidden_ssid; void* wmi_edmg_channel; void* channel; void* privacy; int /*<<< orphan*/  status; int /*<<< orphan*/  mid; } ;
struct wil6210_priv {int /*<<< orphan*/  mutex; int /*<<< orphan*/  fw_capabilities; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct cfg80211_beacon_data {int /*<<< orphan*/  probe_resp_len; int /*<<< orphan*/  probe_resp; } ;

/* Variables and functions */
 int ENOTSUPP ; 
 scalar_t__ NL80211_IFTYPE_P2P_GO ; 
 int /*<<< orphan*/  WIL_DEFAULT_BUS_REQUEST_KBPS ; 
 int /*<<< orphan*/  WIL_MAX_BUS_REQUEST_KBPS ; 
 int /*<<< orphan*/  WLAN_EID_MOBILITY_DOMAIN ; 
 int /*<<< orphan*/  WMI_FW_CAPABILITY_FT_ROAMING ; 
 void* WMI_NETTYPE_P2P ; 
 int /*<<< orphan*/  FUNC0 (struct wil6210_priv*) ; 
 int FUNC1 (struct wil6210_priv*) ; 
 void** FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC3 (struct wil6210_vif*,struct cfg80211_beacon_data*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,void**,scalar_t__) ; 
 int /*<<< orphan*/  fw_recovery_idle ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,void* const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct wil6210_vif* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct wil6210_priv*,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct wil6210_vif*) ; 
 int /*<<< orphan*/  FUNC15 (struct wil6210_priv*,char*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC16 (struct wil6210_priv*,char*) ; 
 int /*<<< orphan*/  FUNC17 (struct wil6210_priv*,struct net_device*,int,int) ; 
 void* FUNC18 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (struct wil6210_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wil_vif_ft_roam ; 
 struct wil6210_priv* FUNC20 (struct wiphy*) ; 
 int FUNC21 (struct wil6210_vif*,int,void*,void*,void*,void*,void*) ; 
 int /*<<< orphan*/  FUNC22 (struct wil6210_vif*) ; 
 int FUNC23 (struct wil6210_vif*,size_t,void* const*) ; 

__attribute__((used)) static int FUNC24(struct wiphy *wiphy,
				  struct net_device *ndev,
				  const u8 *ssid, size_t ssid_len, u32 privacy,
				  int bi, u8 chan, u8 wmi_edmg_channel,
				  struct cfg80211_beacon_data *bcon,
				  u8 hidden_ssid, u32 pbss)
{
	struct wil6210_priv *wil = FUNC20(wiphy);
	struct wil6210_vif *vif = FUNC8(ndev);
	int rc;
	struct wireless_dev *wdev = ndev->ieee80211_ptr;
	u8 wmi_nettype = FUNC18(wdev->iftype);
	u8 is_go = (wdev->iftype == NL80211_IFTYPE_P2P_GO);
	u16 proberesp_len = 0;
	u8 *proberesp;
	bool ft = false;

	if (pbss)
		wmi_nettype = WMI_NETTYPE_P2P;

	FUNC15(wil, "start_ap: mid=%d, is_go=%d\n", vif->mid, is_go);
	if (is_go && !pbss) {
		FUNC16(wil, "P2P GO must be in PBSS\n");
		return -ENOTSUPP;
	}

	FUNC19(wil, fw_recovery_idle);

	proberesp = FUNC2(bcon->probe_resp,
						    bcon->probe_resp_len,
						    &proberesp_len);
	/* check that the probe response IEs has a MDE */
	if ((proberesp && proberesp_len > 0 &&
	     FUNC4(WLAN_EID_MOBILITY_DOMAIN,
			      proberesp,
			      proberesp_len)))
		ft = true;

	if (ft) {
		if (!FUNC12(WMI_FW_CAPABILITY_FT_ROAMING,
			      wil->fw_capabilities)) {
			FUNC16(wil, "FW does not support FT roaming\n");
			return -ENOTSUPP;
		}
		FUNC11(wil_vif_ft_roam, vif->status);
	}

	FUNC6(&wil->mutex);

	if (!FUNC17(wil, ndev, true, false)) {
		FUNC0(wil);
		rc = FUNC1(wil);
		if (rc)
			goto out;
	}

	rc = FUNC23(vif, ssid_len, ssid);
	if (rc)
		goto out;

	rc = FUNC3(vif, bcon);
	if (rc)
		goto out;

	vif->privacy = privacy;
	vif->channel = chan;
	vif->wmi_edmg_channel = wmi_edmg_channel;
	vif->hidden_ssid = hidden_ssid;
	vif->pbss = pbss;
	vif->bi = bi;
	FUNC5(vif->ssid, ssid, ssid_len);
	vif->ssid_len = ssid_len;

	FUNC10(ndev);
	if (!FUNC17(wil, ndev, false, true))
		FUNC13(wil, WIL_MAX_BUS_REQUEST_KBPS);

	rc = FUNC21(vif, bi, wmi_nettype, chan, wmi_edmg_channel,
			   hidden_ssid, is_go);
	if (rc)
		goto err_pcp_start;

	rc = FUNC14(vif);
	if (rc)
		goto err_bcast;

	goto out; /* success */

err_bcast:
	FUNC22(vif);
err_pcp_start:
	FUNC9(ndev);
	if (!FUNC17(wil, ndev, false, true))
		FUNC13(wil, WIL_DEFAULT_BUS_REQUEST_KBPS);
out:
	FUNC7(&wil->mutex);
	return rc;
}