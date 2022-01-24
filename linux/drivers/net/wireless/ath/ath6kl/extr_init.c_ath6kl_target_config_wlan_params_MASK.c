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
struct ath6kl {int conf_flags; int p2p; int vif_max; int /*<<< orphan*/  wmi; int /*<<< orphan*/  rx_meta_ver; } ;

/* Variables and functions */
 int ATH6KL_CONF_ENABLE_TX_BURST ; 
 int ATH6KL_CONF_IGNORE_ERP_BARKER ; 
 int ATH6KL_CONF_IGNORE_PS_FAIL_EVT_IN_SCAN ; 
 int /*<<< orphan*/  ATH6KL_DBG_TRC ; 
 int /*<<< orphan*/  IGNORE_PS_FAIL_DURING_SCAN ; 
 int P2P_FLAG_CAPABILITIES_REQ ; 
 int P2P_FLAG_HMODEL_REQ ; 
 int P2P_FLAG_MACADDR_REQ ; 
 int /*<<< orphan*/  WLAN_CONFIG_DISCONNECT_TIMEOUT ; 
 int /*<<< orphan*/  WLAN_CONFIG_KEEP_ALIVE_INTERVAL ; 
 int /*<<< orphan*/  WMI_FOLLOW_BARKER_IN_ERP ; 
 int /*<<< orphan*/  WMI_TXOP_DISABLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct ath6kl *ar, int idx)
{
	int ret;

	/*
	 * Configure the device for rx dot11 header rules. "0,0" are the
	 * default values. Required if checksum offload is needed. Set
	 * RxMetaVersion to 2.
	 */
	ret = FUNC8(ar->wmi, idx,
						 ar->rx_meta_ver, 0, 0);
	if (ret) {
		FUNC1("unable to set the rx frame format: %d\n", ret);
		return ret;
	}

	if (ar->conf_flags & ATH6KL_CONF_IGNORE_PS_FAIL_EVT_IN_SCAN) {
		ret = FUNC4(ar->wmi, idx, 0, 1, 0, 0, 1,
					      IGNORE_PS_FAIL_DURING_SCAN);
		if (ret) {
			FUNC1("unable to set power save fail event policy: %d\n",
				   ret);
			return ret;
		}
	}

	if (!(ar->conf_flags & ATH6KL_CONF_IGNORE_ERP_BARKER)) {
		ret = FUNC7(ar->wmi, idx, 0,
						   WMI_FOLLOW_BARKER_IN_ERP);
		if (ret) {
			FUNC1("unable to set barker preamble policy: %d\n",
				   ret);
			return ret;
		}
	}

	ret = FUNC6(ar->wmi, idx,
					   WLAN_CONFIG_KEEP_ALIVE_INTERVAL);
	if (ret) {
		FUNC1("unable to set keep alive interval: %d\n", ret);
		return ret;
	}

	ret = FUNC2(ar->wmi, idx,
					 WLAN_CONFIG_DISCONNECT_TIMEOUT);
	if (ret) {
		FUNC1("unable to set disconnect timeout: %d\n", ret);
		return ret;
	}

	if (!(ar->conf_flags & ATH6KL_CONF_ENABLE_TX_BURST)) {
		ret = FUNC9(ar->wmi, idx, WMI_TXOP_DISABLED);
		if (ret) {
			FUNC1("unable to set txop bursting: %d\n", ret);
			return ret;
		}
	}

	if (ar->p2p && (ar->vif_max == 1 || idx)) {
		ret = FUNC3(ar->wmi, idx,
					      P2P_FLAG_CAPABILITIES_REQ |
					      P2P_FLAG_MACADDR_REQ |
					      P2P_FLAG_HMODEL_REQ);
		if (ret) {
			FUNC0(ATH6KL_DBG_TRC,
				   "failed to request P2P capabilities (%d) - assuming P2P not supported\n",
				   ret);
			ar->p2p = false;
		}
	}

	if (ar->p2p && (ar->vif_max == 1 || idx)) {
		/* Enable Probe Request reporting for P2P */
		ret = FUNC5(ar->wmi, idx, true);
		if (ret) {
			FUNC0(ATH6KL_DBG_TRC,
				   "failed to enable Probe Request reporting (%d)\n",
				   ret);
		}
	}

	return ret;
}