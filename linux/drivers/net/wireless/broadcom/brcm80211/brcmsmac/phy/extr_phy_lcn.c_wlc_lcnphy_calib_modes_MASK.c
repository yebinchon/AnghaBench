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
typedef  int uint ;
typedef  int /*<<< orphan*/  u16 ;
struct brcms_phy_pub {int dummy; } ;
struct brcms_phy_lcnphy {int lcnphy_cal_counter; int /*<<< orphan*/  lcnphy_cal_temper; } ;
struct TYPE_2__ {struct brcms_phy_lcnphy* pi_lcnphy; } ;
struct brcms_phy {TYPE_1__ u; } ;

/* Variables and functions */
#define  LCNPHY_PERICAL_TEMPBASED_TXPWRCTRL 132 
 int FUNC0 (int /*<<< orphan*/ ) ; 
#define  PHY_FULLCAL 131 
#define  PHY_PERICAL_CHAN 130 
#define  PHY_PERICAL_PHYINIT 129 
#define  PHY_PERICAL_WATCHDOG 128 
 int /*<<< orphan*/  FUNC1 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC2 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC3 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC4 (struct brcms_phy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC6 (struct brcms_phy_pub*) ; 

void FUNC7(struct brcms_phy *pi, uint mode)
{
	u16 temp_new;
	int temp1, temp2, temp_diff;
	struct brcms_phy_lcnphy *pi_lcn = pi->u.pi_lcnphy;

	switch (mode) {
	case PHY_PERICAL_CHAN:
		break;
	case PHY_FULLCAL:
		FUNC3(pi);
		break;
	case PHY_PERICAL_PHYINIT:
		FUNC3(pi);
		break;
	case PHY_PERICAL_WATCHDOG:
		if (FUNC5(pi)) {
			temp_new = FUNC4(pi, 0);
			temp1 = FUNC0(temp_new);
			temp2 = FUNC0(pi_lcn->lcnphy_cal_temper);
			temp_diff = temp1 - temp2;
			if ((pi_lcn->lcnphy_cal_counter > 90) ||
			    (temp_diff > 60) || (temp_diff < -60)) {
				FUNC2(pi);
				FUNC1(pi);
				pi_lcn->lcnphy_cal_temper = temp_new;
				pi_lcn->lcnphy_cal_counter = 0;
			} else
				pi_lcn->lcnphy_cal_counter++;
		}
		break;
	case LCNPHY_PERICAL_TEMPBASED_TXPWRCTRL:
		if (FUNC5(pi))
			FUNC6(
				(struct brcms_phy_pub *) pi);
		break;
	}
}