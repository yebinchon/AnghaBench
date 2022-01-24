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
struct b43_phy {unsigned int channel; scalar_t__ gmode; scalar_t__ radio_on; struct b43_phy_g* g; } ;
struct b43_wldev {struct b43_phy phy; } ;
struct TYPE_2__ {int valid; int rfover; int rfoverval; } ;
struct b43_phy_g {TYPE_1__ radio_off_context; } ;

/* Variables and functions */
 int B43_PHY_RFOVER ; 
 int B43_PHY_RFOVERVAL ; 
 int /*<<< orphan*/  FUNC0 (struct b43_wldev*,unsigned int,int) ; 
 int FUNC1 (struct b43_wldev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(struct b43_wldev *dev,
					bool blocked)
{
	struct b43_phy *phy = &dev->phy;
	struct b43_phy_g *gphy = phy->g;
	unsigned int channel;

	FUNC3();

	if (!blocked) {
		/* Turn radio ON */
		if (phy->radio_on)
			return;

		FUNC2(dev, 0x0015, 0x8000);
		FUNC2(dev, 0x0015, 0xCC00);
		FUNC2(dev, 0x0015, (phy->gmode ? 0x00C0 : 0x0000));
		if (gphy->radio_off_context.valid) {
			/* Restore the RFover values. */
			FUNC2(dev, B43_PHY_RFOVER,
				      gphy->radio_off_context.rfover);
			FUNC2(dev, B43_PHY_RFOVERVAL,
				      gphy->radio_off_context.rfoverval);
			gphy->radio_off_context.valid = false;
		}
		channel = phy->channel;
		FUNC0(dev, 6, 1);
		FUNC0(dev, channel, 0);
	} else {
		/* Turn radio OFF */
		u16 rfover, rfoverval;

		rfover = FUNC1(dev, B43_PHY_RFOVER);
		rfoverval = FUNC1(dev, B43_PHY_RFOVERVAL);
		gphy->radio_off_context.rfover = rfover;
		gphy->radio_off_context.rfoverval = rfoverval;
		gphy->radio_off_context.valid = true;
		FUNC2(dev, B43_PHY_RFOVER, rfover | 0x008C);
		FUNC2(dev, B43_PHY_RFOVERVAL, rfoverval & 0xFF73);
	}
}