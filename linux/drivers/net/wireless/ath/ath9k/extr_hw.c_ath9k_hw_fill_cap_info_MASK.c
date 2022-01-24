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
struct ath_regulatory {int current_rd; } ;
struct TYPE_4__ {int /*<<< orphan*/  max_patterns; } ;
struct TYPE_6__ {scalar_t__ subvendorid; scalar_t__ devid; } ;
struct ath9k_hw_capabilities {int hw_caps; int chip_chainmask; int tx_chainmask; int rx_chainmask; int rts_aggr_limit; int rx_status_len; int tx_desc_len; int txs_len; int /*<<< orphan*/  max_rxchains; int /*<<< orphan*/  max_txchains; int /*<<< orphan*/  rx_lp_qdepth; int /*<<< orphan*/  rx_hp_qdepth; } ;
struct ath_hw {scalar_t__ opmode; int txchainmask; int rxchainmask; int rfsilent; int ent_mode; TYPE_1__ wow; TYPE_2__* eep_ops; void* rfkill_polarity; void* rfkill_gpio; TYPE_3__ hw_version; int /*<<< orphan*/  misc_mode; scalar_t__ disable_2ghz; scalar_t__ disable_5ghz; struct ath9k_hw_capabilities caps; } ;
struct ath_desc {int dummy; } ;
struct ath_common {int /*<<< orphan*/  crypt_caps; } ;
struct ar9003_txs {int dummy; } ;
struct ar9003_txc {int dummy; } ;
struct ar9003_rxs {int dummy; } ;
struct TYPE_5__ {int (* get_eeprom ) (struct ath_hw*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 scalar_t__ AR2427_DEVID_PCIE ; 
 scalar_t__ AR5416_DEVID_PCI ; 
 int AR5416_OPFLAGS_11A ; 
 int AR5416_OPFLAGS_11G ; 
 int /*<<< orphan*/  AR_ENT_OTP ; 
 int AR_ENT_OTP_49GHZ_DISABLE ; 
 int /*<<< orphan*/  AR_PCU_ALWAYS_PERFORM_KEYSEARCH ; 
 int /*<<< orphan*/  AR_PCU_MIC_NEW_LOC_ENA ; 
 scalar_t__ FUNC0 (struct ath_hw*) ; 
 scalar_t__ FUNC1 (struct ath_hw*) ; 
 scalar_t__ FUNC2 (struct ath_hw*) ; 
 scalar_t__ FUNC3 (struct ath_hw*) ; 
 scalar_t__ FUNC4 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hw*) ; 
 scalar_t__ FUNC6 (struct ath_hw*) ; 
 scalar_t__ FUNC7 (struct ath_hw*) ; 
 scalar_t__ FUNC8 (struct ath_hw*) ; 
 scalar_t__ FUNC9 (struct ath_hw*) ; 
 scalar_t__ FUNC10 (struct ath_hw*) ; 
 scalar_t__ FUNC11 (struct ath_hw*) ; 
 scalar_t__ FUNC12 (struct ath_hw*) ; 
 scalar_t__ FUNC13 (struct ath_hw*) ; 
 scalar_t__ FUNC14 (struct ath_hw*) ; 
 scalar_t__ FUNC15 (struct ath_hw*) ; 
 scalar_t__ FUNC16 (struct ath_hw*) ; 
 scalar_t__ FUNC17 (struct ath_hw*) ; 
 scalar_t__ AR_SUBVENDOR_ID_NEW_A ; 
 int ATH9K_HW_CAP_2GHZ ; 
 int ATH9K_HW_CAP_4KB_SPLITTRANS ; 
 int ATH9K_HW_CAP_5GHZ ; 
 int ATH9K_HW_CAP_ANT_DIV_COMB ; 
 int ATH9K_HW_CAP_APM ; 
 int ATH9K_HW_CAP_AUTOSLEEP ; 
 int ATH9K_HW_CAP_DFS ; 
 int ATH9K_HW_CAP_EDMA ; 
 int ATH9K_HW_CAP_FASTCLOCK ; 
 int ATH9K_HW_CAP_HT ; 
 int ATH9K_HW_CAP_LDPC ; 
 int ATH9K_HW_CAP_MCI ; 
 int ATH9K_HW_CAP_PAPRD ; 
 int ATH9K_HW_CAP_RAC_SUPPORTED ; 
 int ATH9K_HW_CAP_RFSILENT ; 
 int ATH9K_HW_CAP_RTT ; 
 int ATH9K_HW_CAP_SGI_20 ; 
 int /*<<< orphan*/  ATH9K_HW_RX_HP_QDEPTH ; 
 int /*<<< orphan*/  ATH9K_HW_RX_LP_QDEPTH ; 
 int ATH_AMPDU_LIMIT_MAX ; 
 int /*<<< orphan*/  ATH_CRYPT_CAP_CIPHER_AESCCM ; 
 int FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EEP_ANT_DIV_CTL1 ; 
 int /*<<< orphan*/  EEP_CHAIN_MASK_REDUCE ; 
 int /*<<< orphan*/  EEP_MODAL_VER ; 
 int /*<<< orphan*/  EEP_OP_MODE ; 
 int /*<<< orphan*/  EEP_PAPRD ; 
 int /*<<< orphan*/  EEP_REG_0 ; 
 int EEP_RFSILENT_ENABLED ; 
 int /*<<< orphan*/  EEP_RFSILENT_GPIO_SEL ; 
 int /*<<< orphan*/  EEP_RFSILENT_POLARITY ; 
 int /*<<< orphan*/  EEP_RF_SILENT ; 
 int /*<<< orphan*/  EEP_RX_MASK ; 
 int /*<<< orphan*/  EEP_TX_MASK ; 
 int EINVAL ; 
 int /*<<< orphan*/  MAX_NUM_PATTERN ; 
 int /*<<< orphan*/  MAX_NUM_PATTERN_LEGACY ; 
 void* FUNC19 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ NL80211_IFTYPE_AP ; 
 int /*<<< orphan*/  REGULATORY ; 
 int FUNC20 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct ath_hw*) ; 
 struct ath_common* FUNC22 (struct ath_hw*) ; 
 scalar_t__ FUNC23 (struct ath_hw*) ; 
 scalar_t__ FUNC24 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 struct ath_regulatory* FUNC25 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC26 (struct ath_common*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC27 (struct ath_common*,char*) ; 
 int /*<<< orphan*/  FUNC28 (struct ath_common*,char*) ; 
 int /*<<< orphan*/  FUNC29 (struct ath_common*,char*) ; 
 void* FUNC30 (int,int) ; 
 int FUNC31 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int FUNC32 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int FUNC33 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int FUNC34 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int FUNC35 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int FUNC36 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int FUNC37 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int FUNC38 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int FUNC39 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int FUNC40 (struct ath_hw*,int /*<<< orphan*/ ) ; 

int FUNC41(struct ath_hw *ah)
{
	struct ath9k_hw_capabilities *pCap = &ah->caps;
	struct ath_regulatory *regulatory = FUNC25(ah);
	struct ath_common *common = FUNC22(ah);

	u16 eeval;
	u8 ant_div_ctl1, tx_chainmask, rx_chainmask;

	eeval = ah->eep_ops->get_eeprom(ah, EEP_REG_0);
	regulatory->current_rd = eeval;

	if (ah->opmode != NL80211_IFTYPE_AP &&
	    ah->hw_version.subvendorid == AR_SUBVENDOR_ID_NEW_A) {
		if (regulatory->current_rd == 0x64 ||
		    regulatory->current_rd == 0x65)
			regulatory->current_rd += 5;
		else if (regulatory->current_rd == 0x41)
			regulatory->current_rd = 0x43;
		FUNC26(common, REGULATORY, "regdomain mapped to 0x%x\n",
			regulatory->current_rd);
	}

	eeval = ah->eep_ops->get_eeprom(ah, EEP_OP_MODE);

	if (eeval & AR5416_OPFLAGS_11A) {
		if (ah->disable_5ghz)
			FUNC29(common, "disabling 5GHz band\n");
		else
			pCap->hw_caps |= ATH9K_HW_CAP_5GHZ;
	}

	if (eeval & AR5416_OPFLAGS_11G) {
		if (ah->disable_2ghz)
			FUNC29(common, "disabling 2GHz band\n");
		else
			pCap->hw_caps |= ATH9K_HW_CAP_2GHZ;
	}

	if ((pCap->hw_caps & (ATH9K_HW_CAP_2GHZ | ATH9K_HW_CAP_5GHZ)) == 0) {
		FUNC27(common, "both bands are disabled\n");
		return -EINVAL;
	}

	FUNC21(ah);

	if (FUNC13(ah) ||
	    FUNC6(ah) ||
	    FUNC9(ah) ||
	    FUNC16(ah))
		pCap->chip_chainmask = 1;
	else if (!FUNC5(ah))
		pCap->chip_chainmask = 7;
	else if (!FUNC8(ah) ||
		 FUNC10(ah) ||
		 FUNC11(ah) ||
		 FUNC14(ah))
		pCap->chip_chainmask = 3;
	else
		pCap->chip_chainmask = 7;

	pCap->tx_chainmask = ah->eep_ops->get_eeprom(ah, EEP_TX_MASK);
	/*
	 * For AR9271 we will temporarilly uses the rx chainmax as read from
	 * the EEPROM.
	 */
	if ((ah->hw_version.devid == AR5416_DEVID_PCI) &&
	    !(eeval & AR5416_OPFLAGS_11A) &&
	    !(FUNC2(ah)))
		/* CB71: GPIO 0 is pulled down to indicate 3 rx chains */
		pCap->rx_chainmask = FUNC24(ah, 0) ? 0x5 : 0x7;
	else if (FUNC0(ah))
		pCap->rx_chainmask = 0x7;
	else
		/* Use rx_chainmask from EEPROM. */
		pCap->rx_chainmask = ah->eep_ops->get_eeprom(ah, EEP_RX_MASK);

	pCap->tx_chainmask = FUNC30(pCap->chip_chainmask, pCap->tx_chainmask);
	pCap->rx_chainmask = FUNC30(pCap->chip_chainmask, pCap->rx_chainmask);
	ah->txchainmask = pCap->tx_chainmask;
	ah->rxchainmask = pCap->rx_chainmask;

	ah->misc_mode |= AR_PCU_MIC_NEW_LOC_ENA;

	/* enable key search for every frame in an aggregate */
	if (FUNC8(ah))
		ah->misc_mode |= AR_PCU_ALWAYS_PERFORM_KEYSEARCH;

	common->crypt_caps |= ATH_CRYPT_CAP_CIPHER_AESCCM;

	if (ah->hw_version.devid != AR2427_DEVID_PCIE)
		pCap->hw_caps |= ATH9K_HW_CAP_HT;
	else
		pCap->hw_caps &= ~ATH9K_HW_CAP_HT;

	if (FUNC1(ah) || FUNC0(ah))
		pCap->rts_aggr_limit = ATH_AMPDU_LIMIT_MAX;
	else
		pCap->rts_aggr_limit = (8 * 1024);

#ifdef CONFIG_ATH9K_RFKILL
	ah->rfsilent = ah->eep_ops->get_eeprom(ah, EEP_RF_SILENT);
	if (ah->rfsilent & EEP_RFSILENT_ENABLED) {
		ah->rfkill_gpio =
			MS(ah->rfsilent, EEP_RFSILENT_GPIO_SEL);
		ah->rfkill_polarity =
			MS(ah->rfsilent, EEP_RFSILENT_POLARITY);

		pCap->hw_caps |= ATH9K_HW_CAP_RFSILENT;
	}
#endif
	if (FUNC2(ah) || FUNC8(ah))
		pCap->hw_caps |= ATH9K_HW_CAP_AUTOSLEEP;
	else
		pCap->hw_caps &= ~ATH9K_HW_CAP_AUTOSLEEP;

	if (FUNC3(ah) || FUNC6(ah))
		pCap->hw_caps &= ~ATH9K_HW_CAP_4KB_SPLITTRANS;
	else
		pCap->hw_caps |= ATH9K_HW_CAP_4KB_SPLITTRANS;

	if (FUNC8(ah)) {
		pCap->hw_caps |= ATH9K_HW_CAP_EDMA | ATH9K_HW_CAP_FASTCLOCK;
		if (!FUNC9(ah) && !FUNC13(ah) &&
		    !FUNC15(ah) && !FUNC16(ah))
			pCap->hw_caps |= ATH9K_HW_CAP_LDPC;

		pCap->rx_hp_qdepth = ATH9K_HW_RX_HP_QDEPTH;
		pCap->rx_lp_qdepth = ATH9K_HW_RX_LP_QDEPTH;
		pCap->rx_status_len = sizeof(struct ar9003_rxs);
		pCap->tx_desc_len = sizeof(struct ar9003_txc);
		pCap->txs_len = sizeof(struct ar9003_txs);
	} else {
		pCap->tx_desc_len = sizeof(struct ath_desc);
		if (FUNC4(ah))
			pCap->hw_caps |= ATH9K_HW_CAP_FASTCLOCK;
	}

	if (FUNC8(ah))
		pCap->hw_caps |= ATH9K_HW_CAP_RAC_SUPPORTED;

	if (FUNC15(ah))
		ah->ent_mode = 0x3BDA000;
	else if (FUNC8(ah))
		ah->ent_mode = FUNC20(ah, AR_ENT_OTP);

	if (FUNC7(ah) || FUNC2(ah))
		pCap->hw_caps |= ATH9K_HW_CAP_SGI_20;

	if (FUNC6(ah)) {
		if (ah->eep_ops->get_eeprom(ah, EEP_MODAL_VER) >= 3) {
			ant_div_ctl1 =
				ah->eep_ops->get_eeprom(ah, EEP_ANT_DIV_CTL1);
			if ((ant_div_ctl1 & 0x1) && ((ant_div_ctl1 >> 3) & 0x1)) {
				pCap->hw_caps |= ATH9K_HW_CAP_ANT_DIV_COMB;
				FUNC28(common, "Enable LNA combining\n");
			}
		}
	}

	if (FUNC8(ah)) {
		if (ah->eep_ops->get_eeprom(ah, EEP_CHAIN_MASK_REDUCE))
			pCap->hw_caps |= ATH9K_HW_CAP_APM;
	}

	if (FUNC9(ah) || FUNC13(ah) || FUNC16(ah)) {
		ant_div_ctl1 = ah->eep_ops->get_eeprom(ah, EEP_ANT_DIV_CTL1);
		if ((ant_div_ctl1 >> 0x6) == 0x3) {
			pCap->hw_caps |= ATH9K_HW_CAP_ANT_DIV_COMB;
			FUNC28(common, "Enable LNA combining\n");
		}
	}

	if (FUNC23(ah))
		pCap->hw_caps |= ATH9K_HW_CAP_DFS;

	tx_chainmask = pCap->tx_chainmask;
	rx_chainmask = pCap->rx_chainmask;
	while (tx_chainmask || rx_chainmask) {
		if (tx_chainmask & FUNC18(0))
			pCap->max_txchains++;
		if (rx_chainmask & FUNC18(0))
			pCap->max_rxchains++;

		tx_chainmask >>= 1;
		rx_chainmask >>= 1;
	}

	if (FUNC11(ah) || FUNC16(ah)) {
		if (!(ah->ent_mode & AR_ENT_OTP_49GHZ_DISABLE))
			pCap->hw_caps |= ATH9K_HW_CAP_MCI;

		if (FUNC12(ah))
			pCap->hw_caps |= ATH9K_HW_CAP_RTT;
	}

	if (FUNC8(ah) &&
	    ah->eep_ops->get_eeprom(ah, EEP_PAPRD))
			pCap->hw_caps |= ATH9K_HW_CAP_PAPRD;

#ifdef CONFIG_ATH9K_WOW
	if (AR_SREV_9462_20_OR_LATER(ah) || AR_SREV_9565_11_OR_LATER(ah))
		ah->wow.max_patterns = MAX_NUM_PATTERN;
	else
		ah->wow.max_patterns = MAX_NUM_PATTERN_LEGACY;
#endif

	return 0;
}