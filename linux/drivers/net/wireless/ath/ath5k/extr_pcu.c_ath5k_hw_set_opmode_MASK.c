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
typedef  int u32 ;
struct ath_common {scalar_t__ macaddr; } ;
struct ath5k_hw {scalar_t__ ah_version; } ;
typedef  enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;

/* Variables and functions */
 scalar_t__ AR5K_AR5210 ; 
 int /*<<< orphan*/  AR5K_BCR ; 
 int AR5K_BCR_ADHOC ; 
 int AR5K_BCR_AP ; 
 int /*<<< orphan*/  AR5K_CFG ; 
 int /*<<< orphan*/  AR5K_CFG_IBSS ; 
 int /*<<< orphan*/  FUNC0 (struct ath5k_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath5k_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AR5K_STA_ID0 ; 
 int /*<<< orphan*/  AR5K_STA_ID1 ; 
 int AR5K_STA_ID1_ADHOC ; 
 int AR5K_STA_ID1_AP ; 
 int AR5K_STA_ID1_KEYSRCH_MODE ; 
 int AR5K_STA_ID1_NO_PSPOLL ; 
 int AR5K_STA_ID1_PWR_SV ; 
 int /*<<< orphan*/  FUNC2 (struct ath5k_hw*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  ATH5K_DEBUG_MODE ; 
 int EINVAL ; 
#define  NL80211_IFTYPE_ADHOC 132 
#define  NL80211_IFTYPE_AP 131 
#define  NL80211_IFTYPE_MESH_POINT 130 
#define  NL80211_IFTYPE_MONITOR 129 
#define  NL80211_IFTYPE_STATION 128 
 struct ath_common* FUNC3 (struct ath5k_hw*) ; 
 int FUNC4 (struct ath5k_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ath5k_hw*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (scalar_t__) ; 
 int FUNC7 (scalar_t__) ; 

int
FUNC8(struct ath5k_hw *ah, enum nl80211_iftype op_mode)
{
	struct ath_common *common = FUNC3(ah);
	u32 pcu_reg, beacon_reg, low_id, high_id;

	FUNC2(ah, ATH5K_DEBUG_MODE, "mode %d\n", op_mode);

	/* Preserve rest settings */
	pcu_reg = FUNC4(ah, AR5K_STA_ID1) & 0xffff0000;
	pcu_reg &= ~(AR5K_STA_ID1_ADHOC | AR5K_STA_ID1_AP
			| AR5K_STA_ID1_KEYSRCH_MODE
			| (ah->ah_version == AR5K_AR5210 ?
			(AR5K_STA_ID1_PWR_SV | AR5K_STA_ID1_NO_PSPOLL) : 0));

	beacon_reg = 0;

	switch (op_mode) {
	case NL80211_IFTYPE_ADHOC:
		pcu_reg |= AR5K_STA_ID1_ADHOC | AR5K_STA_ID1_KEYSRCH_MODE;
		beacon_reg |= AR5K_BCR_ADHOC;
		if (ah->ah_version == AR5K_AR5210)
			pcu_reg |= AR5K_STA_ID1_NO_PSPOLL;
		else
			FUNC1(ah, AR5K_CFG, AR5K_CFG_IBSS);
		break;

	case NL80211_IFTYPE_AP:
	case NL80211_IFTYPE_MESH_POINT:
		pcu_reg |= AR5K_STA_ID1_AP | AR5K_STA_ID1_KEYSRCH_MODE;
		beacon_reg |= AR5K_BCR_AP;
		if (ah->ah_version == AR5K_AR5210)
			pcu_reg |= AR5K_STA_ID1_NO_PSPOLL;
		else
			FUNC0(ah, AR5K_CFG, AR5K_CFG_IBSS);
		break;

	case NL80211_IFTYPE_STATION:
		pcu_reg |= AR5K_STA_ID1_KEYSRCH_MODE
			| (ah->ah_version == AR5K_AR5210 ?
				AR5K_STA_ID1_PWR_SV : 0);
		/* fall through */
	case NL80211_IFTYPE_MONITOR:
		pcu_reg |= AR5K_STA_ID1_KEYSRCH_MODE
			| (ah->ah_version == AR5K_AR5210 ?
				AR5K_STA_ID1_NO_PSPOLL : 0);
		break;

	default:
		return -EINVAL;
	}

	/*
	 * Set PCU registers
	 */
	low_id = FUNC7(common->macaddr);
	high_id = FUNC6(common->macaddr + 4);
	FUNC5(ah, low_id, AR5K_STA_ID0);
	FUNC5(ah, pcu_reg | high_id, AR5K_STA_ID1);

	/*
	 * Set Beacon Control Register on 5210
	 */
	if (ah->ah_version == AR5K_AR5210)
		FUNC5(ah, beacon_reg, AR5K_BCR);

	return 0;
}