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
typedef  int /*<<< orphan*/  u16 ;
struct phytbl_info {int tbl_width; int* tbl_ptr; int tbl_len; scalar_t__ tbl_offset; int /*<<< orphan*/  tbl_id; } ;
struct lcnphy_rx_iqcomp {int dummy; } ;
struct brcms_phy_pub {int dummy; } ;
struct brcms_phy_lcnphy {scalar_t__ lcnphy_full_cal_channel; int /*<<< orphan*/  lcnphy_current_index; } ;
struct TYPE_5__ {int /*<<< orphan*/  phy_rev; } ;
struct TYPE_4__ {struct brcms_phy_lcnphy* pi_lcnphy; } ;
struct brcms_phy {int phy_forcecal; int* txpa_2g; TYPE_3__* sh; TYPE_2__ pubpi; int /*<<< orphan*/  d11core; int /*<<< orphan*/  radio_chanspec; int /*<<< orphan*/  phy_lastcal; TYPE_1__ u; } ;
typedef  int /*<<< orphan*/  s8 ;
typedef  int s32 ;
struct TYPE_6__ {int /*<<< orphan*/  physhim; int /*<<< orphan*/  now; } ;

/* Variables and functions */
 int FUNC0 (struct lcnphy_rx_iqcomp*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCNPHY_TBL_ID_TXPWRCTL ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 int MCTL_EN_MAC ; 
 int /*<<< orphan*/  M_CTS_DURATION ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct lcnphy_rx_iqcomp* lcnphy_rx_iqcomp_table_rev0 ; 
 int /*<<< orphan*/  maccontrol ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct brcms_phy*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC10 (struct brcms_phy_pub*) ; 
 int /*<<< orphan*/  FUNC11 (struct brcms_phy*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct brcms_phy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct brcms_phy*,int /*<<< orphan*/ ) ; 
 int FUNC14 (int,int,int,int) ; 
 scalar_t__ FUNC15 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC16 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC17 (struct brcms_phy*,struct phytbl_info*) ; 

__attribute__((used)) static void FUNC18(struct brcms_phy *pi)
{
	bool suspend, full_cal;
	const struct lcnphy_rx_iqcomp *rx_iqcomp;
	int rx_iqcomp_sz;
	u16 SAVE_pwrctrl = FUNC9(pi);
	s8 index;
	struct phytbl_info tab;
	s32 a1, b0, b1;
	s32 tssi, pwr, mintargetpwr;
	struct brcms_phy_lcnphy *pi_lcn = pi->u.pi_lcnphy;

	pi->phy_lastcal = pi->sh->now;
	pi->phy_forcecal = false;
	full_cal =
		(pi_lcn->lcnphy_full_cal_channel !=
		 FUNC1(pi->radio_chanspec));
	pi_lcn->lcnphy_full_cal_channel = FUNC1(pi->radio_chanspec);
	index = pi_lcn->lcnphy_current_index;

	suspend = (0 == (FUNC4(pi->d11core, FUNC2(maccontrol)) &
			 MCTL_EN_MAC));
	if (!suspend) {
		FUNC5(pi->sh->physhim, M_CTS_DURATION, 10000);
		FUNC7(pi->sh->physhim);
	}

	FUNC8(pi, true);

	FUNC16(pi);

	rx_iqcomp = lcnphy_rx_iqcomp_table_rev0;
	rx_iqcomp_sz = FUNC0(lcnphy_rx_iqcomp_table_rev0);

	if (FUNC3(pi->pubpi.phy_rev, 1))
		FUNC11(pi, NULL, 0, true, false, 1, 40);
	else
		FUNC11(pi, NULL, 0, true, false, 1, 127);

	if (FUNC15(pi)) {

		FUNC10((struct brcms_phy_pub *) pi);

		b0 = pi->txpa_2g[0];
		b1 = pi->txpa_2g[1];
		a1 = pi->txpa_2g[2];
		mintargetpwr = FUNC14(125, a1, b0, b1);

		tab.tbl_id = LCNPHY_TBL_ID_TXPWRCTL;
		tab.tbl_width = 32;
		tab.tbl_ptr = &pwr;
		tab.tbl_len = 1;
		tab.tbl_offset = 0;
		for (tssi = 0; tssi < 128; tssi++) {
			pwr = FUNC14(tssi, a1, b0, b1);
			pwr = (pwr < mintargetpwr) ? mintargetpwr : pwr;
			FUNC17(pi, &tab);
			tab.tbl_offset++;
		}
	}

	FUNC12(pi, index);
	FUNC13(pi, SAVE_pwrctrl);
	FUNC8(pi, false);
	if (!suspend)
		FUNC6(pi->sh->physhim);
}