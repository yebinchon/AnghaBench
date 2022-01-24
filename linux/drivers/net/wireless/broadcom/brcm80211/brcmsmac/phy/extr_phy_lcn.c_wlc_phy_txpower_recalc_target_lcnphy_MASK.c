#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct brcms_phy {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LCNPHY_PERICAL_TEMPBASED_TXPWRCTRL ; 
 int /*<<< orphan*/  LCNPHY_TX_PWR_CTRL_OFF ; 
 int /*<<< orphan*/  FUNC0 (struct brcms_phy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC2 (struct brcms_phy*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct brcms_phy*) ; 
 scalar_t__ FUNC4 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC5 (struct brcms_phy*) ; 

void FUNC6(struct brcms_phy *pi)
{
	u16 pwr_ctrl;
	if (FUNC3(pi)) {
		FUNC0(pi, LCNPHY_PERICAL_TEMPBASED_TXPWRCTRL);
	} else if (FUNC4(pi)) {
		pwr_ctrl = FUNC1(pi);
		FUNC2(pi, LCNPHY_TX_PWR_CTRL_OFF);
		FUNC5(pi);
		FUNC2(pi, pwr_ctrl);
	}
}