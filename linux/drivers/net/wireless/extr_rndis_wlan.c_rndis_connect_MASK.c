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
struct wiphy {int dummy; } ;
struct usbnet {int /*<<< orphan*/  net; } ;
struct rndis_wlan_private {int /*<<< orphan*/  encr_tx_key_index; struct usbnet* usbdev; } ;
struct net_device {int dummy; } ;
struct ndis_80211_ssid {int /*<<< orphan*/  essid; int /*<<< orphan*/  length; } ;
struct ieee80211_channel {int /*<<< orphan*/  center_freq; } ;
struct TYPE_2__ {int n_ciphers_pairwise; int n_akm_suites; int /*<<< orphan*/  wpa_versions; int /*<<< orphan*/ * akm_suites; int /*<<< orphan*/ * ciphers_pairwise; int /*<<< orphan*/  cipher_group; } ;
struct cfg80211_connect_params {int ssid_len; int /*<<< orphan*/  ssid; int /*<<< orphan*/  bssid; int /*<<< orphan*/  key_idx; int /*<<< orphan*/  key_len; int /*<<< orphan*/  key; int /*<<< orphan*/  auth_type; TYPE_1__ crypto; int /*<<< orphan*/  privacy; struct ieee80211_channel* channel; } ;
typedef  int /*<<< orphan*/  ssid ;

/* Variables and functions */
 int ENOTSUPP ; 
 int /*<<< orphan*/  NDIS_80211_INFRA_INFRA ; 
 int NDIS_802_11_LENGTH_SSID ; 
 int RNDIS_WLAN_ALG_NONE ; 
 int RNDIS_WLAN_ALG_WEP ; 
 int RNDIS_WLAN_KEY_MGMT_NONE ; 
 int FUNC0 (struct usbnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct usbnet*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct usbnet*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct usbnet*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ndis_80211_ssid*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (struct usbnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC15 (struct usbnet*,int /*<<< orphan*/ ) ; 
 int FUNC16 (struct usbnet*,int) ; 
 int FUNC17 (struct usbnet*,int,int) ; 
 int FUNC18 (struct usbnet*,struct ndis_80211_ssid*) ; 
 int FUNC19 (struct usbnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct usbnet*) ; 
 int /*<<< orphan*/  FUNC21 (struct usbnet*) ; 
 int /*<<< orphan*/  FUNC22 (struct usbnet*) ; 
 struct rndis_wlan_private* FUNC23 (struct wiphy*) ; 

__attribute__((used)) static int FUNC24(struct wiphy *wiphy, struct net_device *dev,
					struct cfg80211_connect_params *sme)
{
	struct rndis_wlan_private *priv = FUNC23(wiphy);
	struct usbnet *usbdev = priv->usbdev;
	struct ieee80211_channel *channel = sme->channel;
	struct ndis_80211_ssid ssid;
	int pairwise = RNDIS_WLAN_ALG_NONE;
	int groupwise = RNDIS_WLAN_ALG_NONE;
	int keymgmt = RNDIS_WLAN_KEY_MGMT_NONE;
	int length, i, ret, chan = -1;

	if (channel)
		chan = FUNC4(channel->center_freq);

	groupwise = FUNC13(sme->crypto.cipher_group);
	for (i = 0; i < sme->crypto.n_ciphers_pairwise; i++)
		pairwise |=
			FUNC13(sme->crypto.ciphers_pairwise[i]);

	if (sme->crypto.n_ciphers_pairwise > 0 &&
			pairwise == RNDIS_WLAN_ALG_NONE) {
		FUNC11(usbdev->net, "Unsupported pairwise cipher\n");
		return -ENOTSUPP;
	}

	for (i = 0; i < sme->crypto.n_akm_suites; i++)
		keymgmt |=
			FUNC12(sme->crypto.akm_suites[i]);

	if (sme->crypto.n_akm_suites > 0 &&
			keymgmt == RNDIS_WLAN_KEY_MGMT_NONE) {
		FUNC11(usbdev->net, "Invalid keymgmt\n");
		return -ENOTSUPP;
	}

	FUNC10(usbdev->net, "cfg80211.connect('%.32s':[%pM]:%d:[%d,0x%x:0x%x]:[0x%x:0x%x]:0x%x)\n",
		   sme->ssid, sme->bssid, chan,
		   sme->privacy, sme->crypto.wpa_versions, sme->auth_type,
		   groupwise, pairwise, keymgmt);

	if (FUNC5(usbdev))
		FUNC3(usbdev, false);

	ret = FUNC19(usbdev, NDIS_80211_INFRA_INFRA);
	if (ret < 0) {
		FUNC10(usbdev->net, "connect: set_infra_mode failed, %d\n",
			   ret);
		goto err_turn_radio_on;
	}

	ret = FUNC14(usbdev, sme->crypto.wpa_versions, sme->auth_type,
								keymgmt);
	if (ret < 0) {
		FUNC10(usbdev->net, "connect: set_auth_mode failed, %d\n",
			   ret);
		goto err_turn_radio_on;
	}

	FUNC20(usbdev);

	ret = FUNC17(usbdev, pairwise, groupwise);
	if (ret < 0) {
		FUNC10(usbdev->net, "connect: set_encr_mode failed, %d\n",
			   ret);
		goto err_turn_radio_on;
	}

	if (channel) {
		ret = FUNC16(usbdev, chan);
		if (ret < 0) {
			FUNC10(usbdev->net, "connect: set_channel failed, %d\n",
				   ret);
			goto err_turn_radio_on;
		}
	}

	if (sme->key && ((groupwise | pairwise) & RNDIS_WLAN_ALG_WEP)) {
		priv->encr_tx_key_index = sme->key_idx;
		ret = FUNC0(usbdev, sme->key, sme->key_len, sme->key_idx);
		if (ret < 0) {
			FUNC10(usbdev->net, "connect: add_wep_key failed, %d (%d, %d)\n",
				   ret, sme->key_len, sme->key_idx);
			goto err_turn_radio_on;
		}
	}

	if (sme->bssid && !FUNC7(sme->bssid) &&
				!FUNC6(sme->bssid)) {
		ret = FUNC15(usbdev, sme->bssid);
		if (ret < 0) {
			FUNC10(usbdev->net, "connect: set_bssid failed, %d\n",
				   ret);
			goto err_turn_radio_on;
		}
	} else
		FUNC1(usbdev);

	length = sme->ssid_len;
	if (length > NDIS_802_11_LENGTH_SSID)
		length = NDIS_802_11_LENGTH_SSID;

	FUNC9(&ssid, 0, sizeof(ssid));
	ssid.length = FUNC2(length);
	FUNC8(ssid.essid, sme->ssid, length);

	/* Pause and purge rx queue, so we don't pass packets before
	 * 'media connect'-indication.
	 */
	FUNC21(usbdev);
	FUNC22(usbdev);

	ret = FUNC18(usbdev, &ssid);
	if (ret < 0)
		FUNC10(usbdev->net, "connect: set_essid failed, %d\n", ret);
	return ret;

err_turn_radio_on:
	FUNC3(usbdev, true);

	return ret;
}