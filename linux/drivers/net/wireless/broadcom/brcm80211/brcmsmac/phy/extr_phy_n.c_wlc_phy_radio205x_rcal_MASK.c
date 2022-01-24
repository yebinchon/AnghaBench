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
typedef  int u16 ;
struct TYPE_2__ {int radiorev; int /*<<< orphan*/  phy_rev; } ;
struct brcms_phy {TYPE_1__ pubpi; } ;

/* Variables and functions */
 int MAX_205x_RCAL_WAITLOOPS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int RADIO_2056_SYN ; 
 int RADIO_2056_SYN_PLL_MAST2 ; 
 int RADIO_2056_SYN_RCAL_CODE_OUT ; 
 int RADIO_2056_SYN_RCAL_MASTER ; 
 int /*<<< orphan*/  RADIO_2057_BANDGAP_RCAL_TRIM ; 
 int /*<<< orphan*/  RADIO_2057_IQTEST_SEL_PU ; 
 int /*<<< orphan*/  RADIO_2057_RCAL_CONFIG ; 
 int RADIO_2057_RCAL_STATUS ; 
 int /*<<< orphan*/  RADIO_2057_TEMPSENSE_CONFIG ; 
 int /*<<< orphan*/  RADIO_2057v7_IQTEST_SEL_PU2 ; 
 scalar_t__ FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct brcms_phy*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct brcms_phy*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC5 (struct brcms_phy*,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct brcms_phy*,int,int) ; 

__attribute__((used)) static u16 FUNC8(struct brcms_phy *pi)
{
	u16 rcal_reg = 0;
	int i;

	if (FUNC0(pi->pubpi.phy_rev, 7)) {

		if (pi->pubpi.radiorev == 5) {

			FUNC3(pi, 0x342, ~(0x1 << 1));

			FUNC6(10);

			FUNC4(pi, RADIO_2057_IQTEST_SEL_PU, 0x1, 0x1);
			FUNC4(pi, RADIO_2057v7_IQTEST_SEL_PU2, 0x2,
				      0x1);
		}
		FUNC4(pi, RADIO_2057_RCAL_CONFIG, 0x1, 0x1);

		FUNC6(10);

		FUNC4(pi, RADIO_2057_RCAL_CONFIG, 0x3, 0x3);

		for (i = 0; i < MAX_205x_RCAL_WAITLOOPS; i++) {
			rcal_reg = FUNC5(pi, RADIO_2057_RCAL_STATUS);
			if (rcal_reg & 0x1)
				break;

			FUNC6(100);
		}

		if (FUNC2(i == MAX_205x_RCAL_WAITLOOPS,
			 "HW error: radio calib2"))
			return 0;

		FUNC4(pi, RADIO_2057_RCAL_CONFIG, 0x2, 0x0);

		rcal_reg = FUNC5(pi, RADIO_2057_RCAL_STATUS) & 0x3e;

		FUNC4(pi, RADIO_2057_RCAL_CONFIG, 0x1, 0x0);
		if (pi->pubpi.radiorev == 5) {

			FUNC4(pi, RADIO_2057_IQTEST_SEL_PU, 0x1, 0x0);
			FUNC4(pi, RADIO_2057v7_IQTEST_SEL_PU2, 0x2,
				      0x0);
		}

		if ((pi->pubpi.radiorev <= 4) || (pi->pubpi.radiorev == 6)) {

			FUNC4(pi, RADIO_2057_TEMPSENSE_CONFIG, 0x3c,
				      rcal_reg);
			FUNC4(pi, RADIO_2057_BANDGAP_RCAL_TRIM, 0xf0,
				      rcal_reg << 2);
		}

	} else if (FUNC1(pi->pubpi.phy_rev, 3)) {
		u16 savereg;

		savereg =
			FUNC5(
				pi,
				RADIO_2056_SYN_PLL_MAST2 |
				RADIO_2056_SYN);
		FUNC7(pi, RADIO_2056_SYN_PLL_MAST2 | RADIO_2056_SYN,
				savereg | 0x7);
		FUNC6(10);

		FUNC7(pi, RADIO_2056_SYN_RCAL_MASTER | RADIO_2056_SYN,
				0x1);
		FUNC6(10);

		FUNC7(pi, RADIO_2056_SYN_RCAL_MASTER | RADIO_2056_SYN,
				0x9);

		for (i = 0; i < MAX_205x_RCAL_WAITLOOPS; i++) {
			rcal_reg = FUNC5(
				pi,
				RADIO_2056_SYN_RCAL_CODE_OUT |
				RADIO_2056_SYN);
			if (rcal_reg & 0x80)
				break;

			FUNC6(100);
		}

		if (FUNC2(i == MAX_205x_RCAL_WAITLOOPS,
			 "HW error: radio calib3"))
			return 0;

		FUNC7(pi, RADIO_2056_SYN_RCAL_MASTER | RADIO_2056_SYN,
				0x1);

		rcal_reg =
			FUNC5(pi,
				       RADIO_2056_SYN_RCAL_CODE_OUT |
				       RADIO_2056_SYN);

		FUNC7(pi, RADIO_2056_SYN_RCAL_MASTER | RADIO_2056_SYN,
				0x0);

		FUNC7(pi, RADIO_2056_SYN_PLL_MAST2 | RADIO_2056_SYN,
				savereg);

		return rcal_reg & 0x1f;
	}
	return rcal_reg & 0x3e;
}