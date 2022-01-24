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
struct TYPE_2__ {int rev; } ;
struct b43_wldev {TYPE_1__ phy; int /*<<< orphan*/  wl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 scalar_t__ NL80211_BAND_2GHZ ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_wldev*,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct b43_wldev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct b43_wldev*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct b43_wldev*,int,int) ; 

__attribute__((used)) static void FUNC10(struct b43_wldev *dev)
{
	if (FUNC1(dev->wl) == NL80211_BAND_2GHZ) {
		FUNC9(dev, 0x09c, 0x0020);
		FUNC9(dev, 0x105, 0x0008);
	} else {
		/* TODO */
	}
	FUNC9(dev, 0x032, 0x0062);
	FUNC9(dev, 0x033, 0x0019);
	FUNC9(dev, 0x090, 0x0010);
	FUNC9(dev, 0x010, 0x0000);
	if (dev->phy.rev == 1) {
		FUNC9(dev, 0x060, 0x007f);
		FUNC9(dev, 0x061, 0x0072);
		FUNC9(dev, 0x062, 0x007f);
	}
	FUNC9(dev, 0x01d, 0x0002);
	FUNC9(dev, 0x01e, 0x0006);

	FUNC5(dev, 0x4ea, 0x4688);
	FUNC4(dev, 0x4eb, ~0x7, 0x2);
	FUNC3(dev, 0x4eb, ~0x01c0);
	FUNC4(dev, 0x46a, 0xff00, 0x19);

	FUNC2(dev, FUNC0(0x00, 0x55), 0);

	FUNC6(dev, 0x05b, (u16) ~0xff02);
	FUNC8(dev, 0x004, 0x40);
	FUNC8(dev, 0x120, 0x10);
	FUNC8(dev, 0x078, 0x80);
	FUNC8(dev, 0x129, 0x2);
	FUNC8(dev, 0x057, 0x1);
	FUNC8(dev, 0x05b, 0x2);

	/* TODO: wait for some bit to be set */
	FUNC7(dev, 0x05c);

	FUNC6(dev, 0x05b, (u16) ~0xff02);
	FUNC6(dev, 0x057, (u16) ~0xff01);

	FUNC5(dev, 0x933, 0x2d6b);
	FUNC5(dev, 0x934, 0x2d6b);
	FUNC5(dev, 0x935, 0x2d6b);
	FUNC5(dev, 0x936, 0x2d6b);
	FUNC5(dev, 0x937, 0x016b);

	FUNC6(dev, 0x057, (u16) ~0xff02);
	FUNC9(dev, 0x0c2, 0x006f);
}