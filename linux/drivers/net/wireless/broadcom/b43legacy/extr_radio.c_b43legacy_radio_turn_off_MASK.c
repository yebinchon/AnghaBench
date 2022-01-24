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
typedef  int u16 ;
struct TYPE_6__ {int rfover; int rfoverval; int valid; } ;
struct b43legacy_phy {int radio_on; scalar_t__ type; TYPE_3__ radio_off_context; } ;
struct b43legacy_wldev {int /*<<< orphan*/  wl; TYPE_2__* dev; struct b43legacy_phy phy; } ;
struct TYPE_4__ {int revision; } ;
struct TYPE_5__ {TYPE_1__ id; } ;

/* Variables and functions */
 scalar_t__ B43legacy_PHYTYPE_G ; 
 int B43legacy_PHY_RFOVER ; 
 int B43legacy_PHY_RFOVERVAL ; 
 int FUNC0 (struct b43legacy_wldev*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct b43legacy_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

void FUNC3(struct b43legacy_wldev *dev, bool force)
{
	struct b43legacy_phy *phy = &dev->phy;

	if (!phy->radio_on && !force)
		return;

	if (phy->type == B43legacy_PHYTYPE_G && dev->dev->id.revision >= 5) {
		u16 rfover, rfoverval;

		rfover = FUNC0(dev, B43legacy_PHY_RFOVER);
		rfoverval = FUNC0(dev, B43legacy_PHY_RFOVERVAL);
		if (!force) {
			phy->radio_off_context.rfover = rfover;
			phy->radio_off_context.rfoverval = rfoverval;
			phy->radio_off_context.valid = true;
		}
		FUNC1(dev, B43legacy_PHY_RFOVER, rfover | 0x008C);
		FUNC1(dev, B43legacy_PHY_RFOVERVAL,
				    rfoverval & 0xFF73);
	} else
		FUNC1(dev, 0x0015, 0xAA00);
	phy->radio_on = false;
	FUNC2(dev->wl, "Radio initialized\n");
}