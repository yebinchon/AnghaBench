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
typedef  int u8 ;
typedef  int u16 ;
struct TYPE_2__ {int /*<<< orphan*/  phy_rev; } ;
struct brcms_phy {int nphy_sample_play_lpf_bw_ctl_ovr; int nphy_bb_mult_save; scalar_t__ phyhang_avoid; TYPE_1__ pubpi; int /*<<< orphan*/  radio_chanspec; } ;

/* Variables and functions */
 int BB_MULT_MASK ; 
 int BB_MULT_VALID_MASK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NPHY_REV7_RFCTRLOVERRIDE_ID1 ; 
 int NPHY_RfseqMode_CoreActv_override ; 
 int /*<<< orphan*/  NPHY_TBL_ID_IQLOCAL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct brcms_phy*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct brcms_phy*,int,int) ; 
 int FUNC5 (struct brcms_phy*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct brcms_phy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct brcms_phy*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct brcms_phy*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct brcms_phy*,int /*<<< orphan*/ ,int,int,int,int*) ; 
 int /*<<< orphan*/  FUNC10 (struct brcms_phy*,int /*<<< orphan*/ ,int,int,int,int*) ; 
 int /*<<< orphan*/  FUNC11 (struct brcms_phy*,int,int) ; 

__attribute__((used)) static void
FUNC12(struct brcms_phy *pi, u16 num_samps, u16 loops,
			u16 wait, u8 iqmode, u8 dac_test_mode,
			bool modify_bbmult)
{
	u16 bb_mult;
	u8 phy_bw, sample_cmd;
	u16 orig_RfseqCoreActv;
	u16 lpf_bw_ctl_override3, lpf_bw_ctl_override4, lpf_bw_ctl_miscreg3,
	    lpf_bw_ctl_miscreg4;

	if (pi->phyhang_avoid)
		FUNC8(pi, true);

	phy_bw = 20;
	if (FUNC0(pi->radio_chanspec))
		phy_bw = 40;

	if (FUNC1(pi->pubpi.phy_rev, 7)) {

		lpf_bw_ctl_override3 = FUNC5(pi, 0x342) & (0x1 << 7);
		lpf_bw_ctl_override4 = FUNC5(pi, 0x343) & (0x1 << 7);
		if (lpf_bw_ctl_override3 | lpf_bw_ctl_override4) {
			lpf_bw_ctl_miscreg3 = FUNC5(pi, 0x340) &
					      (0x7 << 8);
			lpf_bw_ctl_miscreg4 = FUNC5(pi, 0x341) &
					      (0x7 << 8);
		} else {
			FUNC7(
				pi,
				(0x1 << 7),
				FUNC6
					(pi,
					0), 0, 0,
				NPHY_REV7_RFCTRLOVERRIDE_ID1);

			pi->nphy_sample_play_lpf_bw_ctl_ovr = true;

			lpf_bw_ctl_miscreg3 = FUNC5(pi, 0x340) &
					      (0x7 << 8);
			lpf_bw_ctl_miscreg4 = FUNC5(pi, 0x341) &
					      (0x7 << 8);
		}
	}

	if ((pi->nphy_bb_mult_save & BB_MULT_VALID_MASK) == 0) {

		FUNC9(pi, NPHY_TBL_ID_IQLOCAL, 1, 87, 16,
					&bb_mult);
		pi->nphy_bb_mult_save =
			BB_MULT_VALID_MASK | (bb_mult & BB_MULT_MASK);
	}

	if (modify_bbmult) {
		bb_mult = (phy_bw == 20) ? 100 : 71;
		bb_mult = (bb_mult << 8) + bb_mult;
		FUNC10(pi, NPHY_TBL_ID_IQLOCAL, 1, 87, 16,
					 &bb_mult);
	}

	if (pi->phyhang_avoid)
		FUNC8(pi, false);

	FUNC11(pi, 0xc6, num_samps - 1);

	if (loops != 0xffff)
		FUNC11(pi, 0xc4, loops - 1);
	else
		FUNC11(pi, 0xc4, loops);

	FUNC11(pi, 0xc5, wait);

	orig_RfseqCoreActv = FUNC5(pi, 0xa1);
	FUNC4(pi, 0xa1, NPHY_RfseqMode_CoreActv_override);
	if (iqmode) {

		FUNC3(pi, 0xc2, 0x7FFF);

		FUNC4(pi, 0xc2, 0x8000);
	} else {

		sample_cmd = (dac_test_mode == 1) ? 0x5 : 0x1;
		FUNC11(pi, 0xc3, sample_cmd);
	}

	FUNC2(((FUNC5(pi, 0xa4) & 0x1) == 1), 1000);

	FUNC11(pi, 0xa1, orig_RfseqCoreActv);
}