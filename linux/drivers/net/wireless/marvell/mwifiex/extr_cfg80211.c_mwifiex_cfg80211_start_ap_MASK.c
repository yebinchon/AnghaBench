#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct wiphy {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_7__ {int ssid_len; int /*<<< orphan*/ * ssid; } ;
struct mwifiex_uap_bss_param {int sta_ao_timer; int ps_sta_ao_timer; int bcast_ssid_ctl; TYPE_1__ ssid; scalar_t__ dtim_period; scalar_t__ beacon_period; } ;
struct TYPE_8__ {int is_11h_active; } ;
struct mwifiex_private {int /*<<< orphan*/  bss_cfg; TYPE_3__* adapter; int /*<<< orphan*/  netdev; TYPE_2__ state_11h; int /*<<< orphan*/  bss_mode; scalar_t__ ap_11ac_enabled; } ;
struct TYPE_10__ {int /*<<< orphan*/  width; } ;
struct cfg80211_ap_settings {int ssid_len; int inactivity_timeout; int hidden_ssid; int /*<<< orphan*/  beacon; TYPE_4__ chandef; struct mwifiex_uap_bss_param* ssid; scalar_t__ dtim_period; scalar_t__ beacon_interval; } ;
struct TYPE_9__ {scalar_t__ is_hw_11ac_capable; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (struct mwifiex_private*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  INFO ; 
 scalar_t__ MWIFIEX_BSS_ROLE_UAP ; 
#define  NL80211_HIDDEN_SSID_NOT_IN_USE 130 
#define  NL80211_HIDDEN_SSID_ZERO_CONTENTS 129 
#define  NL80211_HIDDEN_SSID_ZERO_LEN 128 
 int /*<<< orphan*/  FUNC1 (struct wiphy*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mwifiex_uap_bss_param*) ; 
 struct mwifiex_uap_bss_param* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct mwifiex_uap_bss_param*,int) ; 
 scalar_t__ FUNC5 (struct mwifiex_private*,int) ; 
 scalar_t__ FUNC6 (struct mwifiex_private*,struct mwifiex_uap_bss_param*) ; 
 int /*<<< orphan*/  FUNC7 (struct mwifiex_private*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC9 (struct mwifiex_private*) ; 
 struct mwifiex_private* FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct mwifiex_private*) ; 
 int /*<<< orphan*/  FUNC12 (struct mwifiex_private*) ; 
 int /*<<< orphan*/  FUNC13 (struct mwifiex_private*,struct mwifiex_uap_bss_param*,struct cfg80211_ap_settings*) ; 
 scalar_t__ FUNC14 (struct mwifiex_private*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (struct mwifiex_private*,struct mwifiex_uap_bss_param*,struct cfg80211_ap_settings*) ; 
 int /*<<< orphan*/  FUNC16 (struct mwifiex_uap_bss_param*) ; 
 int /*<<< orphan*/  FUNC17 (struct mwifiex_private*,struct mwifiex_uap_bss_param*,struct cfg80211_ap_settings*) ; 
 int /*<<< orphan*/  FUNC18 (struct mwifiex_uap_bss_param*,struct cfg80211_ap_settings*) ; 
 int /*<<< orphan*/  FUNC19 (struct mwifiex_private*,struct mwifiex_uap_bss_param*,struct cfg80211_ap_settings*) ; 
 int /*<<< orphan*/  FUNC20 (struct mwifiex_private*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (struct mwifiex_private*,struct mwifiex_uap_bss_param*,struct cfg80211_ap_settings*) ; 
 int /*<<< orphan*/  FUNC22 (struct mwifiex_private*,struct mwifiex_uap_bss_param*,TYPE_4__) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC26(struct wiphy *wiphy,
				     struct net_device *dev,
				     struct cfg80211_ap_settings *params)
{
	struct mwifiex_uap_bss_param *bss_cfg;
	struct mwifiex_private *priv = FUNC10(dev);

	if (FUNC0(priv) != MWIFIEX_BSS_ROLE_UAP)
		return -1;

	bss_cfg = FUNC3(sizeof(struct mwifiex_uap_bss_param), GFP_KERNEL);
	if (!bss_cfg)
		return -ENOMEM;

	FUNC16(bss_cfg);

	if (params->beacon_interval)
		bss_cfg->beacon_period = params->beacon_interval;
	if (params->dtim_period)
		bss_cfg->dtim_period = params->dtim_period;

	if (params->ssid && params->ssid_len) {
		FUNC4(bss_cfg->ssid.ssid, params->ssid, params->ssid_len);
		bss_cfg->ssid.ssid_len = params->ssid_len;
	}
	if (params->inactivity_timeout > 0) {
		/* sta_ao_timer/ps_sta_ao_timer is in unit of 100ms */
		bss_cfg->sta_ao_timer = 10 * params->inactivity_timeout;
		bss_cfg->ps_sta_ao_timer = 10 * params->inactivity_timeout;
	}

	switch (params->hidden_ssid) {
	case NL80211_HIDDEN_SSID_NOT_IN_USE:
		bss_cfg->bcast_ssid_ctl = 1;
		break;
	case NL80211_HIDDEN_SSID_ZERO_LEN:
		bss_cfg->bcast_ssid_ctl = 0;
		break;
	case NL80211_HIDDEN_SSID_ZERO_CONTENTS:
		bss_cfg->bcast_ssid_ctl = 2;
		break;
	default:
		FUNC2(bss_cfg);
		return -EINVAL;
	}

	FUNC22(priv, bss_cfg, params->chandef);
	FUNC18(bss_cfg, params);

	if (FUNC15(priv, bss_cfg, params)) {
		FUNC8(priv->adapter, ERROR,
			    "Failed to parse security parameters!\n");
		goto out;
	}

	FUNC13(priv, bss_cfg, params);

	if (priv->adapter->is_hw_11ac_capable) {
		FUNC19(priv, bss_cfg, params);
		FUNC20(priv, params->chandef.width,
				      priv->ap_11ac_enabled);
	}

	if (priv->ap_11ac_enabled)
		FUNC11(priv);
	else
		FUNC12(priv);

	FUNC21(priv, bss_cfg, params);

	if (FUNC9(priv))
		FUNC17(priv, bss_cfg, params);

	if (FUNC9(priv) &&
	    !FUNC1(wiphy, &params->chandef,
					   priv->bss_mode)) {
		FUNC8(priv->adapter, INFO,
			    "Disable 11h extensions in FW\n");
		if (FUNC5(priv, false)) {
			FUNC8(priv->adapter, ERROR,
				    "Failed to disable 11h extensions!!");
			goto out;
		}
		priv->state_11h.is_11h_active = false;
	}

	FUNC7(priv, &params->beacon);

	if (FUNC6(priv, bss_cfg)) {
		FUNC8(priv->adapter, ERROR,
			    "Failed to start AP\n");
		goto out;
	}

	if (FUNC14(priv, &params->beacon))
		goto out;

	if (!FUNC24(priv->netdev))
		FUNC25(priv->netdev);
	FUNC23(priv->netdev, priv->adapter);

	FUNC4(&priv->bss_cfg, bss_cfg, sizeof(priv->bss_cfg));
	FUNC2(bss_cfg);
	return 0;

out:
	FUNC2(bss_cfg);
	return -1;
}