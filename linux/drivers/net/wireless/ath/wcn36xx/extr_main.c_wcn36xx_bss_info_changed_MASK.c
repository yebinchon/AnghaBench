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
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {int /*<<< orphan*/  ssid; int /*<<< orphan*/  length; } ;
struct wcn36xx_vif {int is_joining; int sta_assoc; void* bss_index; int /*<<< orphan*/  dtim_period; TYPE_1__ ssid; int /*<<< orphan*/  encrypt_type; } ;
struct wcn36xx_sta {int /*<<< orphan*/  aid; } ;
struct wcn36xx {int /*<<< orphan*/  conf_mutex; } ;
struct sk_buff {int dummy; } ;
struct ieee80211_vif {scalar_t__ type; int /*<<< orphan*/  addr; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_hw {struct wcn36xx* priv; } ;
struct ieee80211_bss_conf {int /*<<< orphan*/  dtim_period; int /*<<< orphan*/  enable_beacon; int /*<<< orphan*/  bssid; int /*<<< orphan*/  aid; scalar_t__ assoc; int /*<<< orphan*/  ssid_len; int /*<<< orphan*/  ssid; } ;
typedef  enum wcn36xx_hal_link_state { ____Placeholder_wcn36xx_hal_link_state } wcn36xx_hal_link_state ;

/* Variables and functions */
 int BSS_CHANGED_AP_PROBE_RESP ; 
 int BSS_CHANGED_ASSOC ; 
 int BSS_CHANGED_BEACON ; 
 int BSS_CHANGED_BEACON_ENABLED ; 
 int BSS_CHANGED_BEACON_INFO ; 
 int BSS_CHANGED_BSSID ; 
 int BSS_CHANGED_SSID ; 
 scalar_t__ NL80211_IFTYPE_ADHOC ; 
 scalar_t__ NL80211_IFTYPE_MESH_POINT ; 
 int /*<<< orphan*/  FUNC0 (struct wcn36xx*) ; 
 int /*<<< orphan*/  WCN36XX_DBG_MAC ; 
 void* WCN36XX_HAL_BSS_INVALID_IDX ; 
 int /*<<< orphan*/  WCN36XX_HAL_ED_NONE ; 
 int WCN36XX_HAL_LINK_AP_STATE ; 
 int WCN36XX_HAL_LINK_IBSS_STATE ; 
 int WCN36XX_HAL_LINK_IDLE_STATE ; 
 int WCN36XX_HAL_LINK_POSTASSOC_STATE ; 
 int WCN36XX_HAL_LINK_PREASSOC_STATE ; 
 int /*<<< orphan*/  FUNC1 (struct wcn36xx*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 struct sk_buff* FUNC3 (struct ieee80211_hw*,struct ieee80211_vif*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct ieee80211_sta* FUNC4 (struct ieee80211_vif*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC5 (struct ieee80211_hw*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int /*<<< orphan*/  FUNC13 (struct wcn36xx*,struct ieee80211_vif*,struct ieee80211_sta*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (struct wcn36xx*,struct ieee80211_vif*,struct ieee80211_sta*) ; 
 int /*<<< orphan*/  FUNC15 (struct wcn36xx*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC16 (struct wcn36xx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct wcn36xx*,struct ieee80211_vif*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct wcn36xx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (struct wcn36xx*,struct ieee80211_vif*,struct sk_buff*) ; 
 struct wcn36xx_sta* FUNC20 (struct ieee80211_sta*) ; 
 int /*<<< orphan*/  FUNC21 (struct ieee80211_sta*,int /*<<< orphan*/ ) ; 
 struct wcn36xx_vif* FUNC22 (struct ieee80211_vif*) ; 

__attribute__((used)) static void FUNC23(struct ieee80211_hw *hw,
				     struct ieee80211_vif *vif,
				     struct ieee80211_bss_conf *bss_conf,
				     u32 changed)
{
	struct wcn36xx *wcn = hw->priv;
	struct sk_buff *skb = NULL;
	u16 tim_off, tim_len;
	enum wcn36xx_hal_link_state link_state;
	struct wcn36xx_vif *vif_priv = FUNC22(vif);

	FUNC10(WCN36XX_DBG_MAC, "mac bss info changed vif %p changed 0x%08x\n",
		    vif, changed);

	FUNC8(&wcn->conf_mutex);

	if (changed & BSS_CHANGED_BEACON_INFO) {
		FUNC10(WCN36XX_DBG_MAC,
			    "mac bss changed dtim period %d\n",
			    bss_conf->dtim_period);

		vif_priv->dtim_period = bss_conf->dtim_period;
	}

	if (changed & BSS_CHANGED_BSSID) {
		FUNC10(WCN36XX_DBG_MAC, "mac bss changed_bssid %pM\n",
			    bss_conf->bssid);

		if (!FUNC6(bss_conf->bssid)) {
			vif_priv->is_joining = true;
			vif_priv->bss_index = WCN36XX_HAL_BSS_INVALID_IDX;
			FUNC18(wcn, bss_conf->bssid, vif->addr,
						WCN36XX_HAL_LINK_PREASSOC_STATE);
			FUNC16(wcn, bss_conf->bssid,
					 vif->addr, FUNC1(wcn));
			FUNC13(wcn, vif, NULL,
					       bss_conf->bssid, false);
		} else {
			vif_priv->is_joining = false;
			FUNC15(wcn, vif);
			FUNC18(wcn, bss_conf->bssid, vif->addr,
						WCN36XX_HAL_LINK_IDLE_STATE);
			vif_priv->encrypt_type = WCN36XX_HAL_ED_NONE;
		}
	}

	if (changed & BSS_CHANGED_SSID) {
		FUNC10(WCN36XX_DBG_MAC,
			    "mac bss changed ssid\n");
		FUNC11(WCN36XX_DBG_MAC, "ssid ",
				 bss_conf->ssid, bss_conf->ssid_len);

		vif_priv->ssid.length = bss_conf->ssid_len;
		FUNC7(&vif_priv->ssid.ssid,
		       bss_conf->ssid,
		       bss_conf->ssid_len);
	}

	if (changed & BSS_CHANGED_ASSOC) {
		vif_priv->is_joining = false;
		if (bss_conf->assoc) {
			struct ieee80211_sta *sta;
			struct wcn36xx_sta *sta_priv;

			FUNC10(WCN36XX_DBG_MAC,
				    "mac assoc bss %pM vif %pM AID=%d\n",
				     bss_conf->bssid,
				     vif->addr,
				     bss_conf->aid);

			vif_priv->sta_assoc = true;

			/*
			 * Holding conf_mutex ensures mutal exclusion with
			 * wcn36xx_sta_remove() and as such ensures that sta
			 * won't be freed while we're operating on it. As such
			 * we do not need to hold the rcu_read_lock().
			 */
			sta = FUNC4(vif, bss_conf->bssid);
			if (!sta) {
				FUNC12("sta %pM is not found\n",
					      bss_conf->bssid);
				goto out;
			}
			sta_priv = FUNC20(sta);

			FUNC21(sta, FUNC0(wcn));

			FUNC18(wcn, bss_conf->bssid,
				vif->addr,
				WCN36XX_HAL_LINK_POSTASSOC_STATE);
			FUNC13(wcn, vif, sta,
					       bss_conf->bssid,
					       true);
			sta_priv->aid = bss_conf->aid;
			/*
			 * config_sta must be called from  because this is the
			 * place where AID is available.
			 */
			FUNC14(wcn, vif, sta);
		} else {
			FUNC10(WCN36XX_DBG_MAC,
				    "disassociated bss %pM vif %pM AID=%d\n",
				    bss_conf->bssid,
				    vif->addr,
				    bss_conf->aid);
			vif_priv->sta_assoc = false;
			FUNC18(wcn,
						bss_conf->bssid,
						vif->addr,
						WCN36XX_HAL_LINK_IDLE_STATE);
		}
	}

	if (changed & BSS_CHANGED_AP_PROBE_RESP) {
		FUNC10(WCN36XX_DBG_MAC, "mac bss changed ap probe resp\n");
		skb = FUNC5(hw, vif);
		if (!skb) {
			FUNC12("failed to alloc probereq skb\n");
			goto out;
		}

		FUNC19(wcn, vif, skb);
		FUNC2(skb);
	}

	if (changed & BSS_CHANGED_BEACON_ENABLED ||
	    changed & BSS_CHANGED_BEACON) {
		FUNC10(WCN36XX_DBG_MAC,
			    "mac bss changed beacon enabled %d\n",
			    bss_conf->enable_beacon);

		if (bss_conf->enable_beacon) {
			vif_priv->dtim_period = bss_conf->dtim_period;
			vif_priv->bss_index = WCN36XX_HAL_BSS_INVALID_IDX;
			FUNC13(wcn, vif, NULL,
					       vif->addr, false);
			skb = FUNC3(hw, vif, &tim_off,
						       &tim_len);
			if (!skb) {
				FUNC12("failed to alloc beacon skb\n");
				goto out;
			}
			FUNC17(wcn, vif, skb, tim_off, 0);
			FUNC2(skb);

			if (vif->type == NL80211_IFTYPE_ADHOC ||
			    vif->type == NL80211_IFTYPE_MESH_POINT)
				link_state = WCN36XX_HAL_LINK_IBSS_STATE;
			else
				link_state = WCN36XX_HAL_LINK_AP_STATE;

			FUNC18(wcn, vif->addr, vif->addr,
						link_state);
		} else {
			FUNC15(wcn, vif);
			FUNC18(wcn, vif->addr, vif->addr,
						WCN36XX_HAL_LINK_IDLE_STATE);
		}
	}
out:

	FUNC9(&wcn->conf_mutex);

	return;
}