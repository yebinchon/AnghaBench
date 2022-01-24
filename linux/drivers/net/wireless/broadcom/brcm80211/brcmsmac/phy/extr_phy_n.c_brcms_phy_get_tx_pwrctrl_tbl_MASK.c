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
typedef  int /*<<< orphan*/  uint ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_5__ {int extpagain; } ;
struct TYPE_6__ {int radiorev; int /*<<< orphan*/  phy_rev; } ;
struct TYPE_4__ {int extpagain; } ;
struct brcms_phy {TYPE_2__ srom_fem2g; TYPE_3__ pubpi; TYPE_1__ srom_fem5g; int /*<<< orphan*/  radio_chanspec; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct brcms_phy*) ; 
 int /*<<< orphan*/ * nphy_tpc_5GHz_txgain_HiPwrEPA ; 
 int /*<<< orphan*/ * nphy_tpc_5GHz_txgain_rev3 ; 
 int /*<<< orphan*/ * nphy_tpc_5GHz_txgain_rev4 ; 
 int /*<<< orphan*/ * nphy_tpc_5GHz_txgain_rev5 ; 
 int /*<<< orphan*/ * nphy_tpc_txgain_HiPwrEPA ; 
 int /*<<< orphan*/ * nphy_tpc_txgain_epa_2057rev3 ; 
 int /*<<< orphan*/ * nphy_tpc_txgain_epa_2057rev5 ; 
 int /*<<< orphan*/ * nphy_tpc_txgain_rev3 ; 
 int /*<<< orphan*/ * FUNC4 (struct brcms_phy*) ; 

__attribute__((used)) static u32 *FUNC5(struct brcms_phy *pi)
{
	u32 *tx_pwrctrl_tbl = NULL;
	uint phyrev = pi->pubpi.phy_rev;

	if (FUNC3(pi)) {
		tx_pwrctrl_tbl =
			FUNC4(pi);
	} else {
		if (FUNC0(pi->radio_chanspec)) {
			if (FUNC2(phyrev, 3))
				tx_pwrctrl_tbl = nphy_tpc_5GHz_txgain_rev3;
			else if (FUNC2(phyrev, 4))
				tx_pwrctrl_tbl =
					(pi->srom_fem5g.extpagain == 3) ?
					nphy_tpc_5GHz_txgain_HiPwrEPA :
					nphy_tpc_5GHz_txgain_rev4;
			else
				tx_pwrctrl_tbl = nphy_tpc_5GHz_txgain_rev5;
		} else {
			if (FUNC1(phyrev, 7)) {
				if (pi->pubpi.radiorev == 3)
					tx_pwrctrl_tbl =
						nphy_tpc_txgain_epa_2057rev3;
				else if (pi->pubpi.radiorev == 5)
					tx_pwrctrl_tbl =
						nphy_tpc_txgain_epa_2057rev5;
			} else {
				if (FUNC1(phyrev, 5) &&
				   (pi->srom_fem2g.extpagain ==	3))
					tx_pwrctrl_tbl =
						nphy_tpc_txgain_HiPwrEPA;
				else
					tx_pwrctrl_tbl =
						nphy_tpc_txgain_rev3;
			}
		}
	}
	return tx_pwrctrl_tbl;
}