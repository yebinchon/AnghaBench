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
typedef  size_t u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct nphy_papd_restore_state {int /*<<< orphan*/  mm; } ;
struct TYPE_5__ {int* pad; int* pga; } ;
struct nphy_ipa_txcalgains {int useindex; int index; TYPE_1__ gains; } ;
struct TYPE_6__ {size_t phy_corenum; int radiorev; int /*<<< orphan*/  phy_rev; } ;
struct brcms_phy {int nphy_papd_skip; int nphy_force_papd_cal; size_t nphy_txpwrctrl; int* nphy_papd_cal_gain_index; int nphy_papd_cal_type; size_t* nphy_papd_epsilon_offset; int nphy_papdcomp; TYPE_4__* sh; TYPE_3__* nphy_txpwrindex; TYPE_2__ pubpi; int /*<<< orphan*/  radio_chanspec; int /*<<< orphan*/  nphy_papd_recal_counter; int /*<<< orphan*/  nphy_papd_last_cal; int /*<<< orphan*/ * nphy_papd_tx_gain_at_last_cal; int /*<<< orphan*/  d11core; } ;
typedef  int /*<<< orphan*/  s8 ;
typedef  int s32 ;
typedef  size_t s16 ;
struct TYPE_8__ {int /*<<< orphan*/  physhim; int /*<<< orphan*/  now; } ;
struct TYPE_7__ {scalar_t__ index_internal; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAL_FULL ; 
 int /*<<< orphan*/  CAL_SOFT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int MCTL_EN_MAC ; 
 int NPHY_PAPD_COMP_ON ; 
 int /*<<< orphan*/  NPHY_TBL_ID_EPSILONTBL0 ; 
 int /*<<< orphan*/  NPHY_TBL_ID_EPSILONTBL1 ; 
 int /*<<< orphan*/  NPHY_TBL_ID_SCALARTBL0 ; 
 int /*<<< orphan*/  NPHY_TBL_ID_SCALARTBL1 ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 size_t PHY_CORE_0 ; 
 size_t PHY_TPC_HW_OFF ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  maccontrol ; 
 int /*<<< orphan*/  FUNC5 (struct brcms_phy*,int,int,int) ; 
 int* nphy_papd_padgain_dlt_2g_2057rev3n4 ; 
 int* nphy_papd_padgain_dlt_2g_2057rev5 ; 
 int* nphy_papd_padgain_dlt_2g_2057rev7 ; 
 int* nphy_papd_pga_gain_delta_ipa_2g ; 
 int* nphy_papd_pga_gain_delta_ipa_5g ; 
 int* nphy_papd_pgagain_dlt_5g_2057 ; 
 int* nphy_papd_pgagain_dlt_5g_2057rev7 ; 
 int* nphy_papd_scaltbl ; 
 int /*<<< orphan*/  FUNC6 (struct brcms_phy*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct brcms_phy*,struct nphy_ipa_txcalgains*,int /*<<< orphan*/ ,size_t) ; 
 void* FUNC10 (struct brcms_phy*,int,size_t) ; 
 int /*<<< orphan*/  FUNC11 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC12 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC13 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC14 (struct brcms_phy*,struct nphy_papd_restore_state*) ; 
 int /*<<< orphan*/  FUNC15 (struct brcms_phy*,struct nphy_papd_restore_state*,size_t) ; 
 int /*<<< orphan*/  FUNC16 (struct brcms_phy*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct brcms_phy*,int /*<<< orphan*/ ,int,int,int,int*) ; 
 int /*<<< orphan*/  FUNC18 (struct brcms_phy*,size_t) ; 
 int /*<<< orphan*/  FUNC19 (struct brcms_phy*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 (struct brcms_phy*,size_t) ; 
 int /*<<< orphan*/  FUNC21 (struct brcms_phy*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC22(struct brcms_phy *pi, bool full_cal)
{
	struct nphy_ipa_txcalgains phy_b1[2];
	struct nphy_papd_restore_state phy_b2;
	bool phy_b3;
	u8 phy_b4;
	u8 phy_b5;
	s16 phy_b6, phy_b7, phy_b8;
	u16 phy_b9;
	s16 phy_b10, phy_b11, phy_b12;

	phy_b11 = 0;
	phy_b12 = 0;
	phy_b7 = 0;
	phy_b8 = 0;
	phy_b6 = 0;

	if (pi->nphy_papd_skip == 1)
		return;

	phy_b3 = (0 == (FUNC4(pi->d11core, FUNC1(maccontrol)) &
			MCTL_EN_MAC));
	if (!phy_b3)
		FUNC8(pi->sh->physhim);

	FUNC16(pi, true);

	pi->nphy_force_papd_cal = false;

	for (phy_b5 = 0; phy_b5 < pi->pubpi.phy_corenum; phy_b5++)
		pi->nphy_papd_tx_gain_at_last_cal[phy_b5] =
			FUNC18(pi, phy_b5);

	pi->nphy_papd_last_cal = pi->sh->now;
	pi->nphy_papd_recal_counter++;

	phy_b4 = pi->nphy_txpwrctrl;
	FUNC20(pi, PHY_TPC_HW_OFF);

	FUNC17(pi, NPHY_TBL_ID_SCALARTBL0, 64, 0, 32,
				 nphy_papd_scaltbl);
	FUNC17(pi, NPHY_TBL_ID_SCALARTBL1, 64, 0, 32,
				 nphy_papd_scaltbl);

	phy_b9 = FUNC6(pi, 0x01);
	FUNC5(pi, 0x01, (0x1 << 15), 0);

	for (phy_b5 = 0; phy_b5 < pi->pubpi.phy_corenum; phy_b5++) {
		s32 i, val = 0;
		for (i = 0; i < 64; i++)
			FUNC17(pi,
						 ((phy_b5 ==
						   PHY_CORE_0) ?
						  NPHY_TBL_ID_EPSILONTBL0 :
						  NPHY_TBL_ID_EPSILONTBL1), 1,
						 i, 32, &val);
	}

	FUNC12(pi);

	phy_b2.mm = FUNC11(pi);
	for (phy_b5 = 0; phy_b5 < pi->pubpi.phy_corenum; phy_b5++) {
		FUNC15(pi, &phy_b2, phy_b5);

		if (FUNC2(pi->pubpi.phy_rev, 7)) {
			if (FUNC0(pi->radio_chanspec)) {
				if ((pi->pubpi.radiorev == 3)
				    || (pi->pubpi.radiorev == 4)
				    || (pi->pubpi.radiorev == 6)) {
					pi->nphy_papd_cal_gain_index[phy_b5] =
						23;
				} else if (pi->pubpi.radiorev == 5) {
					pi->nphy_papd_cal_gain_index[phy_b5] =
						0;
					pi->nphy_papd_cal_gain_index[phy_b5] =
						FUNC10(
							pi,
							pi->
							nphy_papd_cal_gain_index
							[phy_b5],
							phy_b5);

				} else if ((pi->pubpi.radiorev == 7)
					   || (pi->pubpi.radiorev == 8)) {

					pi->nphy_papd_cal_gain_index[phy_b5] =
						0;
					pi->nphy_papd_cal_gain_index[phy_b5] =
						FUNC10(
							pi,
							pi->
							nphy_papd_cal_gain_index
							[phy_b5],
							phy_b5);

				}

				phy_b1[phy_b5].gains.pad[phy_b5] =
					pi->nphy_papd_cal_gain_index[phy_b5];

			} else {
				pi->nphy_papd_cal_gain_index[phy_b5] = 0;
				pi->nphy_papd_cal_gain_index[phy_b5] =
					FUNC10(
						pi,
						pi->
						nphy_papd_cal_gain_index
						[phy_b5], phy_b5);
				phy_b1[phy_b5].gains.pga[phy_b5] =
					pi->nphy_papd_cal_gain_index[phy_b5];
			}
		} else {
			phy_b1[phy_b5].useindex = true;
			phy_b1[phy_b5].index = 16;
			phy_b1[phy_b5].index =
				FUNC10(pi, phy_b1[phy_b5].index,
						phy_b5);

			pi->nphy_papd_cal_gain_index[phy_b5] =
				15 - ((phy_b1[phy_b5].index) >> 3);
		}

		switch (pi->nphy_papd_cal_type) {
		case 0:
			FUNC9(pi, &phy_b1[phy_b5], CAL_FULL, phy_b5);
			break;
		case 1:
			FUNC9(pi, &phy_b1[phy_b5], CAL_SOFT, phy_b5);
			break;
		}

		if (FUNC2(pi->pubpi.phy_rev, 7))
			FUNC14(pi, &phy_b2);
	}

	if (FUNC3(pi->pubpi.phy_rev, 7))
		FUNC14(pi, &phy_b2);

	for (phy_b5 = 0; phy_b5 < pi->pubpi.phy_corenum; phy_b5++) {
		int eps_offset = 0;

		if (FUNC2(pi->pubpi.phy_rev, 7)) {
			if (FUNC0(pi->radio_chanspec)) {
				if (pi->pubpi.radiorev == 3)
					eps_offset = -2;
				else if (pi->pubpi.radiorev == 5)
					eps_offset = 3;
				else
					eps_offset = -1;
			} else {
				eps_offset = 2;
			}

			if (FUNC0(pi->radio_chanspec)) {
				phy_b8 = phy_b1[phy_b5].gains.pad[phy_b5];
				phy_b10 = 0;
				if ((pi->pubpi.radiorev == 3) ||
				    (pi->pubpi.radiorev == 4) ||
				    (pi->pubpi.radiorev == 6)) {
					phy_b12 = -(
					    nphy_papd_padgain_dlt_2g_2057rev3n4
							     [phy_b8] + 1) / 2;
					phy_b10 = -1;
				} else if (pi->pubpi.radiorev == 5) {
					phy_b12 = -(
					    nphy_papd_padgain_dlt_2g_2057rev5
							     [phy_b8] + 1) / 2;
				} else if ((pi->pubpi.radiorev == 7) ||
					   (pi->pubpi.radiorev == 8)) {
					phy_b12 = -(
					    nphy_papd_padgain_dlt_2g_2057rev7
							     [phy_b8] + 1) / 2;
				}
			} else {
				phy_b7 = phy_b1[phy_b5].gains.pga[phy_b5];
				if ((pi->pubpi.radiorev == 3) ||
				    (pi->pubpi.radiorev == 4) ||
				    (pi->pubpi.radiorev == 6))
					phy_b11 =
						-(nphy_papd_pgagain_dlt_5g_2057
						  [phy_b7]
						  + 1) / 2;
				else if ((pi->pubpi.radiorev == 7)
					 || (pi->pubpi.radiorev == 8))
					phy_b11 = -(
					      nphy_papd_pgagain_dlt_5g_2057rev7
							     [phy_b7] + 1) / 2;

				phy_b10 = -9;
			}

			if (FUNC0(pi->radio_chanspec))
				phy_b6 =
					-60 + 27 + eps_offset + phy_b12 +
					phy_b10;
			else
				phy_b6 =
					-60 + 27 + eps_offset + phy_b11 +
					phy_b10;

			FUNC5(pi, (phy_b5 == PHY_CORE_0) ? 0x298 :
				    0x29c, (0x1ff << 7), (phy_b6) << 7);

			pi->nphy_papd_epsilon_offset[phy_b5] = phy_b6;
		} else {
			if (FUNC3(pi->pubpi.phy_rev, 5))
				eps_offset = 4;
			else
				eps_offset = 2;

			phy_b7 = 15 - ((phy_b1[phy_b5].index) >> 3);

			if (FUNC0(pi->radio_chanspec)) {
				phy_b11 =
					-(nphy_papd_pga_gain_delta_ipa_2g[
						  phy_b7] +
					  1) / 2;
				phy_b10 = 0;
			} else {
				phy_b11 =
					-(nphy_papd_pga_gain_delta_ipa_5g[
						  phy_b7] +
					  1) / 2;
				phy_b10 = -9;
			}

			phy_b6 = -60 + 27 + eps_offset + phy_b11 + phy_b10;

			FUNC5(pi, (phy_b5 == PHY_CORE_0) ? 0x298 :
				    0x29c, (0x1ff << 7), (phy_b6) << 7);

			pi->nphy_papd_epsilon_offset[phy_b5] = phy_b6;
		}
	}

	FUNC5(pi, (0 == PHY_CORE_0) ? 0x297 :
		    0x29b, (0x1 << 0), (NPHY_PAPD_COMP_ON) << 0);

	FUNC5(pi, (1 == PHY_CORE_0) ? 0x297 :
		    0x29b, (0x1 << 0), (NPHY_PAPD_COMP_ON) << 0);

	if (FUNC2(pi->pubpi.phy_rev, 6)) {
		FUNC5(pi, (0 == PHY_CORE_0) ? 0x2a3 :
			    0x2a4, (0x1 << 13), (0) << 13);

		FUNC5(pi, (1 == PHY_CORE_0) ? 0x2a3 :
			    0x2a4, (0x1 << 13), (0) << 13);

	} else {
		FUNC5(pi, (0 == PHY_CORE_0) ? 0x2a3 :
			    0x2a4, (0x1 << 11), (0) << 11);

		FUNC5(pi, (1 == PHY_CORE_0) ? 0x2a3 :
			    0x2a4, (0x1 << 11), (0) << 11);

	}
	pi->nphy_papdcomp = NPHY_PAPD_COMP_ON;

	FUNC21(pi, 0x01, phy_b9);

	FUNC13(pi);

	FUNC20(pi, phy_b4);
	if (phy_b4 == PHY_TPC_HW_OFF) {
		FUNC19(pi, (1 << 0),
					 (s8) (pi->nphy_txpwrindex[0].
					       index_internal), false);
		FUNC19(pi, (1 << 1),
					 (s8) (pi->nphy_txpwrindex[1].
					       index_internal), false);
	}

	FUNC16(pi, false);

	if (!phy_b3)
		FUNC7(pi->sh->physhim);
}