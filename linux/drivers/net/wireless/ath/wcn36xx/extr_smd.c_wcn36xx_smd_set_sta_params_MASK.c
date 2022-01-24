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
struct wcn36xx_vif {int /*<<< orphan*/  bss_index; int /*<<< orphan*/  encrypt_type; int /*<<< orphan*/  self_sta_index; } ;
struct wcn36xx_sta {int /*<<< orphan*/  supported_rates; int /*<<< orphan*/  aid; } ;
struct wcn36xx_hal_config_sta_params {int type; int short_preamble_supported; int /*<<< orphan*/  supported_rates; int /*<<< orphan*/  aid; int /*<<< orphan*/  max_sp_len; int /*<<< orphan*/  wmm_enabled; int /*<<< orphan*/  mac; int /*<<< orphan*/  bssid; scalar_t__ p2p; int /*<<< orphan*/  bssid_index; scalar_t__ max_ampdu_duration; int /*<<< orphan*/  mimo_ps; scalar_t__ uapsd; scalar_t__ action; scalar_t__ rmf; scalar_t__ rifs_mode; int /*<<< orphan*/  encrypt_type; int /*<<< orphan*/  listen_interval; int /*<<< orphan*/  sta_index; } ;
struct wcn36xx {int dummy; } ;
struct ieee80211_vif {scalar_t__ type; int /*<<< orphan*/ * addr; } ;
struct ieee80211_sta {int /*<<< orphan*/  max_sp; int /*<<< orphan*/  wme; int /*<<< orphan*/ * addr; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 scalar_t__ NL80211_IFTYPE_ADHOC ; 
 scalar_t__ NL80211_IFTYPE_AP ; 
 scalar_t__ NL80211_IFTYPE_MESH_POINT ; 
 scalar_t__ NL80211_IFTYPE_STATION ; 
 int /*<<< orphan*/  WCN36XX_HAL_HT_MIMO_PS_STATIC ; 
 int /*<<< orphan*/  WCN36XX_HAL_STA_INVALID_IDX ; 
 int /*<<< orphan*/  FUNC0 (struct wcn36xx*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct wcn36xx_hal_config_sta_params*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_sta*,struct wcn36xx_hal_config_sta_params*) ; 
 struct wcn36xx_sta* FUNC5 (struct ieee80211_sta*) ; 
 struct wcn36xx_vif* FUNC6 (struct ieee80211_vif*) ; 

__attribute__((used)) static void FUNC7(struct wcn36xx *wcn,
		struct ieee80211_vif *vif,
		struct ieee80211_sta *sta,
		struct wcn36xx_hal_config_sta_params *sta_params)
{
	struct wcn36xx_vif *vif_priv = FUNC6(vif);
	struct wcn36xx_sta *sta_priv = NULL;
	if (vif->type == NL80211_IFTYPE_ADHOC ||
	    vif->type == NL80211_IFTYPE_AP ||
	    vif->type == NL80211_IFTYPE_MESH_POINT) {
		sta_params->type = 1;
		sta_params->sta_index = WCN36XX_HAL_STA_INVALID_IDX;
	} else {
		sta_params->type = 0;
		sta_params->sta_index = vif_priv->self_sta_index;
	}

	sta_params->listen_interval = FUNC0(wcn);

	/*
	 * In STA mode ieee80211_sta contains bssid and ieee80211_vif
	 * contains our mac address. In  AP mode we are bssid so vif
	 * contains bssid and ieee80211_sta contains mac.
	 */
	if (NL80211_IFTYPE_STATION == vif->type)
		FUNC1(&sta_params->mac, vif->addr, ETH_ALEN);
	else
		FUNC1(&sta_params->bssid, vif->addr, ETH_ALEN);

	sta_params->encrypt_type = vif_priv->encrypt_type;
	sta_params->short_preamble_supported = true;

	sta_params->rifs_mode = 0;
	sta_params->rmf = 0;
	sta_params->action = 0;
	sta_params->uapsd = 0;
	sta_params->mimo_ps = WCN36XX_HAL_HT_MIMO_PS_STATIC;
	sta_params->max_ampdu_duration = 0;
	sta_params->bssid_index = vif_priv->bss_index;
	sta_params->p2p = 0;

	if (sta) {
		sta_priv = FUNC5(sta);
		if (NL80211_IFTYPE_STATION == vif->type)
			FUNC1(&sta_params->bssid, sta->addr, ETH_ALEN);
		else
			FUNC1(&sta_params->mac, sta->addr, ETH_ALEN);
		sta_params->wmm_enabled = sta->wme;
		sta_params->max_sp_len = sta->max_sp;
		sta_params->aid = sta_priv->aid;
		FUNC4(sta, sta_params);
		FUNC1(&sta_params->supported_rates, &sta_priv->supported_rates,
			sizeof(sta_priv->supported_rates));
	} else {
		FUNC2(&sta_params->supported_rates);
		FUNC3(sta_params);
	}
}