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
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {struct b43_phy_lp* lp; } ;
struct b43_wldev {TYPE_1__ phy; } ;
struct b43_phy_lp {int txpctl_mode; } ;

/* Variables and functions */
#define  B43_LPPHY_TXPCTL_HW 130 
#define  B43_LPPHY_TXPCTL_OFF 129 
#define  B43_LPPHY_TXPCTL_SW 128 
 int /*<<< orphan*/  B43_LPPHY_TX_PWR_CTL_CMD ; 
 int B43_LPPHY_TX_PWR_CTL_CMD_MODE ; 
 int /*<<< orphan*/  B43_LPPHY_TX_PWR_CTL_CMD_MODE_HW ; 
 int /*<<< orphan*/  B43_LPPHY_TX_PWR_CTL_CMD_MODE_OFF ; 
 int /*<<< orphan*/  B43_LPPHY_TX_PWR_CTL_CMD_MODE_SW ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct b43_wldev *dev)
{
	struct b43_phy_lp *lpphy = dev->phy.lp;
	u16 ctl;

	switch (lpphy->txpctl_mode) {
	case B43_LPPHY_TXPCTL_OFF:
		ctl = B43_LPPHY_TX_PWR_CTL_CMD_MODE_OFF;
		break;
	case B43_LPPHY_TXPCTL_HW:
		ctl = B43_LPPHY_TX_PWR_CTL_CMD_MODE_HW;
		break;
	case B43_LPPHY_TXPCTL_SW:
		ctl = B43_LPPHY_TX_PWR_CTL_CMD_MODE_SW;
		break;
	default:
		ctl = 0;
		FUNC0(1);
	}
	FUNC1(dev, B43_LPPHY_TX_PWR_CTL_CMD,
			~B43_LPPHY_TX_PWR_CTL_CMD_MODE & 0xFFFF, ctl);
}