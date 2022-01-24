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
struct wiphy {int dummy; } ;
struct wil6210_vif {scalar_t__ ssid_len; scalar_t__ gtk_len; int /*<<< orphan*/  gtk_index; int /*<<< orphan*/  gtk; int /*<<< orphan*/  privacy; int /*<<< orphan*/  pbss; int /*<<< orphan*/  hidden_ssid; int /*<<< orphan*/  wmi_edmg_channel; int /*<<< orphan*/  channel; int /*<<< orphan*/  bi; int /*<<< orphan*/  ssid; int /*<<< orphan*/  proberesp_len; int /*<<< orphan*/  assocresp_ies_len; int /*<<< orphan*/  proberesp_ies_len; int /*<<< orphan*/  proberesp; int /*<<< orphan*/  assocresp_ies; int /*<<< orphan*/  proberesp_ies; } ;
struct wil6210_priv {struct wil6210_vif** vifs; } ;
struct net_device {int dummy; } ;
struct key_params {scalar_t__ key_len; int /*<<< orphan*/  seq_len; int /*<<< orphan*/  key; } ;
struct cfg80211_beacon_data {int /*<<< orphan*/  probe_resp_len; int /*<<< orphan*/  assocresp_ies_len; int /*<<< orphan*/  proberesp_ies_len; int /*<<< orphan*/  probe_resp; int /*<<< orphan*/  assocresp_ies; int /*<<< orphan*/  proberesp_ies; } ;

/* Variables and functions */
 int /*<<< orphan*/  DUMP_PREFIX_OFFSET ; 
 int FUNC0 (struct wil6210_priv*) ; 
 int /*<<< orphan*/  IEEE80211_GCMP_PN_LEN ; 
 int FUNC1 (struct wiphy*,struct net_device*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cfg80211_beacon_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct net_device* FUNC2 (struct wil6210_vif*) ; 
 int FUNC3 (struct wiphy*,struct net_device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,struct key_params*) ; 
 int /*<<< orphan*/  FUNC4 (struct wil6210_priv*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (struct wil6210_priv*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct wiphy* FUNC7 (struct wil6210_priv*) ; 

void FUNC8(struct wil6210_priv *wil)
{
	int rc, i;
	struct wiphy *wiphy = FUNC7(wil);

	for (i = 0; i < FUNC0(wil); i++) {
		struct wil6210_vif *vif = wil->vifs[i];
		struct net_device *ndev;
		struct cfg80211_beacon_data bcon = {};
		struct key_params key_params = {};

		if (!vif || vif->ssid_len == 0)
			continue;

		ndev = FUNC2(vif);
		bcon.proberesp_ies = vif->proberesp_ies;
		bcon.assocresp_ies = vif->assocresp_ies;
		bcon.probe_resp = vif->proberesp;
		bcon.proberesp_ies_len = vif->proberesp_ies_len;
		bcon.assocresp_ies_len = vif->assocresp_ies_len;
		bcon.probe_resp_len = vif->proberesp_len;

		FUNC6(wil,
			 "AP (vif %d) recovery: privacy %d, bi %d, channel %d, hidden %d, pbss %d\n",
			 i, vif->privacy, vif->bi, vif->channel,
			 vif->hidden_ssid, vif->pbss);
		FUNC5("SSID ", DUMP_PREFIX_OFFSET, 16, 1,
				  vif->ssid, vif->ssid_len, true);
		rc = FUNC1(wiphy, ndev,
					    vif->ssid, vif->ssid_len,
					    vif->privacy, vif->bi,
					    vif->channel,
					    vif->wmi_edmg_channel, &bcon,
					    vif->hidden_ssid, vif->pbss);
		if (rc) {
			FUNC4(wil, "vif %d recovery failed (%d)\n", i, rc);
			continue;
		}

		if (!vif->privacy || vif->gtk_len == 0)
			continue;

		key_params.key = vif->gtk;
		key_params.key_len = vif->gtk_len;
		key_params.seq_len = IEEE80211_GCMP_PN_LEN;
		rc = FUNC3(wiphy, ndev, vif->gtk_index, false,
					  NULL, &key_params);
		if (rc)
			FUNC4(wil, "vif %d recovery add key failed (%d)\n",
				i, rc);
	}
}