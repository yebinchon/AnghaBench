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
struct TYPE_2__ {int radio_ver; int /*<<< orphan*/  channel; } ;
struct b43_wldev {TYPE_1__ phy; int /*<<< orphan*/  wl; } ;

/* Variables and functions */
 int B43_MACCTL_ENABLED ; 
 int /*<<< orphan*/  B43_MMIO_MACCTL ; 
 int /*<<< orphan*/  B43_PHY_HT_RF_CTL_CMD ; 
 int /*<<< orphan*/  B43_PHY_HT_RF_CTL_CMD_CHIP0_PU ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*) ; 
 int FUNC3 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC6(struct b43_wldev *dev,
					bool blocked)
{
	if (FUNC3(dev, B43_MMIO_MACCTL) & B43_MACCTL_ENABLED)
		FUNC5(dev->wl, "MAC not suspended\n");

	if (blocked) {
		FUNC1(dev, B43_PHY_HT_RF_CTL_CMD,
			     ~B43_PHY_HT_RF_CTL_CMD_CHIP0_PU);
	} else {
		if (dev->phy.radio_ver == 0x2059)
			FUNC2(dev);
		else
			FUNC0(1);

		FUNC4(dev, dev->phy.channel);
	}
}