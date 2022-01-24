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
struct wiphy {int /*<<< orphan*/  perm_addr; int /*<<< orphan*/  hw_version; int /*<<< orphan*/  fw_version; } ;
struct hermes {TYPE_1__* ops; } ;
struct orinoco_private {int prefer_port3; int /*<<< orphan*/  hw_unavailable; int /*<<< orphan*/ * wpa_ie; scalar_t__ wpa_ie_len; scalar_t__ key_mgmt; scalar_t__ tkip_cm_active; scalar_t__ wpa_enabled; scalar_t__ tx_key; int /*<<< orphan*/  encode_alg; scalar_t__ promiscuous; scalar_t__ channel; scalar_t__ has_ibss; scalar_t__ has_port3; int /*<<< orphan*/  iw_mode; scalar_t__ has_wpa; scalar_t__ has_big_wep; scalar_t__ has_wep; scalar_t__ do_fw_download; scalar_t__ nicbuf_size; struct hermes hw; struct device* dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int (* init ) (struct hermes*) ;} ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ ETH_HLEN ; 
 scalar_t__ IEEE80211_MAX_FRAME_LEN ; 
 int /*<<< orphan*/  NL80211_IFTYPE_STATION ; 
 int /*<<< orphan*/  ORINOCO_ALG_NONE ; 
 int FUNC0 (struct orinoco_private*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct orinoco_private*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct orinoco_private*) ; 
 int FUNC6 (struct orinoco_private*) ; 
 int FUNC7 (struct orinoco_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct orinoco_private*) ; 
 scalar_t__ FUNC9 (struct orinoco_private*) ; 
 int /*<<< orphan*/  FUNC10 (struct orinoco_private*) ; 
 scalar_t__ FUNC11 (struct wiphy*) ; 
 struct wiphy* FUNC12 (struct orinoco_private*) ; 
 int /*<<< orphan*/  FUNC13 (struct orinoco_private*) ; 
 int FUNC14 (struct hermes*) ; 

int FUNC15(struct orinoco_private *priv)
{
	struct device *dev = priv->dev;
	struct wiphy *wiphy = FUNC12(priv);
	struct hermes *hw = &priv->hw;
	int err = 0;

	/* No need to lock, the hw_unavailable flag is already set in
	 * alloc_orinocodev() */
	priv->nicbuf_size = IEEE80211_MAX_FRAME_LEN + ETH_HLEN;

	/* Initialize the firmware */
	err = hw->ops->init(hw);
	if (err != 0) {
		FUNC2(dev, "Failed to initialize firmware (err = %d)\n",
			err);
		goto out;
	}

	err = FUNC0(priv, wiphy->fw_version,
					sizeof(wiphy->fw_version),
					&wiphy->hw_version);
	if (err != 0) {
		FUNC2(dev, "Incompatible firmware, aborting\n");
		goto out;
	}

	if (priv->do_fw_download) {
#ifdef CONFIG_HERMES_CACHE_FW_ON_INIT
		orinoco_cache_fw(priv, 0);
#endif

		err = FUNC5(priv);
		if (err)
			priv->do_fw_download = 0;

		/* Check firmware version again */
		err = FUNC0(priv, wiphy->fw_version,
						sizeof(wiphy->fw_version),
						&wiphy->hw_version);
		if (err != 0) {
			FUNC2(dev, "Incompatible firmware, aborting\n");
			goto out;
		}
	}

	if (priv->has_port3)
		FUNC3(dev, "Ad-hoc demo mode supported\n");
	if (priv->has_ibss)
		FUNC3(dev, "IEEE standard IBSS ad-hoc mode supported\n");
	if (priv->has_wep)
		FUNC3(dev, "WEP supported, %s-bit key\n",
			 priv->has_big_wep ? "104" : "40");
	if (priv->has_wpa) {
		FUNC3(dev, "WPA-PSK supported\n");
		if (FUNC9(priv)) {
			FUNC2(dev, "Failed to setup MIC crypto algorithm. "
				"Disabling WPA support\n");
			priv->has_wpa = 0;
		}
	}

	err = FUNC7(priv, wiphy->perm_addr);
	if (err)
		goto out;

	err = FUNC6(priv);
	if (err) {
		FUNC2(dev, "Failed to allocate NIC buffer!\n");
		goto out;
	}

	/* Set up the default configuration */
	priv->iw_mode = NL80211_IFTYPE_STATION;
	/* By default use IEEE/IBSS ad-hoc mode if we have it */
	priv->prefer_port3 = priv->has_port3 && (!priv->has_ibss);
	FUNC13(priv);
	priv->channel = 0; /* use firmware default */

	priv->promiscuous = 0;
	priv->encode_alg = ORINOCO_ALG_NONE;
	priv->tx_key = 0;
	priv->wpa_enabled = 0;
	priv->tkip_cm_active = 0;
	priv->key_mgmt = 0;
	priv->wpa_ie_len = 0;
	priv->wpa_ie = NULL;

	if (FUNC11(wiphy)) {
		err = -ENODEV;
		goto out;
	}

	/* Make the hardware available, as long as it hasn't been
	 * removed elsewhere (e.g. by PCMCIA hot unplug) */
	FUNC8(priv);
	priv->hw_unavailable--;
	FUNC10(priv);

	FUNC1(dev, "Ready\n");

 out:
	return err;
}