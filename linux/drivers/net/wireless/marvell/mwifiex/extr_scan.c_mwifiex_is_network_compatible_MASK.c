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
typedef  scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ session_enable; } ;
struct mwifiex_private {scalar_t__ bss_mode; struct mwifiex_adapter* adapter; TYPE_1__ wps; scalar_t__ media_connected; } ;
struct mwifiex_bssdescriptor {int disable_11n; scalar_t__ bss_mode; scalar_t__ bcn_ht_cap; scalar_t__ chan_sw_ie_present; } ;
struct mwifiex_adapter {int config_bands; } ;
typedef  int s32 ;

/* Variables and functions */
 int BAND_AN ; 
 int BAND_GN ; 
 int /*<<< orphan*/  CIPHER_SUITE_CCMP ; 
 int /*<<< orphan*/  CIPHER_SUITE_TKIP ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  INFO ; 
 int /*<<< orphan*/  IOCTL ; 
 scalar_t__ NL80211_IFTYPE_STATION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct mwifiex_private*,struct mwifiex_bssdescriptor*) ; 
 int /*<<< orphan*/  FUNC1 (struct mwifiex_adapter*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (struct mwifiex_private*,struct mwifiex_bssdescriptor*) ; 
 scalar_t__ FUNC3 (struct mwifiex_private*,struct mwifiex_bssdescriptor*) ; 
 scalar_t__ FUNC4 (struct mwifiex_private*,struct mwifiex_bssdescriptor*) ; 
 scalar_t__ FUNC5 (struct mwifiex_private*,struct mwifiex_bssdescriptor*) ; 
 scalar_t__ FUNC6 (struct mwifiex_private*,struct mwifiex_bssdescriptor*) ; 
 scalar_t__ FUNC7 (struct mwifiex_private*,struct mwifiex_bssdescriptor*) ; 
 scalar_t__ FUNC8 (struct mwifiex_private*,struct mwifiex_bssdescriptor*) ; 
 scalar_t__ FUNC9 (struct mwifiex_bssdescriptor*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct mwifiex_bssdescriptor*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static s32
FUNC11(struct mwifiex_private *priv,
			      struct mwifiex_bssdescriptor *bss_desc, u32 mode)
{
	struct mwifiex_adapter *adapter = priv->adapter;

	bss_desc->disable_11n = false;

	/* Don't check for compatibility if roaming */
	if (priv->media_connected &&
	    (priv->bss_mode == NL80211_IFTYPE_STATION) &&
	    (bss_desc->bss_mode == NL80211_IFTYPE_STATION))
		return 0;

	if (priv->wps.session_enable) {
		FUNC1(adapter, IOCTL,
			    "info: return success directly in WPS period\n");
		return 0;
	}

	if (bss_desc->chan_sw_ie_present) {
		FUNC1(adapter, INFO,
			    "Don't connect to AP with WLAN_EID_CHANNEL_SWITCH\n");
		return -1;
	}

	if (FUNC6(priv, bss_desc)) {
		FUNC1(adapter, INFO,
			    "info: return success for WAPI AP\n");
		return 0;
	}

	if (bss_desc->bss_mode == mode) {
		if (FUNC4(priv, bss_desc)) {
			/* No security */
			return 0;
		} else if (FUNC5(priv, bss_desc)) {
			/* Static WEP enabled */
			FUNC1(adapter, INFO,
				    "info: Disable 11n in WEP mode.\n");
			bss_desc->disable_11n = true;
			return 0;
		} else if (FUNC7(priv, bss_desc)) {
			/* WPA enabled */
			if (((priv->adapter->config_bands & BAND_GN ||
			      priv->adapter->config_bands & BAND_AN) &&
			     bss_desc->bcn_ht_cap) &&
			    !FUNC10(bss_desc,
							 CIPHER_SUITE_CCMP)) {

				if (FUNC10
						(bss_desc, CIPHER_SUITE_TKIP)) {
					FUNC1(adapter, INFO,
						    "info: Disable 11n if AES\t"
						    "is not supported by AP\n");
					bss_desc->disable_11n = true;
				} else {
					return -1;
				}
			}
			return 0;
		} else if (FUNC8(priv, bss_desc)) {
			/* WPA2 enabled */
			if (((priv->adapter->config_bands & BAND_GN ||
			      priv->adapter->config_bands & BAND_AN) &&
			     bss_desc->bcn_ht_cap) &&
			    !FUNC9(bss_desc,
							CIPHER_SUITE_CCMP)) {

				if (FUNC9
						(bss_desc, CIPHER_SUITE_TKIP)) {
					FUNC1(adapter, INFO,
						    "info: Disable 11n if AES\t"
						    "is not supported by AP\n");
					bss_desc->disable_11n = true;
				} else {
					return -1;
				}
			}
			return 0;
		} else if (FUNC2(priv, bss_desc)) {
			/* Ad-hoc AES enabled */
			return 0;
		} else if (FUNC3(priv, bss_desc)) {
			/* Dynamic WEP enabled */
			return 0;
		}

		/* Security doesn't match */
		FUNC0(ERROR, "failed", priv, bss_desc);
		return -1;
	}

	/* Mode doesn't match */
	return -1;
}