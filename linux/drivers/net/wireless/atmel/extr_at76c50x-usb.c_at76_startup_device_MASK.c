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
struct at76_card_config {char* short_retry_limit; int encryption_type; int exclude_unencrypted; int auto_rate_fallback; size_t wep_default_key_id; size_t short_preamble; void* beacon_period; int /*<<< orphan*/  wep_default_key_value; int /*<<< orphan*/  ssid_len; int /*<<< orphan*/  current_ssid; scalar_t__ privacy_invoked; int /*<<< orphan*/  channel; int /*<<< orphan*/  basic_rate_set; void* fragmentation_threshold; void* rts_threshold; scalar_t__ promiscuous_mode; } ;
struct at76_priv {scalar_t__ iw_mode; size_t wep_key_id; scalar_t__* wep_keys_len; size_t preamble_type; char* short_retry_limit; scalar_t__ txrate; char* auth_mode; char* scan_max_time; scalar_t__ scan_mode; int scanning; int /*<<< orphan*/  rts_threshold; int /*<<< orphan*/  frag_threshold; int /*<<< orphan*/  bssid; TYPE_1__* hw; struct at76_card_config card_config; int /*<<< orphan*/  udev; int /*<<< orphan*/  beacon_period; int /*<<< orphan*/  wep_keys; int /*<<< orphan*/  essid_size; int /*<<< orphan*/  essid; scalar_t__ wep_enabled; int /*<<< orphan*/  channel; int /*<<< orphan*/  scan_min_time; int /*<<< orphan*/  pm_period; int /*<<< orphan*/  pm_mode; } ;
struct TYPE_2__ {int /*<<< orphan*/  wiphy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_RADIO_ON ; 
 int /*<<< orphan*/  CMD_STARTUP ; 
 int DBG_MIB ; 
 int /*<<< orphan*/  DBG_PARAMS ; 
 int IW_ESSID_MAX_SIZE ; 
 scalar_t__ IW_MODE_ADHOC ; 
 scalar_t__ SCAN_TYPE_ACTIVE ; 
 scalar_t__ TX_RATE_11MBIT ; 
 scalar_t__ TX_RATE_1MBIT ; 
 scalar_t__ TX_RATE_2MBIT ; 
 scalar_t__ TX_RATE_5_5MBIT ; 
 scalar_t__ TX_RATE_AUTO ; 
 scalar_t__ WEP_SMALL_KEY_LEN ; 
 scalar_t__ WLAN_AUTH_OPEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int at76_debug ; 
 int /*<<< orphan*/  FUNC1 (struct at76_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct at76_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct at76_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct at76_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct at76_priv*) ; 
 int /*<<< orphan*/  FUNC6 (struct at76_priv*) ; 
 int /*<<< orphan*/  FUNC7 (struct at76_priv*) ; 
 int FUNC8 (struct at76_priv*,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct at76_card_config*,int) ; 
 int FUNC10 (struct at76_priv*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct at76_priv*) ; 
 int FUNC12 (struct at76_priv*,size_t) ; 
 int FUNC13 (struct at76_priv*,int) ; 
 int FUNC14 (struct at76_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct at76_priv*,int /*<<< orphan*/ ) ; 
 void* FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hw_rates ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (struct at76_card_config*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * preambles ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC22(struct at76_priv *priv)
{
	struct at76_card_config *ccfg = &priv->card_config;
	int ret;

	FUNC0(DBG_PARAMS,
		 "%s param: ssid %.*s (%*phD) mode %s ch %d wep %s key %d "
		 "keylen %d", FUNC21(priv->hw->wiphy), priv->essid_size,
		 priv->essid, IW_ESSID_MAX_SIZE, priv->essid,
		 priv->iw_mode == IW_MODE_ADHOC ? "adhoc" : "infra",
		 priv->channel, priv->wep_enabled ? "enabled" : "disabled",
		 priv->wep_key_id, priv->wep_keys_len[priv->wep_key_id]);
	FUNC0(DBG_PARAMS,
		 "%s param: preamble %s rts %d retry %d frag %d "
		 "txrate %s auth_mode %d", FUNC21(priv->hw->wiphy),
		 preambles[priv->preamble_type], priv->rts_threshold,
		 priv->short_retry_limit, priv->frag_threshold,
		 priv->txrate == TX_RATE_1MBIT ? "1MBit" : priv->txrate ==
		 TX_RATE_2MBIT ? "2MBit" : priv->txrate ==
		 TX_RATE_5_5MBIT ? "5.5MBit" : priv->txrate ==
		 TX_RATE_11MBIT ? "11MBit" : priv->txrate ==
		 TX_RATE_AUTO ? "auto" : "<invalid>", priv->auth_mode);
	FUNC0(DBG_PARAMS,
		 "%s param: pm_mode %d pm_period %d auth_mode %s "
		 "scan_times %d %d scan_mode %s",
		 FUNC21(priv->hw->wiphy), priv->pm_mode, priv->pm_period,
		 priv->auth_mode == WLAN_AUTH_OPEN ? "open" : "shared_secret",
		 priv->scan_min_time, priv->scan_max_time,
		 priv->scan_mode == SCAN_TYPE_ACTIVE ? "active" : "passive");

	FUNC19(ccfg, 0, sizeof(struct at76_card_config));
	ccfg->promiscuous_mode = 0;
	ccfg->short_retry_limit = priv->short_retry_limit;

	if (priv->wep_enabled) {
		if (priv->wep_keys_len[priv->wep_key_id] > WEP_SMALL_KEY_LEN)
			ccfg->encryption_type = 2;
		else
			ccfg->encryption_type = 1;

		/* jal: always exclude unencrypted if WEP is active */
		ccfg->exclude_unencrypted = 1;
	} else {
		ccfg->exclude_unencrypted = 0;
		ccfg->encryption_type = 0;
	}

	ccfg->rts_threshold = FUNC16(priv->rts_threshold);
	ccfg->fragmentation_threshold = FUNC16(priv->frag_threshold);

	FUNC18(ccfg->basic_rate_set, hw_rates, 4);
	/* jal: really needed, we do a set_mib for autorate later ??? */
	ccfg->auto_rate_fallback = (priv->txrate == TX_RATE_AUTO ? 1 : 0);
	ccfg->channel = priv->channel;
	ccfg->privacy_invoked = priv->wep_enabled;
	FUNC18(ccfg->current_ssid, priv->essid, IW_ESSID_MAX_SIZE);
	ccfg->ssid_len = priv->essid_size;

	ccfg->wep_default_key_id = priv->wep_key_id;
	FUNC18(ccfg->wep_default_key_value, priv->wep_keys,
	       sizeof(priv->wep_keys));

	ccfg->short_preamble = priv->preamble_type;
	ccfg->beacon_period = FUNC16(priv->beacon_period);

	ret = FUNC9(priv->udev, CMD_STARTUP, &priv->card_config,
				    sizeof(struct at76_card_config));
	if (ret < 0) {
		FUNC20(priv->hw->wiphy, "at76_set_card_command failed: %d\n",
			  ret);
		return ret;
	}

	FUNC15(priv, CMD_STARTUP);

	/* remove BSSID from previous run */
	FUNC17(priv->bssid);

	priv->scanning = false;

	if (FUNC13(priv, 1) == 1)
		FUNC15(priv, CMD_RADIO_ON);

	ret = FUNC12(priv, priv->preamble_type);
	if (ret < 0)
		return ret;

	ret = FUNC10(priv, priv->frag_threshold);
	if (ret < 0)
		return ret;

	ret = FUNC14(priv, priv->rts_threshold);
	if (ret < 0)
		return ret;

	ret = FUNC8(priv,
					 priv->txrate == TX_RATE_AUTO ? 1 : 0);
	if (ret < 0)
		return ret;

	ret = FUNC11(priv);
	if (ret < 0)
		return ret;

	if (at76_debug & DBG_MIB) {
		FUNC2(priv);
		FUNC3(priv);
		FUNC4(priv);
		FUNC5(priv);
		FUNC6(priv);
		FUNC7(priv);
		FUNC1(priv);
	}

	return 0;
}