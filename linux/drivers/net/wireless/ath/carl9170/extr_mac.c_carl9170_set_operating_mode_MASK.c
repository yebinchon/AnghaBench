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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct ieee80211_vif {int type; } ;
struct ath_common {int /*<<< orphan*/ * macaddr; int /*<<< orphan*/ * curbssid; } ;
struct ar9170 {scalar_t__ sniffer_enabled; scalar_t__ rx_software_decryption; struct ath_common common; } ;

/* Variables and functions */
 int AR9170_MAC_CAM_AP ; 
 int AR9170_MAC_CAM_AP_WDS ; 
 int AR9170_MAC_CAM_DEFAULTS ; 
 int AR9170_MAC_CAM_IBSS ; 
 int AR9170_MAC_CAM_STA ; 
 int AR9170_MAC_ENCRYPTION_DEFAULTS ; 
 int AR9170_MAC_ENCRYPTION_MGMT_RX_SOFTWARE ; 
 int AR9170_MAC_ENCRYPTION_RX_SOFTWARE ; 
 int /*<<< orphan*/  AR9170_MAC_REG_BSSID_L ; 
 int /*<<< orphan*/  AR9170_MAC_REG_CAM_MODE ; 
 int /*<<< orphan*/  AR9170_MAC_REG_ENCRYPTION ; 
 int /*<<< orphan*/  AR9170_MAC_REG_MAC_ADDR_L ; 
 int /*<<< orphan*/  AR9170_MAC_REG_RX_CONTROL ; 
 int /*<<< orphan*/  AR9170_MAC_REG_SNIFFER ; 
 int AR9170_MAC_RX_CTRL_DEAGG ; 
 int AR9170_MAC_RX_CTRL_PASS_TO_HOST ; 
 int AR9170_MAC_RX_CTRL_SHORT_FILTER ; 
 int AR9170_MAC_SNIFFER_DEFAULTS ; 
 int EOPNOTSUPP ; 
#define  NL80211_IFTYPE_ADHOC 132 
#define  NL80211_IFTYPE_AP 131 
#define  NL80211_IFTYPE_MESH_POINT 130 
#define  NL80211_IFTYPE_STATION 129 
#define  NL80211_IFTYPE_WDS 128 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 struct ieee80211_vif* FUNC1 (struct ar9170*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ar9170*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 () ; 
 int FUNC6 (struct ar9170*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 

int FUNC9(struct ar9170 *ar)
{
	struct ieee80211_vif *vif;
	struct ath_common *common = &ar->common;
	u8 *mac_addr, *bssid;
	u32 cam_mode = AR9170_MAC_CAM_DEFAULTS;
	u32 enc_mode = AR9170_MAC_ENCRYPTION_DEFAULTS |
		AR9170_MAC_ENCRYPTION_MGMT_RX_SOFTWARE;
	u32 rx_ctrl = AR9170_MAC_RX_CTRL_DEAGG |
		      AR9170_MAC_RX_CTRL_SHORT_FILTER;
	u32 sniffer = AR9170_MAC_SNIFFER_DEFAULTS;
	int err = 0;

	FUNC7();
	vif = FUNC1(ar);

	if (vif) {
		mac_addr = common->macaddr;
		bssid = common->curbssid;

		switch (vif->type) {
		case NL80211_IFTYPE_ADHOC:
			cam_mode |= AR9170_MAC_CAM_IBSS;
			break;
		case NL80211_IFTYPE_MESH_POINT:
		case NL80211_IFTYPE_AP:
			cam_mode |= AR9170_MAC_CAM_AP;

			/* iwlagn 802.11n STA Workaround */
			rx_ctrl |= AR9170_MAC_RX_CTRL_PASS_TO_HOST;
			break;
		case NL80211_IFTYPE_WDS:
			cam_mode |= AR9170_MAC_CAM_AP_WDS;
			rx_ctrl |= AR9170_MAC_RX_CTRL_PASS_TO_HOST;
			break;
		case NL80211_IFTYPE_STATION:
			cam_mode |= AR9170_MAC_CAM_STA;
			rx_ctrl |= AR9170_MAC_RX_CTRL_PASS_TO_HOST;
			break;
		default:
			FUNC0(1, "Unsupported operation mode %x\n", vif->type);
			err = -EOPNOTSUPP;
			break;
		}
	} else {
		/*
		 * Enable monitor mode
		 *
		 * rx_ctrl |= AR9170_MAC_RX_CTRL_ACK_IN_SNIFFER;
		 * sniffer |= AR9170_MAC_SNIFFER_ENABLE_PROMISC;
		 *
		 * When the hardware is in SNIFFER_PROMISC mode,
		 * it generates spurious ACKs for every incoming
		 * frame. This confuses every peer in the
		 * vicinity and the network throughput will suffer
		 * badly.
		 *
		 * Hence, the hardware will be put into station
		 * mode and just the rx filters are disabled.
		 */
		cam_mode |= AR9170_MAC_CAM_STA;
		rx_ctrl |= AR9170_MAC_RX_CTRL_PASS_TO_HOST;
		mac_addr = common->macaddr;
		bssid = NULL;
	}
	FUNC8();

	if (err)
		return err;

	if (ar->rx_software_decryption)
		enc_mode |= AR9170_MAC_ENCRYPTION_RX_SOFTWARE;

	if (ar->sniffer_enabled) {
		enc_mode |= AR9170_MAC_ENCRYPTION_RX_SOFTWARE;
	}

	err = FUNC6(ar, AR9170_MAC_REG_MAC_ADDR_L, mac_addr);
	if (err)
		return err;

	err = FUNC6(ar, AR9170_MAC_REG_BSSID_L, bssid);
	if (err)
		return err;

	FUNC3(ar);
	FUNC2(AR9170_MAC_REG_SNIFFER, sniffer);
	FUNC2(AR9170_MAC_REG_CAM_MODE, cam_mode);
	FUNC2(AR9170_MAC_REG_ENCRYPTION, enc_mode);
	FUNC2(AR9170_MAC_REG_RX_CONTROL, rx_ctrl);
	FUNC4();

	return FUNC5();
}