#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_7__ {int /*<<< orphan*/  phy_rev; } ;
struct TYPE_6__ {int pdetrange; int triso; } ;
struct TYPE_5__ {int pdetrange; int triso; } ;
struct brcms_phy {TYPE_4__* sh; TYPE_3__ pubpi; int /*<<< orphan*/  edcrs_threshold_lock; int /*<<< orphan*/  radio_chanspec; TYPE_2__ srom_fem2g; TYPE_1__ srom_fem5g; } ;
typedef  int s32 ;
typedef  int s16 ;
struct TYPE_8__ {int hw_phyrxchain; int hw_phytxchain; int boardflags2; int /*<<< orphan*/  physhim; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int const*) ; 
 int BFL2_APLL_WAR ; 
 int BFL2_GPLL_WAR ; 
 int BFL2_GPLL_WAR2 ; 
 int BFL2_SINGLEANT_CCK ; 
 int /*<<< orphan*/  BRCM_BAND_ALL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MHF4 ; 
 int /*<<< orphan*/  MHF4_BPHY_TXCORE0 ; 
#define  NPHY_REV3_RFSEQ_CMD_CLR_HIQ_DIS 140 
#define  NPHY_REV3_RFSEQ_CMD_CLR_RXRX_BIAS 139 
#define  NPHY_REV3_RFSEQ_CMD_END 138 
#define  NPHY_REV3_RFSEQ_CMD_EXT_PA 137 
#define  NPHY_REV3_RFSEQ_CMD_INT_PA_PU 136 
#define  NPHY_REV3_RFSEQ_CMD_NOP 135 
#define  NPHY_REV3_RFSEQ_CMD_RXG_FBW 134 
#define  NPHY_REV3_RFSEQ_CMD_RXPD_TXPD 133 
#define  NPHY_REV3_RFSEQ_CMD_TR_SWITCH 132 
#define  NPHY_REV3_RFSEQ_CMD_TX_GAIN 131 
 int /*<<< orphan*/  NPHY_RFSEQ_RX2TX ; 
 int /*<<< orphan*/  NPHY_RFSEQ_TX2RX ; 
 int /*<<< orphan*/  NPHY_TBL_ID_AFECTRL ; 
 int /*<<< orphan*/  NPHY_TBL_ID_CMPMETRICDATAWEIGHTTBL ; 
 int /*<<< orphan*/  NPHY_TBL_ID_NOISEVAR ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PHY_CORE_0 ; 
 int /*<<< orphan*/  PHY_CORE_1 ; 
 scalar_t__ FUNC6 (struct brcms_phy*) ; 
 int RADIO_2056_RX0 ; 
 int RADIO_2056_RX1 ; 
 int RADIO_2056_RX_MIXA_BIAS_AUX ; 
 int RADIO_2056_RX_MIXA_BIAS_MAIN ; 
 int RADIO_2056_RX_MIXA_CMFB_IDAC ; 
 int RADIO_2056_RX_MIXA_LOB_BIAS ; 
 int RADIO_2056_RX_MIXA_MAST_BIAS ; 
 int RADIO_2056_RX_MIXG_CMFB_IDAC ; 
 int RADIO_2056_TX0 ; 
 int RADIO_2056_TX1 ; 
 int RADIO_2056_TX_GMBB_IDAC ; 
 int WL_CHAN_FREQ_RANGE_2G ; 
#define  WL_CHAN_FREQ_RANGE_5GH 130 
#define  WL_CHAN_FREQ_RANGE_5GL 129 
#define  WL_CHAN_FREQ_RANGE_5GM 128 
 int /*<<< orphan*/  FUNC7 (struct brcms_phy*,int,int,int) ; 
 int* noise_var_tbl_rev3 ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct brcms_phy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct brcms_phy*,int /*<<< orphan*/ ,int const*,int const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct brcms_phy*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC12 (struct brcms_phy*,int /*<<< orphan*/ ,int,int,int,int const*) ; 
 int /*<<< orphan*/  FUNC13 (struct brcms_phy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct brcms_phy*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC16 (struct brcms_phy*,int,int) ; 
 int /*<<< orphan*/  FUNC17 (struct brcms_phy*,int,int) ; 

__attribute__((used)) static void FUNC18(struct brcms_phy *pi)
{
	static const u8 rfseq_tx2rx_events_rev3[] = {
		NPHY_REV3_RFSEQ_CMD_EXT_PA,
		NPHY_REV3_RFSEQ_CMD_INT_PA_PU,
		NPHY_REV3_RFSEQ_CMD_TX_GAIN,
		NPHY_REV3_RFSEQ_CMD_RXPD_TXPD,
		NPHY_REV3_RFSEQ_CMD_TR_SWITCH,
		NPHY_REV3_RFSEQ_CMD_RXG_FBW,
		NPHY_REV3_RFSEQ_CMD_CLR_HIQ_DIS,
		NPHY_REV3_RFSEQ_CMD_END
	};
	static const u8 rfseq_tx2rx_dlys_rev3[] = { 8, 4, 2, 2, 4, 4, 6, 1 };
	u8 rfseq_rx2tx_events_rev3[] = {
		NPHY_REV3_RFSEQ_CMD_NOP,
		NPHY_REV3_RFSEQ_CMD_RXG_FBW,
		NPHY_REV3_RFSEQ_CMD_TR_SWITCH,
		NPHY_REV3_RFSEQ_CMD_CLR_HIQ_DIS,
		NPHY_REV3_RFSEQ_CMD_RXPD_TXPD,
		NPHY_REV3_RFSEQ_CMD_TX_GAIN,
		NPHY_REV3_RFSEQ_CMD_INT_PA_PU,
		NPHY_REV3_RFSEQ_CMD_EXT_PA,
		NPHY_REV3_RFSEQ_CMD_END
	};
	u8 rfseq_rx2tx_dlys_rev3[] = { 8, 6, 6, 4, 4, 18, 42, 1, 1 };
	static const u8 rfseq_rx2tx_events_rev3_ipa[] = {
		NPHY_REV3_RFSEQ_CMD_NOP,
		NPHY_REV3_RFSEQ_CMD_RXG_FBW,
		NPHY_REV3_RFSEQ_CMD_TR_SWITCH,
		NPHY_REV3_RFSEQ_CMD_CLR_HIQ_DIS,
		NPHY_REV3_RFSEQ_CMD_RXPD_TXPD,
		NPHY_REV3_RFSEQ_CMD_TX_GAIN,
		NPHY_REV3_RFSEQ_CMD_CLR_RXRX_BIAS,
		NPHY_REV3_RFSEQ_CMD_INT_PA_PU,
		NPHY_REV3_RFSEQ_CMD_END
	};
	static const u8 rfseq_rx2tx_dlys_rev3_ipa[] =
	    { 8, 6, 6, 4, 4, 16, 43, 1, 1 };
	s16 alpha0, alpha1, alpha2;
	s16 beta0, beta1, beta2;
	u32 leg_data_weights, ht_data_weights, nss1_data_weights,
	    stbc_data_weights;
	u8 chan_freq_range = 0;
	static const u16 dac_control = 0x0002;
	u16 aux_adc_vmid_rev4[] = { 0xa2, 0xb4, 0xb4, 0x89 };
	u16 aux_adc_vmid_rev3[] = { 0xa2, 0xb4, 0xb4, 0x89 };
	u16 *aux_adc_vmid;
	u16 aux_adc_gain_rev4[] = { 0x02, 0x02, 0x02, 0x00 };
	u16 aux_adc_gain_rev3[] = { 0x02, 0x02, 0x02, 0x00 };
	u16 *aux_adc_gain;
	static const u16 sk_adc_vmid[] = { 0xb4, 0xb4, 0xb4, 0x24 };
	static const u16 sk_adc_gain[] = { 0x02, 0x02, 0x02, 0x02 };
	s32 min_nvar_val = 0x18d;
	u8 pdetrange;
	u8 triso;

	FUNC16(pi, 0x23f, 0x1f8);
	FUNC16(pi, 0x240, 0x1f8);

	FUNC11(pi, NPHY_TBL_ID_CMPMETRICDATAWEIGHTTBL,
				1, 0, 32, &leg_data_weights);
	leg_data_weights = leg_data_weights & 0xffffff;
	FUNC12(pi, NPHY_TBL_ID_CMPMETRICDATAWEIGHTTBL,
				 1, 0, 32, &leg_data_weights);

	alpha0 = 293;
	alpha1 = 435;
	alpha2 = 261;
	beta0 = 366;
	beta1 = 205;
	beta2 = 32;
	FUNC16(pi, 0x145, alpha0);
	FUNC16(pi, 0x146, alpha1);
	FUNC16(pi, 0x147, alpha2);
	FUNC16(pi, 0x148, beta0);
	FUNC16(pi, 0x149, beta1);
	FUNC16(pi, 0x14a, beta2);

	FUNC16(pi, 0x38, 0xC);
	FUNC16(pi, 0x2ae, 0xC);

	FUNC10(pi, NPHY_RFSEQ_TX2RX,
			       rfseq_tx2rx_events_rev3,
			       rfseq_tx2rx_dlys_rev3,
			       FUNC0(rfseq_tx2rx_events_rev3));

	if (FUNC6(pi))
		FUNC10(pi, NPHY_RFSEQ_RX2TX,
				       rfseq_rx2tx_events_rev3_ipa,
				       rfseq_rx2tx_dlys_rev3_ipa,
				       FUNC0 (rfseq_rx2tx_events_rev3_ipa));

	if ((pi->sh->hw_phyrxchain != 0x3) &&
	    (pi->sh->hw_phyrxchain != pi->sh->hw_phytxchain)) {

		if (FUNC6(pi)) {
			rfseq_rx2tx_dlys_rev3[5] = 59;
			rfseq_rx2tx_dlys_rev3[6] = 1;
			rfseq_rx2tx_events_rev3[7] = NPHY_REV3_RFSEQ_CMD_END;
		}

		FUNC10(pi, NPHY_RFSEQ_RX2TX,
				       rfseq_rx2tx_events_rev3,
				       rfseq_rx2tx_dlys_rev3,
				       FUNC0 (rfseq_rx2tx_events_rev3));
	}

	if (FUNC1(pi->radio_chanspec))
		FUNC16(pi, 0x6a, 0x2);
	else
		FUNC16(pi, 0x6a, 0x9c40);

	FUNC7(pi, 0x294, (0xf << 8), (7 << 8));

	if (FUNC2(pi->radio_chanspec) == 0) {
		FUNC12(pi, NPHY_TBL_ID_NOISEVAR, 1, 3,
					 32, &min_nvar_val);
		FUNC12(pi, NPHY_TBL_ID_NOISEVAR, 1,
					 127, 32, &min_nvar_val);
	} else {
		min_nvar_val = noise_var_tbl_rev3[3];
		FUNC12(pi, NPHY_TBL_ID_NOISEVAR, 1, 3,
					 32, &min_nvar_val);

		min_nvar_val = noise_var_tbl_rev3[127];
		FUNC12(pi, NPHY_TBL_ID_NOISEVAR, 1,
					 127, 32, &min_nvar_val);
	}

	FUNC15(pi);

	FUNC12(pi, NPHY_TBL_ID_AFECTRL, 1, 0x00, 16,
				 &dac_control);
	FUNC12(pi, NPHY_TBL_ID_AFECTRL, 1, 0x10, 16,
				 &dac_control);

	pdetrange = (FUNC3(pi->radio_chanspec)) ?
			pi->srom_fem5g.pdetrange : pi->srom_fem2g.pdetrange;

	if (pdetrange == 0) {
		if (FUNC4(pi->pubpi.phy_rev, 4)) {
			aux_adc_vmid = aux_adc_vmid_rev4;
			aux_adc_gain = aux_adc_gain_rev4;
		} else {
			aux_adc_vmid = aux_adc_vmid_rev3;
			aux_adc_gain = aux_adc_gain_rev3;
		}
		chan_freq_range = FUNC9(pi, 0);
		if (chan_freq_range != WL_CHAN_FREQ_RANGE_2G) {
			switch (chan_freq_range) {
			case WL_CHAN_FREQ_RANGE_5GL:
				aux_adc_vmid[3] = 0x89;
				aux_adc_gain[3] = 0;
				break;
			case WL_CHAN_FREQ_RANGE_5GM:
				aux_adc_vmid[3] = 0x89;
				aux_adc_gain[3] = 0;
				break;
			case WL_CHAN_FREQ_RANGE_5GH:
				aux_adc_vmid[3] = 0x89;
				aux_adc_gain[3] = 0;
				break;
			default:
				break;
			}
		}
		FUNC12(pi, NPHY_TBL_ID_AFECTRL, 4,
					 0x08, 16, aux_adc_vmid);
		FUNC12(pi, NPHY_TBL_ID_AFECTRL, 4,
					 0x18, 16, aux_adc_vmid);
		FUNC12(pi, NPHY_TBL_ID_AFECTRL, 4,
					 0x0c, 16, aux_adc_gain);
		FUNC12(pi, NPHY_TBL_ID_AFECTRL, 4,
					 0x1c, 16, aux_adc_gain);
	} else if (pdetrange == 1) {
		FUNC12(pi, NPHY_TBL_ID_AFECTRL, 4,
					 0x08, 16, sk_adc_vmid);
		FUNC12(pi, NPHY_TBL_ID_AFECTRL, 4,
					 0x18, 16, sk_adc_vmid);
		FUNC12(pi, NPHY_TBL_ID_AFECTRL, 4,
					 0x0c, 16, sk_adc_gain);
		FUNC12(pi, NPHY_TBL_ID_AFECTRL, 4,
					 0x1c, 16, sk_adc_gain);
	} else if (pdetrange == 2) {

		u16 bcm_adc_vmid[] = { 0xa2, 0xb4, 0xb4, 0x74 };
		u16 bcm_adc_gain[] = { 0x02, 0x02, 0x02, 0x04 };

		if (FUNC4(pi->pubpi.phy_rev, 6)) {
			chan_freq_range =
			    FUNC9(pi, 0);
			if (chan_freq_range != WL_CHAN_FREQ_RANGE_2G) {
				bcm_adc_vmid[3] = 0x8e;
				bcm_adc_gain[3] = 0x03;
			} else {
				bcm_adc_vmid[3] = 0x94;
				bcm_adc_gain[3] = 0x03;
			}
		} else if (FUNC5(pi->pubpi.phy_rev, 5)) {
			bcm_adc_vmid[3] = 0x84;
			bcm_adc_gain[3] = 0x02;
		}

		FUNC12(pi, NPHY_TBL_ID_AFECTRL, 4,
					 0x08, 16, bcm_adc_vmid);
		FUNC12(pi, NPHY_TBL_ID_AFECTRL, 4,
					 0x18, 16, bcm_adc_vmid);
		FUNC12(pi, NPHY_TBL_ID_AFECTRL, 4,
					 0x0c, 16, bcm_adc_gain);
		FUNC12(pi, NPHY_TBL_ID_AFECTRL, 4,
					 0x1c, 16, bcm_adc_gain);
	} else if (pdetrange == 3) {
		chan_freq_range = FUNC9(pi, 0);
		if ((FUNC4(pi->pubpi.phy_rev, 4)) &&
		    (chan_freq_range == WL_CHAN_FREQ_RANGE_2G)) {
			u16 auxadc_vmid[] = { 0xa2, 0xb4, 0xb4, 0x270 };
			u16 auxadc_gain[] = { 0x02, 0x02, 0x02, 0x00 };

			FUNC12(pi, NPHY_TBL_ID_AFECTRL, 4,
						 0x08, 16, auxadc_vmid);
			FUNC12(pi, NPHY_TBL_ID_AFECTRL, 4,
						 0x18, 16, auxadc_vmid);
			FUNC12(pi, NPHY_TBL_ID_AFECTRL, 4,
						 0x0c, 16, auxadc_gain);
			FUNC12(pi, NPHY_TBL_ID_AFECTRL, 4,
						 0x1c, 16, auxadc_gain);
		}
	} else if ((pdetrange == 4) || (pdetrange == 5)) {
		u16 bcm_adc_vmid[] = { 0xa2, 0xb4, 0xb4, 0x0 };
		u16 bcm_adc_gain[] = { 0x02, 0x02, 0x02, 0x0 };
		u16 Vmid[2], Av[2];

		chan_freq_range = FUNC9(pi, 0);
		if (chan_freq_range != WL_CHAN_FREQ_RANGE_2G) {
			Vmid[0] = (pdetrange == 4) ? 0x8e : 0x89;
			Vmid[1] = (pdetrange == 4) ? 0x96 : 0x89;
			Av[0] = (pdetrange == 4) ? 2 : 0;
			Av[1] = (pdetrange == 4) ? 2 : 0;
		} else {
			Vmid[0] = (pdetrange == 4) ? 0x89 : 0x74;
			Vmid[1] = (pdetrange == 4) ? 0x8b : 0x70;
			Av[0] = (pdetrange == 4) ? 2 : 0;
			Av[1] = (pdetrange == 4) ? 2 : 0;
		}

		bcm_adc_vmid[3] = Vmid[0];
		bcm_adc_gain[3] = Av[0];
		FUNC12(pi, NPHY_TBL_ID_AFECTRL, 4,
					 0x08, 16, bcm_adc_vmid);
		FUNC12(pi, NPHY_TBL_ID_AFECTRL, 4,
					 0x0c, 16, bcm_adc_gain);

		bcm_adc_vmid[3] = Vmid[1];
		bcm_adc_gain[3] = Av[1];
		FUNC12(pi, NPHY_TBL_ID_AFECTRL, 4,
					 0x18, 16, bcm_adc_vmid);
		FUNC12(pi, NPHY_TBL_ID_AFECTRL, 4,
					 0x1c, 16, bcm_adc_gain);
	}

	FUNC17(pi, (RADIO_2056_RX_MIXA_MAST_BIAS | RADIO_2056_RX0), 0x0);
	FUNC17(pi, (RADIO_2056_RX_MIXA_MAST_BIAS | RADIO_2056_RX1), 0x0);

	FUNC17(pi, (RADIO_2056_RX_MIXA_BIAS_MAIN | RADIO_2056_RX0), 0x6);
	FUNC17(pi, (RADIO_2056_RX_MIXA_BIAS_MAIN | RADIO_2056_RX1), 0x6);

	FUNC17(pi, (RADIO_2056_RX_MIXA_BIAS_AUX | RADIO_2056_RX0), 0x7);
	FUNC17(pi, (RADIO_2056_RX_MIXA_BIAS_AUX | RADIO_2056_RX1), 0x7);

	FUNC17(pi, (RADIO_2056_RX_MIXA_LOB_BIAS | RADIO_2056_RX0), 0x88);
	FUNC17(pi, (RADIO_2056_RX_MIXA_LOB_BIAS | RADIO_2056_RX1), 0x88);

	FUNC17(pi, (RADIO_2056_RX_MIXA_CMFB_IDAC | RADIO_2056_RX0), 0x0);
	FUNC17(pi, (RADIO_2056_RX_MIXA_CMFB_IDAC | RADIO_2056_RX1), 0x0);

	FUNC17(pi, (RADIO_2056_RX_MIXG_CMFB_IDAC | RADIO_2056_RX0), 0x0);
	FUNC17(pi, (RADIO_2056_RX_MIXG_CMFB_IDAC | RADIO_2056_RX1), 0x0);

	triso = (FUNC3(pi->radio_chanspec)) ?
		 pi->srom_fem5g.triso : pi->srom_fem2g.triso;
	if (triso == 7) {
		FUNC13(pi, PHY_CORE_0);
		FUNC13(pi, PHY_CORE_1);
	}

	FUNC14(pi, pi->sh->hw_phytxchain);

	if (((pi->sh->boardflags2 & BFL2_APLL_WAR) &&
	     (FUNC3(pi->radio_chanspec))) ||
	    (((pi->sh->boardflags2 & BFL2_GPLL_WAR) ||
	      (pi->sh->boardflags2 & BFL2_GPLL_WAR2)) &&
	     (FUNC1(pi->radio_chanspec)))) {
		nss1_data_weights = 0x00088888;
		ht_data_weights = 0x00088888;
		stbc_data_weights = 0x00088888;
	} else {
		nss1_data_weights = 0x88888888;
		ht_data_weights = 0x88888888;
		stbc_data_weights = 0x88888888;
	}
	FUNC12(pi, NPHY_TBL_ID_CMPMETRICDATAWEIGHTTBL,
				 1, 1, 32, &nss1_data_weights);
	FUNC12(pi, NPHY_TBL_ID_CMPMETRICDATAWEIGHTTBL,
				 1, 2, 32, &ht_data_weights);
	FUNC12(pi, NPHY_TBL_ID_CMPMETRICDATAWEIGHTTBL,
				 1, 3, 32, &stbc_data_weights);

	if (FUNC5(pi->pubpi.phy_rev, 4)) {
		if (FUNC3(pi->radio_chanspec)) {
			FUNC17(pi,
					RADIO_2056_TX_GMBB_IDAC |
					RADIO_2056_TX0, 0x70);
			FUNC17(pi,
					RADIO_2056_TX_GMBB_IDAC |
					RADIO_2056_TX1, 0x70);
		}
	}

	if (!pi->edcrs_threshold_lock) {
		FUNC16(pi, 0x224, 0x3eb);
		FUNC16(pi, 0x225, 0x3eb);
		FUNC16(pi, 0x226, 0x341);
		FUNC16(pi, 0x227, 0x341);
		FUNC16(pi, 0x228, 0x42b);
		FUNC16(pi, 0x229, 0x42b);
		FUNC16(pi, 0x22a, 0x381);
		FUNC16(pi, 0x22b, 0x381);
		FUNC16(pi, 0x22c, 0x42b);
		FUNC16(pi, 0x22d, 0x42b);
		FUNC16(pi, 0x22e, 0x381);
		FUNC16(pi, 0x22f, 0x381);
	}

	if (FUNC4(pi->pubpi.phy_rev, 6)) {

		if (pi->sh->boardflags2 & BFL2_SINGLEANT_CCK)
			FUNC8(pi->sh->physhim, MHF4,
				       MHF4_BPHY_TXCORE0,
				       MHF4_BPHY_TXCORE0, BRCM_BAND_ALL);
	}
}