#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct nphy_txgains {int dummy; } ;
struct brcms_phy_pub {int dummy; } ;
struct TYPE_15__ {size_t phy_corenum; int radiorev; int /*<<< orphan*/  phy_rev; } ;
struct TYPE_12__ {int extpagain; } ;
struct TYPE_11__ {int extpagain; } ;
struct brcms_phy {int measure_hold; int use_int_tx_iqlo_cal_nphy; int internal_tx_iqlo_cal_tapoff_intpa_nphy; int nphy_crsminpwr_adjusted; int nphy_noisevars_adjusted; int* nphy_papd_epsilon_offset; int nphy_gmval; scalar_t__ nphy_rssical_chanspec_2G; scalar_t__ nphy_rssical_chanspec_5G; scalar_t__ nphy_iqcal_chanspec_2G; scalar_t__ nphy_iqcal_chanspec_5G; scalar_t__ antsel_type; scalar_t__ nphy_perical; scalar_t__ mphase_cal_phase_id; TYPE_6__ pubpi; TYPE_5__* sh; TYPE_4__* nphy_txpwrindex; int /*<<< orphan*/ * nphy_cal_orig_pwr_idx; int /*<<< orphan*/  do_initcal; int /*<<< orphan*/  radio_chanspec; TYPE_3__ srom_fem2g; TYPE_2__ srom_fem5g; int /*<<< orphan*/  nphy_txpwrctrl; int /*<<< orphan*/  n_preamble_override; scalar_t__ nphy_deaf_count; TYPE_7__* d11core; scalar_t__ nphy_gband_spurwar2_en; } ;
typedef  int s32 ;
typedef  size_t s16 ;
struct TYPE_16__ {TYPE_1__* bus; } ;
struct TYPE_14__ {scalar_t__ chippkg; int boardflags; scalar_t__ chip; int boardflags2; int phyrxchain; int /*<<< orphan*/  _rifs_phy; int /*<<< orphan*/  physhim; } ;
struct TYPE_13__ {int /*<<< orphan*/  index_internal; } ;
struct TYPE_10__ {int /*<<< orphan*/  drv_cc; } ;

/* Variables and functions */
 scalar_t__ ANTSEL_2x3 ; 
 int BBCFG_RESETCCA ; 
 int /*<<< orphan*/  BCMA_CC_CHIPCTL ; 
 scalar_t__ BCMA_CHIP_ID_BCM5357 ; 
 scalar_t__ BCMA_PKG_ID_BCM4717 ; 
 scalar_t__ BCMA_PKG_ID_BCM4718 ; 
 int BFL2_INTERNDET_TXIQCAL ; 
 int BFL2_SKWRKFEM_BRD ; 
 int BFL_EXTLNA ; 
 int CCS_FORCEHT ; 
 int CCS_HTAREQ ; 
 int /*<<< orphan*/  CCTRL5357_EXTPA ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct brcms_phy*) ; 
 scalar_t__ MPHASE_CAL_STATE_IDLE ; 
 int /*<<< orphan*/  NPHY_RFSEQ_RESET2RX ; 
 int /*<<< orphan*/  NPHY_RFSEQ_RX2TX ; 
 int /*<<< orphan*/  NPHY_TBL_ID_CORE1TXPWRCTL ; 
 int /*<<< orphan*/  NPHY_TBL_ID_CORE2TXPWRCTL ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  OFF ; 
 int /*<<< orphan*/  ON ; 
 size_t PHY_CORE_0 ; 
 size_t PHY_CORE_1 ; 
 int PHY_HOLD_FOR_NOT_ASSOC ; 
 int PHY_HOLD_FOR_SCAN ; 
 scalar_t__ FUNC9 (struct brcms_phy*) ; 
 scalar_t__ PHY_PERICAL_MPHASE ; 
 scalar_t__ FUNC10 (struct brcms_phy*) ; 
 int /*<<< orphan*/  PHY_PERICAL_PHYINIT ; 
 int /*<<< orphan*/  PHY_TPC_HW_OFF ; 
 int /*<<< orphan*/  FUNC11 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC12 (struct brcms_phy*,int,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_7__*,int /*<<< orphan*/ ,int) ; 
 int FUNC16 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_7__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  clk_ctl_st ; 
 int FUNC18 (struct brcms_phy*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC19 (struct brcms_phy*,int,int,int) ; 
 scalar_t__* nphy_papd_pga_gain_delta_ipa_2g ; 
 scalar_t__* nphy_papd_pga_gain_delta_ipa_5g ; 
 int* nphy_tpc_5GHz_txgain_HiPwrEPA ; 
 int* nphy_tpc_5GHz_txgain_rev3 ; 
 int* nphy_tpc_5GHz_txgain_rev4 ; 
 int* nphy_tpc_5GHz_txgain_rev5 ; 
 int* nphy_tpc_txgain ; 
 int* nphy_tpc_txgain_HiPwrEPA ; 
 int* nphy_tpc_txgain_epa_2057rev3 ; 
 int* nphy_tpc_txgain_epa_2057rev5 ; 
 int* nphy_tpc_txgain_rev3 ; 
 int FUNC20 (struct brcms_phy*,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct brcms_phy_pub*,int) ; 
 int /*<<< orphan*/  FUNC24 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC25 (struct brcms_phy_pub*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct brcms_phy*) ; 
 scalar_t__ FUNC27 (struct brcms_phy*,struct nphy_txgains,int,int) ; 
 scalar_t__ FUNC28 (struct brcms_phy*,struct nphy_txgains,int,int) ; 
 int /*<<< orphan*/  FUNC29 (struct brcms_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (struct brcms_phy*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC31 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC32 (struct brcms_phy*,int /*<<< orphan*/ ) ; 
 int* FUNC33 (struct brcms_phy*) ; 
 struct nphy_txgains FUNC34 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC35 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC36 (struct brcms_phy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC37 (struct brcms_phy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC38 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC39 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC40 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC41 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC42 (struct brcms_phy_pub*,int) ; 
 int /*<<< orphan*/  FUNC43 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC44 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC45 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC46 (struct brcms_phy*,int /*<<< orphan*/ ,int,int,int,int*) ; 
 int /*<<< orphan*/  FUNC47 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC48 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC49 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC50 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC51 (struct brcms_phy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC52 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC53 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC54 (struct brcms_phy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC55 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC56 (struct brcms_phy*,int,int) ; 

void FUNC57(struct brcms_phy *pi)
{
	u16 val;
	u16 clip1_ths[2];
	struct nphy_txgains target_gain;
	u8 tx_pwr_ctrl_state;
	bool do_nphy_cal = false;
	uint core;
	u32 d11_clk_ctl_st;
	bool do_rssi_cal = false;

	core = 0;

	if (!(pi->measure_hold & PHY_HOLD_FOR_SCAN))
		pi->measure_hold |= PHY_HOLD_FOR_NOT_ASSOC;

	if ((FUNC4(pi)) && (FUNC5(pi->pubpi.phy_rev, 5)) &&
	    ((pi->sh->chippkg == BCMA_PKG_ID_BCM4717) ||
	     (pi->sh->chippkg == BCMA_PKG_ID_BCM4718))) {
		if ((pi->sh->boardflags & BFL_EXTLNA) &&
		    (FUNC0(pi->radio_chanspec)))
			FUNC13(&pi->d11core->bus->drv_cc,
				      BCMA_CC_CHIPCTL, 0x40);
	}

	if ((!FUNC9(pi)) && (pi->sh->chip == BCMA_CHIP_ID_BCM5357))
		FUNC14(&pi->d11core->bus->drv_cc, 1,
					    ~CCTRL5357_EXTPA, CCTRL5357_EXTPA);

	if ((pi->nphy_gband_spurwar2_en) && FUNC0(pi->radio_chanspec) &&
	    FUNC1(pi->radio_chanspec)) {

		d11_clk_ctl_st = FUNC16(pi->d11core,
					     FUNC3(clk_ctl_st));
		FUNC15(pi->d11core, FUNC3(clk_ctl_st),
			    ~(CCS_FORCEHT | CCS_HTAREQ));

		FUNC17(pi->d11core, FUNC3(clk_ctl_st),
			     d11_clk_ctl_st);
	}

	pi->use_int_tx_iqlo_cal_nphy =
		(FUNC9(pi) ||
		 (FUNC5(pi->pubpi.phy_rev, 7) ||
		  (FUNC5(pi->pubpi.phy_rev, 5)
		   && pi->sh->boardflags2 & BFL2_INTERNDET_TXIQCAL)));

	pi->internal_tx_iqlo_cal_tapoff_intpa_nphy = false;

	pi->nphy_deaf_count = 0;

	FUNC47(pi);

	pi->nphy_crsminpwr_adjusted = false;
	pi->nphy_noisevars_adjusted = false;

	if (FUNC5(pi->pubpi.phy_rev, 3)) {
		FUNC56(pi, 0xe7, 0);
		FUNC56(pi, 0xec, 0);
		if (FUNC5(pi->pubpi.phy_rev, 7)) {
			FUNC56(pi, 0x342, 0);
			FUNC56(pi, 0x343, 0);
			FUNC56(pi, 0x346, 0);
			FUNC56(pi, 0x347, 0);
		}
		FUNC56(pi, 0xe5, 0);
		FUNC56(pi, 0xe6, 0);
	} else {
		FUNC56(pi, 0xec, 0);
	}

	FUNC56(pi, 0x91, 0);
	FUNC56(pi, 0x92, 0);
	if (FUNC8(pi->pubpi.phy_rev, 6)) {
		FUNC56(pi, 0x93, 0);
		FUNC56(pi, 0x94, 0);
	}

	FUNC12(pi, 0xa1, ~3);

	if (FUNC5(pi->pubpi.phy_rev, 3)) {
		FUNC56(pi, 0x8f, 0);
		FUNC56(pi, 0xa5, 0);
	} else {
		FUNC56(pi, 0xa5, 0);
	}

	if (FUNC6(pi->pubpi.phy_rev, 2))
		FUNC19(pi, 0xdc, 0x00ff, 0x3b);
	else if (FUNC8(pi->pubpi.phy_rev, 2))
		FUNC19(pi, 0xdc, 0x00ff, 0x40);

	FUNC56(pi, 0x203, 32);
	FUNC56(pi, 0x201, 32);

	if (pi->sh->boardflags2 & BFL2_SKWRKFEM_BRD)
		FUNC56(pi, 0x20d, 160);
	else
		FUNC56(pi, 0x20d, 184);

	FUNC56(pi, 0x13a, 200);

	FUNC56(pi, 0x70, 80);

	FUNC56(pi, 0x1ff, 48);

	if (FUNC8(pi->pubpi.phy_rev, 8))
		FUNC54(pi, pi->n_preamble_override);

	FUNC45(pi);

	if (FUNC8(pi->pubpi.phy_rev, 2)) {
		FUNC56(pi, 0x180, 0xaa8);
		FUNC56(pi, 0x181, 0x9a4);
	}

	if (FUNC9(pi)) {
		for (core = 0; core < pi->pubpi.phy_corenum; core++) {

			FUNC19(pi, (core == PHY_CORE_0) ? 0x297 :
				    0x29b, (0x1 << 0), (1) << 0);

			FUNC19(pi, (core == PHY_CORE_0) ? 0x298 :
				    0x29c, (0x1ff << 7),
				    (pi->nphy_papd_epsilon_offset[core]) << 7);

		}

		FUNC35(pi);
	} else if (FUNC5(pi->pubpi.phy_rev, 5)) {
		FUNC31(pi);
	}

	FUNC55(pi);

	FUNC22(pi->sh->physhim, ON);

	val = FUNC20(pi, 0x01);
	FUNC56(pi, 0x01, val | BBCFG_RESETCCA);
	FUNC56(pi, 0x01, val & (~BBCFG_RESETCCA));
	FUNC22(pi->sh->physhim, OFF);

	FUNC21(pi->sh->physhim, ON);

	FUNC37(pi, OFF);
	FUNC32(pi, NPHY_RFSEQ_RX2TX);
	FUNC32(pi, NPHY_RFSEQ_RESET2RX);
	FUNC37(pi, ON);

	FUNC29(pi, 0, 0);
	FUNC30(pi, 0, clip1_ths);

	if (FUNC0(pi->radio_chanspec))
		FUNC24(pi);

	tx_pwr_ctrl_state = pi->nphy_txpwrctrl;
	FUNC51(pi, PHY_TPC_HW_OFF);

	FUNC49(pi);

	FUNC52(pi);

	FUNC53(pi);

	if (FUNC5(pi->pubpi.phy_rev, 3)) {
		u32 *tx_pwrctrl_tbl = NULL;
		u16 idx;
		s16 pga_gn = 0;
		s16 pad_gn = 0;
		s32 rfpwr_offset;

		if (FUNC9(pi)) {
			tx_pwrctrl_tbl = FUNC33(pi);
		} else {
			if (FUNC2(pi->radio_chanspec)) {
				if (FUNC6(pi->pubpi.phy_rev, 3))
					tx_pwrctrl_tbl =
						nphy_tpc_5GHz_txgain_rev3;
				else if (FUNC6(pi->pubpi.phy_rev, 4))
					tx_pwrctrl_tbl =
						(pi->srom_fem5g.extpagain ==
						 3) ?
						nphy_tpc_5GHz_txgain_HiPwrEPA :
						nphy_tpc_5GHz_txgain_rev4;
				else
					tx_pwrctrl_tbl =
						nphy_tpc_5GHz_txgain_rev5;
			} else {
				if (FUNC5(pi->pubpi.phy_rev, 7)) {
					if (pi->pubpi.radiorev == 5)
						tx_pwrctrl_tbl =
						   nphy_tpc_txgain_epa_2057rev5;
					else if (pi->pubpi.radiorev == 3)
						tx_pwrctrl_tbl =
						   nphy_tpc_txgain_epa_2057rev3;
				} else {
					if (FUNC5(pi->pubpi.phy_rev, 5) &&
					    (pi->srom_fem2g.extpagain == 3))
						tx_pwrctrl_tbl =
						       nphy_tpc_txgain_HiPwrEPA;
					else
						tx_pwrctrl_tbl =
							nphy_tpc_txgain_rev3;
				}
			}
		}

		FUNC46(pi, NPHY_TBL_ID_CORE1TXPWRCTL, 128,
					 192, 32, tx_pwrctrl_tbl);
		FUNC46(pi, NPHY_TBL_ID_CORE2TXPWRCTL, 128,
					 192, 32, tx_pwrctrl_tbl);

		pi->nphy_gmval = (u16) ((*tx_pwrctrl_tbl >> 16) & 0x7000);

		if (FUNC5(pi->pubpi.phy_rev, 7)) {

			for (idx = 0; idx < 128; idx++) {
				pga_gn = (tx_pwrctrl_tbl[idx] >> 24) & 0xf;
				pad_gn = (tx_pwrctrl_tbl[idx] >> 19) & 0x1f;
				rfpwr_offset = FUNC18(pi, pga_gn,
								 pad_gn);
				FUNC46(
					pi,
					NPHY_TBL_ID_CORE1TXPWRCTL,
					1, 576 + idx, 32,
					&rfpwr_offset);
				FUNC46(
					pi,
					NPHY_TBL_ID_CORE2TXPWRCTL,
					1, 576 + idx, 32,
					&rfpwr_offset);
			}
		} else {

			for (idx = 0; idx < 128; idx++) {
				pga_gn = (tx_pwrctrl_tbl[idx] >> 24) & 0xf;
				if (FUNC0(pi->radio_chanspec))
					rfpwr_offset = (s16)
						 nphy_papd_pga_gain_delta_ipa_2g
								       [pga_gn];
				else
					rfpwr_offset = (s16)
						 nphy_papd_pga_gain_delta_ipa_5g
								       [pga_gn];

				FUNC46(
					pi,
					NPHY_TBL_ID_CORE1TXPWRCTL,
					1, 576 + idx, 32,
					&rfpwr_offset);
				FUNC46(
					pi,
					NPHY_TBL_ID_CORE2TXPWRCTL,
					1, 576 + idx, 32,
					&rfpwr_offset);
			}

		}
	} else {

		FUNC46(pi, NPHY_TBL_ID_CORE1TXPWRCTL, 128,
					 192, 32, nphy_tpc_txgain);
		FUNC46(pi, NPHY_TBL_ID_CORE2TXPWRCTL, 128,
					 192, 32, nphy_tpc_txgain);
	}

	if (pi->sh->phyrxchain != 0x3)
		FUNC42((struct brcms_phy_pub *) pi,
					     pi->sh->phyrxchain);

	if (FUNC10(pi))
		FUNC26(pi);

	if (FUNC5(pi->pubpi.phy_rev, 3)) {
		do_rssi_cal = (FUNC0(pi->radio_chanspec)) ?
			      (pi->nphy_rssical_chanspec_2G == 0) :
			      (pi->nphy_rssical_chanspec_5G == 0);

		if (do_rssi_cal)
			FUNC41(pi);
		else
			FUNC39(pi);
	} else {
		FUNC41(pi);
	}

	if (!FUNC11(pi))
		do_nphy_cal = (FUNC0(pi->radio_chanspec)) ?
			      (pi->nphy_iqcal_chanspec_2G == 0) :
			      (pi->nphy_iqcal_chanspec_5G == 0);

	if (!pi->do_initcal)
		do_nphy_cal = false;

	if (do_nphy_cal) {

		target_gain = FUNC34(pi);

		if (pi->antsel_type == ANTSEL_2x3)
			FUNC23((struct brcms_phy_pub *) pi,
					    true);

		if (pi->nphy_perical != PHY_PERICAL_MPHASE) {
			FUNC41(pi);

			if (FUNC5(pi->pubpi.phy_rev, 3)) {
				pi->nphy_cal_orig_pwr_idx[0] =
					pi->nphy_txpwrindex[PHY_CORE_0]
					.
					index_internal;
				pi->nphy_cal_orig_pwr_idx[1] =
					pi->nphy_txpwrindex[PHY_CORE_1]
					.
					index_internal;

				FUNC38(pi);
				target_gain =
					FUNC34(pi);
			}

			if (FUNC28
				    (pi, target_gain, true,
				    false) == 0) {
				if (FUNC27
					    (pi, target_gain, 2,
					    false) == 0)
					FUNC43(pi);

			}
		} else if (pi->mphase_cal_phase_id ==
			   MPHASE_CAL_STATE_IDLE) {
			FUNC25((struct brcms_phy_pub *) pi,
					    PHY_PERICAL_PHYINIT);
		}
	} else {
		FUNC40(pi);
	}

	FUNC50(pi);

	FUNC51(pi, tx_pwr_ctrl_state);

	FUNC36(pi, pi->sh->_rifs_phy);

	if (FUNC5(pi->pubpi.phy_rev, 3) && FUNC7(pi->pubpi.phy_rev, 6))

		FUNC56(pi, 0x70, 50);

	FUNC48(pi);

	FUNC44(pi);

}