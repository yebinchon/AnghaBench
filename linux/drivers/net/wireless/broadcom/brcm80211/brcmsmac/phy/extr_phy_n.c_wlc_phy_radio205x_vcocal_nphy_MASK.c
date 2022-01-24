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
struct TYPE_2__ {int /*<<< orphan*/  phy_rev; } ;
struct brcms_phy {TYPE_1__ pubpi; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RADIO_2056_SYN_PLL_MAST3 ; 
 int /*<<< orphan*/  RADIO_2056_SYN_PLL_VCOCAL12 ; 
 int /*<<< orphan*/  RADIO_2057_RFPLL_MISC_CAL_RESETN ; 
 int /*<<< orphan*/  RADIO_2057_RFPLL_MISC_EN ; 
 int /*<<< orphan*/  FUNC1 (struct brcms_phy*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct brcms_phy*,int /*<<< orphan*/ ,int) ; 

void FUNC4(struct brcms_phy *pi)
{
	if (FUNC0(pi->pubpi.phy_rev, 7)) {
		FUNC1(pi, RADIO_2057_RFPLL_MISC_EN, 0x01, 0x0);
		FUNC1(pi, RADIO_2057_RFPLL_MISC_CAL_RESETN, 0x04, 0x0);
		FUNC1(pi, RADIO_2057_RFPLL_MISC_CAL_RESETN, 0x04,
			      (1 << 2));
		FUNC1(pi, RADIO_2057_RFPLL_MISC_EN, 0x01, 0x01);
	} else if (FUNC0(pi->pubpi.phy_rev, 3)) {
		FUNC3(pi, RADIO_2056_SYN_PLL_VCOCAL12, 0x0);
		FUNC3(pi, RADIO_2056_SYN_PLL_MAST3, 0x38);
		FUNC3(pi, RADIO_2056_SYN_PLL_MAST3, 0x18);
		FUNC3(pi, RADIO_2056_SYN_PLL_MAST3, 0x38);
		FUNC3(pi, RADIO_2056_SYN_PLL_MAST3, 0x39);
	}

	FUNC2(300);
}