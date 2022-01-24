#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u16 ;
struct TYPE_6__ {int /*<<< orphan*/  wiphy; } ;
struct TYPE_5__ {int wpa_enabled; int wpa2_enabled; int is_authtype_auto; int authentication_mode; scalar_t__ encryption_mode; } ;
struct mwifiex_private {int cfg_bssid; int /*<<< orphan*/  adapter; TYPE_3__ wdev; scalar_t__ wep_key_curr_index; TYPE_2__ sec_info; } ;
struct ieee80211_channel {int dummy; } ;
struct cfg80211_ssid {size_t ssid_len; int* ssid; } ;
struct TYPE_4__ {scalar_t__ cipher_group; scalar_t__* ciphers_pairwise; scalar_t__ n_ciphers_pairwise; } ;
struct cfg80211_connect_params {int auth_type; scalar_t__ key_idx; int /*<<< orphan*/  key_len; int /*<<< orphan*/ * key; int /*<<< orphan*/  ie_len; scalar_t__ ie; TYPE_1__ crypto; } ;
struct cfg80211_bss {int const* bssid; } ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
 int /*<<< orphan*/  ERROR ; 
 size_t ETH_ALEN ; 
 int /*<<< orphan*/  HostCmd_ACT_GEN_SET ; 
 int /*<<< orphan*/  HostCmd_CMD_802_11_IBSS_COALESCING_STATUS ; 
 int /*<<< orphan*/  IEEE80211_BSS_TYPE_ESS ; 
 int /*<<< orphan*/  IEEE80211_BSS_TYPE_IBSS ; 
 size_t IEEE80211_MAX_SSID_LEN ; 
 int /*<<< orphan*/  IEEE80211_PRIVACY_ANY ; 
 int /*<<< orphan*/  INFO ; 
 int /*<<< orphan*/  MSG ; 
 int NL80211_AUTHTYPE_AUTOMATIC ; 
 void* NL80211_AUTHTYPE_OPEN_SYSTEM ; 
 int NL80211_IFTYPE_ADHOC ; 
 scalar_t__ WLAN_CIPHER_SUITE_WEP104 ; 
 struct cfg80211_bss* FUNC0 (int /*<<< orphan*/ ,struct ieee80211_channel*,int const*,int const*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int*,int const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct cfg80211_ssid*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct mwifiex_private*,struct cfg80211_bss*,struct cfg80211_ssid*) ; 
 scalar_t__ FUNC4 (struct mwifiex_private*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (struct mwifiex_private*,struct cfg80211_ssid*) ; 
 int FUNC8 (struct mwifiex_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC9 (struct mwifiex_private*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int) ; 
 int FUNC10 (struct mwifiex_private*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(struct mwifiex_private *priv, size_t ssid_len,
		       const u8 *ssid, const u8 *bssid, int mode,
		       struct ieee80211_channel *channel,
		       struct cfg80211_connect_params *sme, bool privacy)
{
	struct cfg80211_ssid req_ssid;
	int ret, auth_type = 0;
	struct cfg80211_bss *bss = NULL;
	u8 is_scanning_required = 0;

	FUNC2(&req_ssid, 0, sizeof(struct cfg80211_ssid));

	req_ssid.ssid_len = ssid_len;
	if (ssid_len > IEEE80211_MAX_SSID_LEN) {
		FUNC5(priv->adapter, ERROR, "invalid SSID - aborting\n");
		return -EINVAL;
	}

	FUNC1(req_ssid.ssid, ssid, ssid_len);
	if (!req_ssid.ssid_len || req_ssid.ssid[0] < 0x20) {
		FUNC5(priv->adapter, ERROR, "invalid SSID - aborting\n");
		return -EINVAL;
	}

	/* As this is new association, clear locally stored
	 * keys and security related flags */
	priv->sec_info.wpa_enabled = false;
	priv->sec_info.wpa2_enabled = false;
	priv->wep_key_curr_index = 0;
	priv->sec_info.encryption_mode = 0;
	priv->sec_info.is_authtype_auto = 0;
	ret = FUNC9(priv, NULL, NULL, 0, 0, NULL, 1);

	if (mode == NL80211_IFTYPE_ADHOC) {
		u16 enable = true;

		/* set ibss coalescing_status */
		ret = FUNC8(
				priv,
				HostCmd_CMD_802_11_IBSS_COALESCING_STATUS,
				HostCmd_ACT_GEN_SET, 0, &enable, true);
		if (ret)
			return ret;

		/* "privacy" is set only for ad-hoc mode */
		if (privacy) {
			/*
			 * Keep WLAN_CIPHER_SUITE_WEP104 for now so that
			 * the firmware can find a matching network from the
			 * scan. The cfg80211 does not give us the encryption
			 * mode at this stage so just setting it to WEP here.
			 */
			priv->sec_info.encryption_mode =
					WLAN_CIPHER_SUITE_WEP104;
			priv->sec_info.authentication_mode =
					NL80211_AUTHTYPE_OPEN_SYSTEM;
		}

		goto done;
	}

	/* Now handle infra mode. "sme" is valid for infra mode only */
	if (sme->auth_type == NL80211_AUTHTYPE_AUTOMATIC) {
		auth_type = NL80211_AUTHTYPE_OPEN_SYSTEM;
		priv->sec_info.is_authtype_auto = 1;
	} else {
		auth_type = sme->auth_type;
	}

	if (sme->crypto.n_ciphers_pairwise) {
		priv->sec_info.encryption_mode =
						sme->crypto.ciphers_pairwise[0];
		priv->sec_info.authentication_mode = auth_type;
	}

	if (sme->crypto.cipher_group) {
		priv->sec_info.encryption_mode = sme->crypto.cipher_group;
		priv->sec_info.authentication_mode = auth_type;
	}
	if (sme->ie)
		ret = FUNC10(priv, sme->ie, sme->ie_len);

	if (sme->key) {
		if (FUNC6(priv->sec_info.encryption_mode)) {
			FUNC5(priv->adapter, INFO,
				    "info: setting wep encryption\t"
				    "with key len %d\n", sme->key_len);
			priv->wep_key_curr_index = sme->key_idx;
			ret = FUNC9(priv, NULL, sme->key,
						 sme->key_len, sme->key_idx,
						 NULL, 0);
		}
	}
done:
	/*
	 * Scan entries are valid for some time (15 sec). So we can save one
	 * active scan time if we just try cfg80211_get_bss first. If it fails
	 * then request scan and cfg80211_get_bss() again for final output.
	 */
	while (1) {
		if (is_scanning_required) {
			/* Do specific SSID scanning */
			if (FUNC7(priv, &req_ssid)) {
				FUNC5(priv->adapter, ERROR, "scan error\n");
				return -EFAULT;
			}
		}

		/* Find the BSS we want using available scan results */
		if (mode == NL80211_IFTYPE_ADHOC)
			bss = FUNC0(priv->wdev.wiphy, channel,
					       bssid, ssid, ssid_len,
					       IEEE80211_BSS_TYPE_IBSS,
					       IEEE80211_PRIVACY_ANY);
		else
			bss = FUNC0(priv->wdev.wiphy, channel,
					       bssid, ssid, ssid_len,
					       IEEE80211_BSS_TYPE_ESS,
					       IEEE80211_PRIVACY_ANY);

		if (!bss) {
			if (is_scanning_required) {
				FUNC5(priv->adapter, MSG,
					    "assoc: requested bss not found in scan results\n");
				break;
			}
			is_scanning_required = 1;
		} else {
			FUNC5(priv->adapter, MSG,
				    "info: trying to associate to '%.*s' bssid %pM\n",
				    req_ssid.ssid_len, (char *)req_ssid.ssid,
				    bss->bssid);
			FUNC1(&priv->cfg_bssid, bss->bssid, ETH_ALEN);
			break;
		}
	}

	ret = FUNC3(priv, bss, &req_ssid);
	if (ret)
		return ret;

	if (mode == NL80211_IFTYPE_ADHOC) {
		/* Inform the BSS information to kernel, otherwise
		 * kernel will give a panic after successful assoc */
		if (FUNC4(priv))
			return -EFAULT;
	}

	return ret;
}