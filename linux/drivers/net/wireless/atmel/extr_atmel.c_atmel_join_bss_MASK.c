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
struct bss_info {scalar_t__ BSStype; int channel; scalar_t__ preamble; scalar_t__ UsingWEP; int /*<<< orphan*/  beacon_period; int /*<<< orphan*/  SSIDsize; int /*<<< orphan*/  SSID; int /*<<< orphan*/  BSSID; } ;
struct atmel_private {scalar_t__ operating_mode; int listen_interval; int channel; scalar_t__ preamble; scalar_t__ station_is_associated; scalar_t__ wep_is_on; int /*<<< orphan*/  beacon_period; scalar_t__ power_mode; scalar_t__ use_wpa; int /*<<< orphan*/  SSID_size; int /*<<< orphan*/  SSID; int /*<<< orphan*/  CurrentBSSID; struct bss_info* BSSinfo; } ;

/* Variables and functions */
 scalar_t__ ACTIVE_MODE ; 
 int /*<<< orphan*/  BSS_TYPE_AD_HOC ; 
 int /*<<< orphan*/  BSS_TYPE_INFRASTRUCTURE ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 scalar_t__ IW_MODE_ADHOC ; 
 scalar_t__ IW_MODE_INFRA ; 
 int /*<<< orphan*/  LOCAL_MIB_PREAMBLE_TYPE ; 
 int /*<<< orphan*/  Local_Mib_Type ; 
 int /*<<< orphan*/  MAC_MGMT_MIB_LISTEN_INTERVAL_POS ; 
 int /*<<< orphan*/  MAC_MGMT_MIB_PS_MODE_POS ; 
 int /*<<< orphan*/  Mac_Mgmt_Mib_Type ; 
 int /*<<< orphan*/  STATION_STATE_JOINNING ; 
 int /*<<< orphan*/  STATION_STATE_MGMT_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct atmel_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct atmel_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct atmel_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct atmel_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct atmel_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct atmel_private *priv, int bss_index)
{
	struct bss_info *bss =  &priv->BSSinfo[bss_index];

	FUNC5(priv->CurrentBSSID, bss->BSSID, ETH_ALEN);
	FUNC5(priv->SSID, bss->SSID, priv->SSID_size = bss->SSIDsize);

	/* The WPA stuff cares about the current AP address */
	if (priv->use_wpa)
		FUNC3(priv);

	/* When switching to AdHoc turn OFF Power Save if needed */

	if (bss->BSStype == IW_MODE_ADHOC &&
	    priv->operating_mode != IW_MODE_ADHOC &&
	    priv->power_mode) {
		priv->power_mode = 0;
		priv->listen_interval = 1;
		FUNC2(priv, Mac_Mgmt_Mib_Type,
			       MAC_MGMT_MIB_PS_MODE_POS,  ACTIVE_MODE);
		FUNC1(priv, Mac_Mgmt_Mib_Type,
				MAC_MGMT_MIB_LISTEN_INTERVAL_POS, 1);
	}

	priv->operating_mode = bss->BSStype;
	priv->channel = bss->channel & 0x7f;
	priv->beacon_period = bss->beacon_period;

	if (priv->preamble != bss->preamble) {
		priv->preamble = bss->preamble;
		FUNC2(priv, Local_Mib_Type,
			       LOCAL_MIB_PREAMBLE_TYPE, bss->preamble);
	}

	if (!priv->wep_is_on && bss->UsingWEP) {
		FUNC0(priv, STATION_STATE_MGMT_ERROR);
		priv->station_is_associated = 0;
		return;
	}

	if (priv->wep_is_on && !bss->UsingWEP) {
		FUNC0(priv, STATION_STATE_MGMT_ERROR);
		priv->station_is_associated = 0;
		return;
	}

	FUNC0(priv, STATION_STATE_JOINNING);

	if (priv->operating_mode == IW_MODE_INFRA)
		FUNC4(priv, BSS_TYPE_INFRASTRUCTURE);
	else
		FUNC4(priv, BSS_TYPE_AD_HOC);
}