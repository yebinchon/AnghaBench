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
typedef  int uint ;
typedef  int u8 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_8__ {int /*<<< orphan*/  phy_rev; } ;
struct TYPE_6__ {scalar_t__ tssipos; } ;
struct brcms_phy {int* adj_pwr_tbl_nphy; scalar_t__ phyhang_avoid; TYPE_4__ pubpi; TYPE_3__* sh; int /*<<< orphan*/  d11core; int /*<<< orphan*/  radio_chanspec; TYPE_2__ srom_fem2g; scalar_t__ tx_power_max; TYPE_1__* nphy_pwrctrl_info; } ;
typedef  int s8 ;
typedef  int s32 ;
typedef  int s16 ;
struct TYPE_7__ {int sromrev; int /*<<< orphan*/  physhim; int /*<<< orphan*/  corerev; } ;
struct TYPE_5__ {int idle_tssi_2g; int pwrdet_2g_a1; int pwrdet_2g_b0; int pwrdet_2g_b1; int idle_tssi_5g; int pwrdet_5gl_a1; int pwrdet_5gl_b0; int pwrdet_5gl_b1; int pwrdet_5gm_a1; int pwrdet_5gm_b0; int pwrdet_5gm_b1; int pwrdet_5gh_a1; int pwrdet_5gh_b0; int pwrdet_5gh_b1; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int,int) ; 
 int /*<<< orphan*/  MCTL_PHYLOCK ; 
 int NPHY_TBL_ID_CORE1TXPWRCTL ; 
 int NPHY_TBL_ID_CORE2TXPWRCTL ; 
 int NPHY_TxPwrCtrlCmd_pwrIndex_init ; 
 int NPHY_TxPwrCtrlCmd_pwrIndex_init_rev7 ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (struct brcms_phy*) ; 
 int RADIO_2056_TX0 ; 
 int RADIO_2056_TX1 ; 
 int RADIO_2056_TX_TX_SSI_MUX ; 
 int /*<<< orphan*/  RADIO_2057 ; 
 int /*<<< orphan*/  TX ; 
 int /*<<< orphan*/  TX_SSI_MUX ; 
#define  WL_CHAN_FREQ_RANGE_2G 131 
#define  WL_CHAN_FREQ_RANGE_5GH 130 
#define  WL_CHAN_FREQ_RANGE_5GL 129 
#define  WL_CHAN_FREQ_RANGE_5GM 128 
 int /*<<< orphan*/  FUNC9 (struct brcms_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct brcms_phy*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  maccontrol ; 
 int FUNC12 (int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct brcms_phy*,int,int,int) ; 
 int /*<<< orphan*/  FUNC14 (struct brcms_phy*,int,int) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC17 (struct brcms_phy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct brcms_phy*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct brcms_phy*,int,int,int,int,int*) ; 
 int /*<<< orphan*/  FUNC20 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC21 (struct brcms_phy*,int,int) ; 
 int /*<<< orphan*/  FUNC22 (struct brcms_phy*,int,int) ; 

__attribute__((used)) static void FUNC23(struct brcms_phy *pi)
{
	u32 idx;
	s16 a1[2], b0[2], b1[2];
	s8 target_pwr_qtrdbm[2];
	s32 num, den, pwr_est;
	u8 chan_freq_range;
	u8 idle_tssi[2];
	u32 tbl_id, tbl_len, tbl_offset;
	u32 regval[64];
	u8 core;

	if (FUNC3(pi->sh->corerev, 11) || FUNC3(pi->sh->corerev, 12)) {
		FUNC16(pi->sh->physhim, MCTL_PHYLOCK, MCTL_PHYLOCK);
		(void)FUNC11(pi->d11core, FUNC2(maccontrol));
		FUNC15(1);
	}

	if (pi->phyhang_avoid)
		FUNC18(pi, true);

	FUNC14(pi, 0x122, (0x1 << 0));

	if (FUNC5(pi->pubpi.phy_rev, 3))
		FUNC10(pi, 0x1e7, (u16) (~(0x1 << 15)));
	else
		FUNC14(pi, 0x1e7, (0x1 << 15));

	if (FUNC3(pi->sh->corerev, 11) || FUNC3(pi->sh->corerev, 12))
		FUNC16(pi->sh->physhim, MCTL_PHYLOCK, 0);

	if (pi->sh->sromrev < 4) {
		idle_tssi[0] = pi->nphy_pwrctrl_info[0].idle_tssi_2g;
		idle_tssi[1] = pi->nphy_pwrctrl_info[1].idle_tssi_2g;
		a1[0] = -424;
		a1[1] = -424;
		b0[0] = 5612;
		b0[1] = 5612;
		b1[1] = -1393;
		b1[0] = -1393;
	} else {

		chan_freq_range = FUNC17(pi, 0);
		switch (chan_freq_range) {
		case WL_CHAN_FREQ_RANGE_2G:
			idle_tssi[0] = pi->nphy_pwrctrl_info[0].idle_tssi_2g;
			idle_tssi[1] = pi->nphy_pwrctrl_info[1].idle_tssi_2g;
			a1[0] = pi->nphy_pwrctrl_info[0].pwrdet_2g_a1;
			a1[1] = pi->nphy_pwrctrl_info[1].pwrdet_2g_a1;
			b0[0] = pi->nphy_pwrctrl_info[0].pwrdet_2g_b0;
			b0[1] = pi->nphy_pwrctrl_info[1].pwrdet_2g_b0;
			b1[0] = pi->nphy_pwrctrl_info[0].pwrdet_2g_b1;
			b1[1] = pi->nphy_pwrctrl_info[1].pwrdet_2g_b1;
			break;
		case WL_CHAN_FREQ_RANGE_5GL:
			idle_tssi[0] = pi->nphy_pwrctrl_info[0].idle_tssi_5g;
			idle_tssi[1] = pi->nphy_pwrctrl_info[1].idle_tssi_5g;
			a1[0] = pi->nphy_pwrctrl_info[0].pwrdet_5gl_a1;
			a1[1] = pi->nphy_pwrctrl_info[1].pwrdet_5gl_a1;
			b0[0] = pi->nphy_pwrctrl_info[0].pwrdet_5gl_b0;
			b0[1] = pi->nphy_pwrctrl_info[1].pwrdet_5gl_b0;
			b1[0] = pi->nphy_pwrctrl_info[0].pwrdet_5gl_b1;
			b1[1] = pi->nphy_pwrctrl_info[1].pwrdet_5gl_b1;
			break;
		case WL_CHAN_FREQ_RANGE_5GM:
			idle_tssi[0] = pi->nphy_pwrctrl_info[0].idle_tssi_5g;
			idle_tssi[1] = pi->nphy_pwrctrl_info[1].idle_tssi_5g;
			a1[0] = pi->nphy_pwrctrl_info[0].pwrdet_5gm_a1;
			a1[1] = pi->nphy_pwrctrl_info[1].pwrdet_5gm_a1;
			b0[0] = pi->nphy_pwrctrl_info[0].pwrdet_5gm_b0;
			b0[1] = pi->nphy_pwrctrl_info[1].pwrdet_5gm_b0;
			b1[0] = pi->nphy_pwrctrl_info[0].pwrdet_5gm_b1;
			b1[1] = pi->nphy_pwrctrl_info[1].pwrdet_5gm_b1;
			break;
		case WL_CHAN_FREQ_RANGE_5GH:
			idle_tssi[0] = pi->nphy_pwrctrl_info[0].idle_tssi_5g;
			idle_tssi[1] = pi->nphy_pwrctrl_info[1].idle_tssi_5g;
			a1[0] = pi->nphy_pwrctrl_info[0].pwrdet_5gh_a1;
			a1[1] = pi->nphy_pwrctrl_info[1].pwrdet_5gh_a1;
			b0[0] = pi->nphy_pwrctrl_info[0].pwrdet_5gh_b0;
			b0[1] = pi->nphy_pwrctrl_info[1].pwrdet_5gh_b0;
			b1[0] = pi->nphy_pwrctrl_info[0].pwrdet_5gh_b1;
			b1[1] = pi->nphy_pwrctrl_info[1].pwrdet_5gh_b1;
			break;
		default:
			idle_tssi[0] = pi->nphy_pwrctrl_info[0].idle_tssi_2g;
			idle_tssi[1] = pi->nphy_pwrctrl_info[1].idle_tssi_2g;
			a1[0] = -424;
			a1[1] = -424;
			b0[0] = 5612;
			b0[1] = 5612;
			b1[1] = -1393;
			b1[0] = -1393;
			break;
		}
	}

	/* use the provided transmit power */
	target_pwr_qtrdbm[0] = (s8) pi->tx_power_max;
	target_pwr_qtrdbm[1] = (s8) pi->tx_power_max;

	if (FUNC5(pi->pubpi.phy_rev, 3)) {
		if (pi->srom_fem2g.tssipos)
			FUNC14(pi, 0x1e9, (0x1 << 14));

		if (FUNC5(pi->pubpi.phy_rev, 7)) {
			for (core = 0; core <= 1; core++) {
				if (FUNC8(pi)) {
					if (FUNC0(pi->radio_chanspec))
						FUNC9(pi, RADIO_2057,
								 TX, core,
								 TX_SSI_MUX,
								 0xe);
					else
						FUNC9(pi, RADIO_2057,
								 TX, core,
								 TX_SSI_MUX,
								 0xc);
				}
			}
		} else {
			if (FUNC8(pi)) {

				FUNC22(pi, RADIO_2056_TX_TX_SSI_MUX |
						RADIO_2056_TX0,
						(FUNC1
						 (pi->radio_chanspec)) ?
						 0xc : 0xe);
				FUNC22(pi,
						RADIO_2056_TX_TX_SSI_MUX |
						RADIO_2056_TX1,
						(FUNC1
						 (pi->radio_chanspec)) ?
						 0xc : 0xe);
			} else {

				FUNC22(pi, RADIO_2056_TX_TX_SSI_MUX |
						RADIO_2056_TX0, 0x11);
				FUNC22(pi, RADIO_2056_TX_TX_SSI_MUX |
						RADIO_2056_TX1, 0x11);
			}
		}
	}

	if (FUNC3(pi->sh->corerev, 11) || FUNC3(pi->sh->corerev, 12)) {
		FUNC16(pi->sh->physhim, MCTL_PHYLOCK, MCTL_PHYLOCK);
		(void)FUNC11(pi->d11core, FUNC2(maccontrol));
		FUNC15(1);
	}

	if (FUNC5(pi->pubpi.phy_rev, 7))
		FUNC13(pi, 0x1e7, (0x7f << 0),
			    (NPHY_TxPwrCtrlCmd_pwrIndex_init_rev7 << 0));
	else
		FUNC13(pi, 0x1e7, (0x7f << 0),
			    (NPHY_TxPwrCtrlCmd_pwrIndex_init << 0));

	if (FUNC5(pi->pubpi.phy_rev, 7))
		FUNC13(pi, 0x222, (0xff << 0),
			    (NPHY_TxPwrCtrlCmd_pwrIndex_init_rev7 << 0));
	else if (FUNC6(pi->pubpi.phy_rev, 1))
		FUNC13(pi, 0x222, (0xff << 0),
			    (NPHY_TxPwrCtrlCmd_pwrIndex_init << 0));

	if (FUNC3(pi->sh->corerev, 11) || FUNC3(pi->sh->corerev, 12))
		FUNC16(pi->sh->physhim, MCTL_PHYLOCK, 0);

	FUNC21(pi, 0x1e8, (0x3 << 8) | (240 << 0));

	FUNC21(pi, 0x1e9,
		      (1 << 15) | (idle_tssi[0] << 0) | (idle_tssi[1] << 8));

	FUNC21(pi, 0x1ea,
		      (target_pwr_qtrdbm[0] << 0) |
		      (target_pwr_qtrdbm[1] << 8));

	tbl_len = 64;
	tbl_offset = 0;
	for (tbl_id = NPHY_TBL_ID_CORE1TXPWRCTL;
	     tbl_id <= NPHY_TBL_ID_CORE2TXPWRCTL; tbl_id++) {

		for (idx = 0; idx < tbl_len; idx++) {
			num = 8 *
			      (16 * b0[tbl_id - 26] + b1[tbl_id - 26] * idx);
			den = 32768 + a1[tbl_id - 26] * idx;
			pwr_est = FUNC12(FUNC4(4 * num, den), -8);
			if (FUNC7(pi->pubpi.phy_rev, 3)) {
				if (idx <=
				    (uint) (31 - idle_tssi[tbl_id - 26] + 1))
					pwr_est =
						FUNC12(pwr_est,
						    target_pwr_qtrdbm
						    [tbl_id - 26] + 1);
			}
			regval[idx] = (u32) pwr_est;
		}
		FUNC19(pi, tbl_id, tbl_len, tbl_offset, 32,
					 regval);
	}

	FUNC20(pi);
	FUNC19(pi, NPHY_TBL_ID_CORE1TXPWRCTL, 84, 64, 8,
				 pi->adj_pwr_tbl_nphy);
	FUNC19(pi, NPHY_TBL_ID_CORE2TXPWRCTL, 84, 64, 8,
				 pi->adj_pwr_tbl_nphy);

	if (pi->phyhang_avoid)
		FUNC18(pi, false);
}