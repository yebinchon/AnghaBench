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
typedef  int u8 ;
struct TYPE_6__ {int antswctrllut; } ;
struct TYPE_5__ {int antswctrllut; } ;
struct TYPE_4__ {int /*<<< orphan*/  phy_rev; } ;
struct brcms_phy {int aa2g; TYPE_3__ srom_fem5g; TYPE_2__ srom_fem2g; int /*<<< orphan*/  radio_chanspec; TYPE_1__ pubpi; scalar_t__ phy_init_por; } ;

/* Variables and functions */
 size_t ANT_SWCTRL_TBL_REV3_IDX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NPHY_TBL_ID_ANTSWCTRLLUT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * ant_sw_ctrl_tbl_rev8 ; 
 int /*<<< orphan*/ * ant_sw_ctrl_tbl_rev8_2057v7_core0 ; 
 int /*<<< orphan*/ * ant_sw_ctrl_tbl_rev8_2057v7_core1 ; 
 int /*<<< orphan*/ * ant_sw_ctrl_tbl_rev8_2o3 ; 
 int /*<<< orphan*/ * mimophytbl_info_rev0_volatile ; 
 int /*<<< orphan*/ * mimophytbl_info_rev3_volatile ; 
 int /*<<< orphan*/ * mimophytbl_info_rev3_volatile1 ; 
 int /*<<< orphan*/ * mimophytbl_info_rev3_volatile2 ; 
 int /*<<< orphan*/ * mimophytbl_info_rev3_volatile3 ; 
 size_t mimophytbl_info_sz_rev0_volatile ; 
 size_t mimophytbl_info_sz_rev3_volatile ; 
 int /*<<< orphan*/  FUNC2 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC3 (struct brcms_phy*,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct brcms_phy*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct brcms_phy *pi)
{
	uint idx = 0;
	u8 antswctrllut;

	if (pi->phy_init_por)
		FUNC2(pi);

	if (FUNC1(pi->pubpi.phy_rev, 7)) {

		antswctrllut = FUNC0(pi->radio_chanspec) ?
			       pi->srom_fem2g.antswctrllut : pi->srom_fem5g.
			       antswctrllut;

		switch (antswctrllut) {
		case 0:

			break;

		case 1:

			if (pi->aa2g == 7)
				FUNC3(
					pi,
					NPHY_TBL_ID_ANTSWCTRLLUT,
					2, 0x21, 8,
					&ant_sw_ctrl_tbl_rev8_2o3[0]);
			else
				FUNC3(
					pi,
					NPHY_TBL_ID_ANTSWCTRLLUT,
					2, 0x21, 8,
					&ant_sw_ctrl_tbl_rev8
					[0]);

			FUNC3(pi, NPHY_TBL_ID_ANTSWCTRLLUT,
						 2, 0x25, 8,
						 &ant_sw_ctrl_tbl_rev8[2]);
			FUNC3(pi, NPHY_TBL_ID_ANTSWCTRLLUT,
						 2, 0x29, 8,
						 &ant_sw_ctrl_tbl_rev8[4]);
			break;

		case 2:

			FUNC3(
				pi, NPHY_TBL_ID_ANTSWCTRLLUT,
				2, 0x1, 8,
				&ant_sw_ctrl_tbl_rev8_2057v7_core0[0]);
			FUNC3(
				pi, NPHY_TBL_ID_ANTSWCTRLLUT,
				2, 0x5, 8,
				&ant_sw_ctrl_tbl_rev8_2057v7_core0[2]);
			FUNC3(
				pi, NPHY_TBL_ID_ANTSWCTRLLUT,
				2, 0x9, 8,
				&ant_sw_ctrl_tbl_rev8_2057v7_core0[4]);

			FUNC3(
				pi, NPHY_TBL_ID_ANTSWCTRLLUT,
				2, 0x21, 8,
				&ant_sw_ctrl_tbl_rev8_2057v7_core1[0]);
			FUNC3(
				pi, NPHY_TBL_ID_ANTSWCTRLLUT,
				2, 0x25, 8,
				&ant_sw_ctrl_tbl_rev8_2057v7_core1[2]);
			FUNC3(
				pi, NPHY_TBL_ID_ANTSWCTRLLUT,
				2, 0x29, 8,
				&ant_sw_ctrl_tbl_rev8_2057v7_core1[4]);
			break;

		default:
			break;
		}

	} else if (FUNC1(pi->pubpi.phy_rev, 3)) {
		for (idx = 0; idx < mimophytbl_info_sz_rev3_volatile; idx++) {

			if (idx == ANT_SWCTRL_TBL_REV3_IDX) {
				antswctrllut =
					FUNC0(pi->radio_chanspec) ?
					pi->srom_fem2g.antswctrllut :
					pi->srom_fem5g.antswctrllut;
				switch (antswctrllut) {
				case 0:
					FUNC4(
						pi,
						&mimophytbl_info_rev3_volatile
						[idx]);
					break;
				case 1:
					FUNC4(
						pi,
						&mimophytbl_info_rev3_volatile1
						[idx]);
					break;
				case 2:
					FUNC4(
						pi,
						&mimophytbl_info_rev3_volatile2
						[idx]);
					break;
				case 3:
					FUNC4(
						pi,
						&mimophytbl_info_rev3_volatile3
						[idx]);
					break;
				default:
					break;
				}
			} else {
				FUNC4(
					pi,
					&mimophytbl_info_rev3_volatile[idx]);
			}
		}
	} else {
		for (idx = 0; idx < mimophytbl_info_sz_rev0_volatile; idx++)
			FUNC4(pi,
						 &mimophytbl_info_rev0_volatile
						 [idx]);
	}
}