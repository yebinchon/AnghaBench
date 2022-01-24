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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct phytbl_info {int tbl_width; int tbl_len; int* tbl_ptr; scalar_t__ tbl_offset; int /*<<< orphan*/  tbl_id; } ;
struct lcnphy_txgains {int gm_gain; int pga_gain; int pad_gain; int dac_gain; } ;
struct brcms_phy_lcnphy {scalar_t__ lcnphy_current_index; scalar_t__ lcnphy_tx_power_idx_override; } ;
struct TYPE_2__ {struct brcms_phy_lcnphy* pi_lcnphy; } ;
struct brcms_phy {TYPE_1__ u; } ;
typedef  scalar_t__ s8 ;

/* Variables and functions */
 int /*<<< orphan*/  LCNPHY_TBL_ID_TXPWRCTL ; 
 scalar_t__ LCNPHY_TX_PWR_CTRL_GAIN_OFFSET ; 
 scalar_t__ LCNPHY_TX_PWR_CTRL_IQ_OFFSET ; 
 scalar_t__ LCNPHY_TX_PWR_CTRL_LO_OFFSET ; 
 int /*<<< orphan*/  LCNPHY_TX_PWR_CTRL_OFF ; 
 scalar_t__ LCNPHY_TX_PWR_CTRL_PWR_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (struct brcms_phy*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC2 (struct brcms_phy*,struct phytbl_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct brcms_phy*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct brcms_phy*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct brcms_phy*,struct lcnphy_txgains*) ; 
 int /*<<< orphan*/  FUNC6 (struct brcms_phy*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct brcms_phy*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct brcms_phy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct brcms_phy*) ; 

void FUNC10(struct brcms_phy *pi, int index)
{
	struct phytbl_info tab;
	u16 a, b;
	u8 bb_mult;
	u32 bbmultiqcomp, txgain, locoeffs, rfpower;
	struct lcnphy_txgains gains;
	struct brcms_phy_lcnphy *pi_lcn = pi->u.pi_lcnphy;

	pi_lcn->lcnphy_tx_power_idx_override = (s8) index;
	pi_lcn->lcnphy_current_index = (u8) index;

	tab.tbl_id = LCNPHY_TBL_ID_TXPWRCTL;
	tab.tbl_width = 32;
	tab.tbl_len = 1;

	FUNC8(pi, LCNPHY_TX_PWR_CTRL_OFF);

	tab.tbl_offset = LCNPHY_TX_PWR_CTRL_IQ_OFFSET + index;
	tab.tbl_ptr = &bbmultiqcomp;
	FUNC2(pi, &tab);

	tab.tbl_offset = LCNPHY_TX_PWR_CTRL_GAIN_OFFSET + index;
	tab.tbl_width = 32;
	tab.tbl_ptr = &txgain;
	FUNC2(pi, &tab);

	gains.gm_gain = (u16) (txgain & 0xff);
	gains.pga_gain = (u16) (txgain >> 8) & 0xff;
	gains.pad_gain = (u16) (txgain >> 16) & 0xff;
	gains.dac_gain = (u16) (bbmultiqcomp >> 28) & 0x07;
	FUNC5(pi, &gains);
	FUNC4(pi, (u16) (txgain >> 24) & 0x7f);

	bb_mult = (u8) ((bbmultiqcomp >> 20) & 0xff);
	FUNC3(pi, bb_mult);

	FUNC1(pi);

	if (!FUNC9(pi)) {

		a = (u16) ((bbmultiqcomp >> 10) & 0x3ff);
		b = (u16) (bbmultiqcomp & 0x3ff);
		FUNC6(pi, a, b);

		tab.tbl_offset = LCNPHY_TX_PWR_CTRL_LO_OFFSET + index;
		tab.tbl_ptr = &locoeffs;
		FUNC2(pi, &tab);

		FUNC7(pi, (u16) locoeffs);

		tab.tbl_offset = LCNPHY_TX_PWR_CTRL_PWR_OFFSET + index;
		tab.tbl_ptr = &rfpower;
		FUNC2(pi, &tab);
		FUNC0(pi, 0x6a6, (0x1fff << 0), (rfpower * 8) << 0);

	}
}