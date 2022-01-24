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
typedef  scalar_t__ u16 ;
struct brcms_phy_lcnphy {int lcnphy_tx_power_idx_override; scalar_t__ lcnphy_current_index; int /*<<< orphan*/  lcnphy_tssi_tx_cnt; int /*<<< orphan*/  lcnphy_tssi_npt; int /*<<< orphan*/  lcnphy_tssi_idx; } ;
struct TYPE_2__ {struct brcms_phy_lcnphy* pi_lcnphy; } ;
struct brcms_phy {TYPE_1__ u; } ;
typedef  scalar_t__ s8 ;

/* Variables and functions */
 scalar_t__ LCNPHY_TX_PWR_CTRL_HW ; 
 scalar_t__ LCNPHY_TX_PWR_CTRL_TEMPBASED ; 
 int /*<<< orphan*/  RADIO_2064_REG11F ; 
 int /*<<< orphan*/  FUNC0 (struct brcms_phy*,int,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct brcms_phy*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct brcms_phy*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC4 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC5 (struct brcms_phy*) ; 
 scalar_t__ FUNC6 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC7 (struct brcms_phy*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct brcms_phy*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct brcms_phy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct brcms_phy*,scalar_t__) ; 
 scalar_t__ FUNC11 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC12 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC13 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC14 (struct brcms_phy*) ; 

void FUNC15(struct brcms_phy *pi, u16 mode)
{
	u16 old_mode = FUNC6(pi);
	s8 index;
	struct brcms_phy_lcnphy *pi_lcn = pi->u.pi_lcnphy;

	mode = FUNC8(pi, mode);
	old_mode = FUNC8(pi, old_mode);

	FUNC0(pi, 0x6da, (0x1 << 6),
		    ((LCNPHY_TX_PWR_CTRL_HW == mode) ? 1 : 0) << 6);

	FUNC0(pi, 0x6a3, (0x1 << 4),
		    ((LCNPHY_TX_PWR_CTRL_HW == mode) ? 0 : 1) << 4);

	if (old_mode != mode) {
		if (LCNPHY_TX_PWR_CTRL_HW == old_mode) {

			FUNC13(pi);

			FUNC3(pi);
		}
		if (LCNPHY_TX_PWR_CTRL_HW == mode) {

			FUNC14(pi);

			FUNC7(pi,
							pi_lcn->
							lcnphy_tssi_idx);
			FUNC9(pi, pi_lcn->lcnphy_tssi_npt);
			FUNC1(pi, RADIO_2064_REG11F, 0x4, 0);

			pi_lcn->lcnphy_tssi_tx_cnt =
				FUNC12(pi);

			FUNC4(pi);
			pi_lcn->lcnphy_tx_power_idx_override = -1;
		} else
			FUNC5(pi);

		FUNC0(pi, 0x4a4,
			    ((0x1 << 15) | (0x1 << 14) | (0x1 << 13)), mode);
		if (mode == LCNPHY_TX_PWR_CTRL_TEMPBASED) {
			index = FUNC11(pi);
			FUNC10(pi, index);
			pi_lcn->lcnphy_current_index = (s8)
						       ((FUNC2(pi,
								      0x4a9) &
							 0xFF) / 2);
		}
	}
}