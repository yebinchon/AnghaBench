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
typedef  size_t u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct nphy_txgains {int* txlpf; int* txgm; int* pga; int* ipa; int* pad; } ;
struct TYPE_4__ {int* pad; int* pga; } ;
struct nphy_ipa_txcalgains {int index; scalar_t__ useindex; TYPE_1__ gains; } ;
struct TYPE_6__ {int radiorev; int /*<<< orphan*/  phy_rev; } ;
struct brcms_phy {scalar_t__ bw; TYPE_3__ pubpi; int /*<<< orphan*/  radio_chanspec; TYPE_2__* sh; } ;
typedef  enum phy_cal_mode { ____Placeholder_phy_cal_mode } phy_cal_mode ;
struct TYPE_5__ {scalar_t__ chip; } ;

/* Variables and functions */
 scalar_t__ BCMA_CHIP_ID_BCM47162 ; 
 int CAL_FULL ; 
 int CAL_GCTRL ; 
 int CAL_SOFT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NPHY_REV7_RFCTRLOVERRIDE_ID0 ; 
 int /*<<< orphan*/  NPHY_REV7_RfctrlOverride_cmd_txgain ; 
 int /*<<< orphan*/  NPHY_TBL_ID_EPSILONTBL0 ; 
 int /*<<< orphan*/  NPHY_TBL_ID_EPSILONTBL1 ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int) ; 
 size_t PHY_CORE_0 ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ WL_CHANSPEC_BW_40 ; 
 int /*<<< orphan*/  FUNC6 (struct brcms_phy*,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct brcms_phy*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct brcms_phy*,size_t,int,int /*<<< orphan*/ ,int) ; 
 struct nphy_txgains FUNC9 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC10 (struct brcms_phy*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC11 (struct brcms_phy*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct brcms_phy*,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct brcms_phy*,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct brcms_phy*,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct brcms_phy*,int,int) ; 

__attribute__((used)) static void
FUNC16(struct brcms_phy *pi, struct nphy_ipa_txcalgains *txgains,
		enum phy_cal_mode cal_mode, u8 core)
{
	u16 phy_a1, phy_a2, phy_a3;
	u16 phy_a4, phy_a5;
	bool phy_a6;
	u8 phy_a7, m[2];
	u32 phy_a8 = 0;
	struct nphy_txgains phy_a9;

	if (FUNC4(pi->pubpi.phy_rev, 3))
		return;

	phy_a7 = (core == PHY_CORE_0) ? 1 : 0;

	phy_a6 = ((cal_mode == CAL_GCTRL)
		  || (cal_mode == CAL_SOFT)) ? true : false;

	if (FUNC2(pi->pubpi.phy_rev, 7)) {

		phy_a9 = FUNC9(pi);

		if (FUNC0(pi->radio_chanspec))
			phy_a5 = ((phy_a9.txlpf[core] << 15) |
				  (phy_a9.txgm[core] << 12) |
				  (phy_a9.pga[core] << 8) |
				  (txgains->gains.pad[core] << 3) |
				  (phy_a9.ipa[core]));
		else
			phy_a5 = ((phy_a9.txlpf[core] << 15) |
				  (phy_a9.txgm[core] << 12) |
				  (txgains->gains.pga[core] << 8) |
				  (phy_a9.pad[core] << 3) | (phy_a9.ipa[core]));

		FUNC11(
			pi,
			NPHY_REV7_RfctrlOverride_cmd_txgain,
			phy_a5, (1 << core), 0);

		if (FUNC0(pi->radio_chanspec)) {
			if ((pi->pubpi.radiorev <= 4)
			    || (pi->pubpi.radiorev == 6))
				m[core] = (pi->bw == WL_CHANSPEC_BW_40) ?
					  60 : 79;
			else
				m[core] = (pi->bw == WL_CHANSPEC_BW_40) ?
					  45 : 64;
		} else {
			m[core] = (pi->bw == WL_CHANSPEC_BW_40) ? 75 : 107;
		}

		m[phy_a7] = 0;
		FUNC10(pi, m[0], m[1]);

		phy_a2 = 63;

		if (FUNC0(pi->radio_chanspec)) {
			if ((pi->pubpi.radiorev == 4)
			    || (pi->pubpi.radiorev == 6)) {
				phy_a1 = 30;
				phy_a3 = 30;
			} else {
				phy_a1 = 25;
				phy_a3 = 25;
			}
		} else {
			if ((pi->pubpi.radiorev == 5)
			    || (pi->pubpi.radiorev == 7)
			    || (pi->pubpi.radiorev == 8)) {
				phy_a1 = 25;
				phy_a3 = 25;
			} else {
				phy_a1 = 35;
				phy_a3 = 35;
			}
		}

		if (cal_mode == CAL_GCTRL) {
			if ((pi->pubpi.radiorev == 5)
			    && (FUNC0(pi->radio_chanspec)))
				phy_a1 = 55;
			else if (((pi->pubpi.radiorev == 7) &&
				  (FUNC0(pi->radio_chanspec))) ||
				 ((pi->pubpi.radiorev == 8) &&
				  (FUNC0(pi->radio_chanspec))))
				phy_a1 = 60;
			else
				phy_a1 = 63;

		} else if ((cal_mode != CAL_FULL) && (cal_mode != CAL_SOFT)) {

			phy_a1 = 35;
			phy_a3 = 35;
		}

		FUNC6(pi, (core == PHY_CORE_0) ? 0x297 :
			    0x29b, (0x1 << 0), (1) << 0);

		FUNC6(pi, (phy_a7 == PHY_CORE_0) ? 0x297 :
			    0x29b, (0x1 << 0), (0) << 0);

		FUNC6(pi, (core == PHY_CORE_0) ? 0x2a3 :
			    0x2a4, (0x1 << 13), (1) << 13);

		FUNC6(pi, (phy_a7 == PHY_CORE_0) ? 0x2a3 :
			    0x2a4, (0x1 << 13), (0) << 13);

		FUNC15(pi, 0x2a1, 0x80);
		FUNC15(pi, 0x2a2, 0x100);

		FUNC6(pi, (core == PHY_CORE_0) ? 0x2a3 :
			    0x2a4, (0x7 << 4), (11) << 4);

		FUNC6(pi, (core == PHY_CORE_0) ? 0x2a3 :
			    0x2a4, (0x7 << 8), (11) << 8);

		FUNC6(pi, (core == PHY_CORE_0) ? 0x2a3 :
			    0x2a4, (0x7 << 0), (0x3) << 0);

		FUNC15(pi, 0x2e5, 0x20);

		FUNC6(pi, 0x2a0, (0x3f << 0), (phy_a3) << 0);

		FUNC6(pi, 0x29f, (0x3f << 0), (phy_a1) << 0);

		FUNC6(pi, 0x29f, (0x3f << 8), (phy_a2) << 8);

		FUNC13(pi, (0x1 << 3),
						  1, ((core == 0) ? 1 : 2), 0,
						  NPHY_REV7_RFCTRLOVERRIDE_ID0);
		FUNC13(pi, (0x1 << 3),
						  0, ((core == 0) ? 2 : 1), 0,
						  NPHY_REV7_RFCTRLOVERRIDE_ID0);

		FUNC15(pi, 0x2be, 1);
		FUNC5(FUNC7(pi, 0x2be), 10 * 1000 * 1000);

		FUNC13(pi, (0x1 << 3),
						  0, 0x3, 0,
						  NPHY_REV7_RFCTRLOVERRIDE_ID0);

		FUNC14(pi,
					 (core ==
					  PHY_CORE_0) ? NPHY_TBL_ID_EPSILONTBL0
					 : NPHY_TBL_ID_EPSILONTBL1, 1, phy_a3,
					 32, &phy_a8);

		if (cal_mode != CAL_GCTRL) {
			if (FUNC1(pi->radio_chanspec))
				FUNC8(pi, core, 5, 0, 35);
		}

		FUNC11(
			pi,
			NPHY_REV7_RfctrlOverride_cmd_txgain,
			phy_a5, (1 << core), 1);

	} else {

		if (txgains) {
			if (txgains->useindex) {
				phy_a4 = 15 - ((txgains->index) >> 3);
				if (FUNC0(pi->radio_chanspec)) {
					if (FUNC2(pi->pubpi.phy_rev, 6) &&
					    pi->sh->chip == BCMA_CHIP_ID_BCM47162) {
						phy_a5 = 0x10f7 | (phy_a4 << 8);
					} else if (FUNC2(pi->pubpi.phy_rev, 6)) {
						phy_a5 = 0x00f7 | (phy_a4 << 8);
					} else if (FUNC3(pi->pubpi.phy_rev, 5)) {
						phy_a5 = 0x10f7 | (phy_a4 << 8);
					} else {
						phy_a5 = 0x50f7 | (phy_a4 << 8);
					}
				} else {
					phy_a5 = 0x70f7 | (phy_a4 << 8);
				}
				FUNC12(pi,
							     (0x1 << 13),
							     phy_a5,
							     (1 << core), 0);
			} else {
				FUNC12(pi,
							     (0x1 << 13),
							     0x5bf7,
							     (1 << core), 0);
			}
		}

		if (FUNC0(pi->radio_chanspec))
			m[core] = (pi->bw == WL_CHANSPEC_BW_40) ? 45 : 64;
		else
			m[core] = (pi->bw == WL_CHANSPEC_BW_40) ? 75 : 107;

		m[phy_a7] = 0;
		FUNC10(pi, m[0], m[1]);

		phy_a2 = 63;

		if (cal_mode == CAL_FULL) {
			phy_a1 = 25;
			phy_a3 = 25;
		} else if (cal_mode == CAL_SOFT) {
			phy_a1 = 25;
			phy_a3 = 25;
		} else if (cal_mode == CAL_GCTRL) {
			phy_a1 = 63;
			phy_a3 = 25;
		} else {

			phy_a1 = 25;
			phy_a3 = 25;
		}

		FUNC6(pi, (core == PHY_CORE_0) ? 0x297 :
			    0x29b, (0x1 << 0), (1) << 0);

		FUNC6(pi, (phy_a7 == PHY_CORE_0) ? 0x297 :
			    0x29b, (0x1 << 0), (0) << 0);

		if (FUNC2(pi->pubpi.phy_rev, 6)) {
			FUNC6(pi, (core == PHY_CORE_0) ? 0x2a3 :
				    0x2a4, (0x1 << 13), (1) << 13);

			FUNC6(pi, (phy_a7 == PHY_CORE_0) ? 0x2a3 :
				    0x2a4, (0x1 << 13), (0) << 13);

			FUNC15(pi, 0x2a1, 0x20);
			FUNC15(pi, 0x2a2, 0x60);

			FUNC6(pi, (core == PHY_CORE_0) ? 0x2a3 :
				    0x2a4, (0xf << 4), (9) << 4);

			FUNC6(pi, (core == PHY_CORE_0) ? 0x2a3 :
				    0x2a4, (0xf << 8), (9) << 8);

			FUNC6(pi, (core == PHY_CORE_0) ? 0x2a3 :
				    0x2a4, (0xf << 0), (0x2) << 0);

			FUNC15(pi, 0x2e5, 0x20);
		} else {
			FUNC6(pi, (core == PHY_CORE_0) ? 0x2a3 :
				    0x2a4, (0x1 << 11), (1) << 11);

			FUNC6(pi, (phy_a7 == PHY_CORE_0) ? 0x2a3 :
				    0x2a4, (0x1 << 11), (0) << 11);

			FUNC15(pi, 0x2a1, 0x80);
			FUNC15(pi, 0x2a2, 0x600);

			FUNC6(pi, (core == PHY_CORE_0) ? 0x2a3 :
				    0x2a4, (0x7 << 4), (0) << 4);

			FUNC6(pi, (core == PHY_CORE_0) ? 0x2a3 :
				    0x2a4, (0x7 << 8), (0) << 8);

			FUNC6(pi, (core == PHY_CORE_0) ? 0x2a3 :
				    0x2a4, (0x7 << 0), (0x3) << 0);

			FUNC6(pi, 0x2a0, (0x3f << 8), (0x20) << 8);

		}

		FUNC6(pi, 0x2a0, (0x3f << 0), (phy_a3) << 0);

		FUNC6(pi, 0x29f, (0x3f << 0), (phy_a1) << 0);

		FUNC6(pi, 0x29f, (0x3f << 8), (phy_a2) << 8);

		FUNC12(pi, (0x1 << 3), 1, 0x3, 0);

		FUNC15(pi, 0x2be, 1);
		FUNC5(FUNC7(pi, 0x2be), 10 * 1000 * 1000);

		FUNC12(pi, (0x1 << 3), 0, 0x3, 0);

		FUNC14(pi,
					 (core ==
					  PHY_CORE_0) ? NPHY_TBL_ID_EPSILONTBL0
					 : NPHY_TBL_ID_EPSILONTBL1, 1, phy_a3,
					 32, &phy_a8);

		if (cal_mode != CAL_GCTRL)
			FUNC8(pi, core, 5, 0, 40);
	}
}