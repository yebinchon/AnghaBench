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
typedef  size_t uint ;
typedef  scalar_t__ u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_6__ {int extpagain; } ;
struct TYPE_5__ {size_t phy_corenum; int /*<<< orphan*/  phy_rev; } ;
struct TYPE_4__ {int extpagain; } ;
struct brcms_phy {int phyhang_avoid; int nphy_txcal_bbmult; scalar_t__* nphy_txcal_pwr_idx; scalar_t__ nphy_bb_mult_save; TYPE_3__ srom_fem2g; TYPE_2__ pubpi; TYPE_1__ srom_fem5g; int /*<<< orphan*/  radio_chanspec; scalar_t__* nphy_cal_orig_pwr_idx; } ;
typedef  int s32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NPHY_CAL_TSSISAMPS ; 
 int /*<<< orphan*/  NPHY_RfctrlIntc_override_PA ; 
 int /*<<< orphan*/  NPHY_RfctrlIntc_override_TRSW ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 size_t PHY_CORE_0 ; 
 int RADIO_MIMO_CORESEL_CORE1 ; 
 int RADIO_MIMO_CORESEL_CORE2 ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct brcms_phy*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct brcms_phy*,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct brcms_phy*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct brcms_phy*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct brcms_phy*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC12 (struct brcms_phy*,int,int,int,int,int*) ; 
 int /*<<< orphan*/  FUNC13 (struct brcms_phy*,int,int,int,int,int*) ; 
 int /*<<< orphan*/  FUNC14 (struct brcms_phy*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (struct brcms_phy*,int,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC16 (struct brcms_phy*,int,int) ; 

void
FUNC17(struct brcms_phy *pi, s32 dBm_targetpower,
			    bool debug)
{
	int gainctrl_loopidx;
	uint core;
	u16 m0m1, curr_m0m1;
	s32 delta_power;
	s32 txpwrindex;
	s32 qdBm_power[2];
	u16 orig_BBConfig;
	u16 phy_saveregs[4];
	u32 freq_test;
	u16 ampl_test = 250;
	uint stepsize;
	bool phyhang_avoid_state = false;

	if (FUNC2(pi->pubpi.phy_rev, 7))
		stepsize = 2;
	else
		stepsize = 1;

	if (FUNC0(pi->radio_chanspec))
		freq_test = 5000;
	else
		freq_test = 2500;

	FUNC15(pi, 1, pi->nphy_cal_orig_pwr_idx[0], true);
	FUNC15(pi, 2, pi->nphy_cal_orig_pwr_idx[1], true);

	if (pi->phyhang_avoid)
		FUNC10(pi, true);

	phyhang_avoid_state = pi->phyhang_avoid;
	pi->phyhang_avoid = false;

	phy_saveregs[0] = FUNC6(pi, 0x91);
	phy_saveregs[1] = FUNC6(pi, 0x92);
	phy_saveregs[2] = FUNC6(pi, 0xe7);
	phy_saveregs[3] = FUNC6(pi, 0xec);
	FUNC9(pi, NPHY_RfctrlIntc_override_PA, 1,
					 RADIO_MIMO_CORESEL_CORE1 |
					 RADIO_MIMO_CORESEL_CORE2);

	if (!debug) {
		FUNC9(pi,
						 NPHY_RfctrlIntc_override_TRSW,
						 0x2, RADIO_MIMO_CORESEL_CORE1);
		FUNC9(pi,
						 NPHY_RfctrlIntc_override_TRSW,
						 0x8, RADIO_MIMO_CORESEL_CORE2);
	} else {
		FUNC9(pi,
						 NPHY_RfctrlIntc_override_TRSW,
						 0x1, RADIO_MIMO_CORESEL_CORE1);
		FUNC9(pi,
						 NPHY_RfctrlIntc_override_TRSW,
						 0x7, RADIO_MIMO_CORESEL_CORE2);
	}

	orig_BBConfig = FUNC6(pi, 0x01);
	FUNC5(pi, 0x01, (0x1 << 15), 0);

	FUNC12(pi, 15, 1, 87, 16, &m0m1);

	for (core = 0; core < pi->pubpi.phy_corenum; core++) {
		txpwrindex = (s32) pi->nphy_cal_orig_pwr_idx[core];

		for (gainctrl_loopidx = 0; gainctrl_loopidx < 2;
		     gainctrl_loopidx++) {
			FUNC14(pi, freq_test, ampl_test, 0, 0,
					     false);

			if (core == PHY_CORE_0)
				curr_m0m1 = m0m1 & 0xff00;
			else
				curr_m0m1 = m0m1 & 0x00ff;

			FUNC13(pi, 15, 1, 87, 16, &curr_m0m1);
			FUNC13(pi, 15, 1, 95, 16, &curr_m0m1);

			FUNC7(50);

			FUNC8(pi, qdBm_power,
						 NPHY_CAL_TSSISAMPS);

			pi->nphy_bb_mult_save = 0;
			FUNC11(pi);

			delta_power = (dBm_targetpower * 4) - qdBm_power[core];

			txpwrindex -= stepsize * delta_power;
			if (txpwrindex < 0)
				txpwrindex = 0;
			else if (txpwrindex > 127)
				txpwrindex = 127;

			if (FUNC1(pi->radio_chanspec)) {
				if (FUNC3(pi->pubpi.phy_rev, 4) &&
				    (pi->srom_fem5g.extpagain == 3)) {
					if (txpwrindex < 30)
						txpwrindex = 30;
				}
			} else {
				if (FUNC2(pi->pubpi.phy_rev, 5) &&
				    (pi->srom_fem2g.extpagain == 3)) {
					if (txpwrindex < 50)
						txpwrindex = 50;
				}
			}

			FUNC15(pi, (1 << core),
						 (u8) txpwrindex, true);
		}

		pi->nphy_txcal_pwr_idx[core] = (u8) txpwrindex;

		if (debug) {
			u16 radio_gain;
			u16 dbg_m0m1;

			FUNC12(pi, 15, 1, 87, 16, &dbg_m0m1);

			FUNC14(pi, freq_test, ampl_test, 0, 0,
					     false);

			FUNC13(pi, 15, 1, 87, 16, &dbg_m0m1);
			FUNC13(pi, 15, 1, 95, 16, &dbg_m0m1);

			FUNC7(100);

			FUNC8(pi, qdBm_power,
						 NPHY_CAL_TSSISAMPS);

			FUNC12(pi, 7, 1, (0x110 + core), 16,
						&radio_gain);

			FUNC4(4000);
			pi->nphy_bb_mult_save = 0;
			FUNC11(pi);
		}
	}

	FUNC15(pi, 1, pi->nphy_txcal_pwr_idx[0], true);
	FUNC15(pi, 2, pi->nphy_txcal_pwr_idx[1], true);

	FUNC12(pi, 15, 1, 87, 16, &pi->nphy_txcal_bbmult);

	FUNC16(pi, 0x01, orig_BBConfig);

	FUNC16(pi, 0x91, phy_saveregs[0]);
	FUNC16(pi, 0x92, phy_saveregs[1]);
	FUNC16(pi, 0xe7, phy_saveregs[2]);
	FUNC16(pi, 0xec, phy_saveregs[3]);

	pi->phyhang_avoid = phyhang_avoid_state;

	if (pi->phyhang_avoid)
		FUNC10(pi, false);
}