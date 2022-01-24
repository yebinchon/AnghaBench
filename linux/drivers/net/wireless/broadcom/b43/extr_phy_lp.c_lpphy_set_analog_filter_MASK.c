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
struct TYPE_2__ {int rev; struct b43_phy_lp* lp; } ;
struct b43_wldev {TYPE_1__ phy; } ;
struct b43_phy_lp {scalar_t__ rc_cap; } ;

/* Variables and functions */
 int /*<<< orphan*/  B2063_TX_BB_SP3 ; 
 int /*<<< orphan*/  B43_LPPHY_LP_PHY_CTL ; 
 int /*<<< orphan*/  FUNC0 (struct b43_wldev*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*) ; 

__attribute__((used)) static void FUNC3(struct b43_wldev *dev, int channel)
{
	struct b43_phy_lp *lpphy = dev->phy.lp;
	u16 tmp = (channel == 14); //SPEC FIXME check japanwidefilter!

	if (dev->phy.rev < 2) { //SPEC FIXME Isn't this rev0/1-specific?
		FUNC0(dev, B43_LPPHY_LP_PHY_CTL, 0xFCFF, tmp << 9);
		if ((dev->phy.rev == 1) && (lpphy->rc_cap))
			FUNC2(dev);
	} else {
		FUNC1(dev, B2063_TX_BB_SP3, 0x3F);
	}
}