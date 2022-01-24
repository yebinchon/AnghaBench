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
typedef  int u8 ;
typedef  int u16 ;
struct b43_phy {int analog; int radio_ver; int rev; int channel; scalar_t__ gmode; struct b43_phy_g* g; } ;
struct b43_wldev {scalar_t__ bad_frames_preempt; TYPE_1__* dev; struct b43_phy phy; } ;
struct b43_phy_g {int /*<<< orphan*/  tx_control; int /*<<< orphan*/  rfatt; int /*<<< orphan*/  bbatt; } ;
struct TYPE_2__ {scalar_t__ board_vendor; scalar_t__ board_type; } ;

/* Variables and functions */
 int B43_MMIO_PHY_RADIO ; 
 int B43_PHY_RADIO_BITFIELD ; 
 scalar_t__ SSB_BOARDVENDOR_BCM ; 
 scalar_t__ SSB_BOARD_BU4306 ; 
 int /*<<< orphan*/  FUNC0 (struct b43_wldev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct b43_wldev*,int,int) ; 
 int FUNC6 (struct b43_wldev*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct b43_wldev*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct b43_wldev*,int,int) ; 

__attribute__((used)) static void FUNC9(struct b43_wldev *dev)
{
	struct b43_phy *phy = &dev->phy;
	struct b43_phy_g *gphy = phy->g;
	u16 offset, value;
	u8 old_channel;

	if (phy->analog == 1) {
		FUNC4(dev, 0x007A, 0x0050);
	}
	if ((dev->dev->board_vendor != SSB_BOARDVENDOR_BCM) &&
	    (dev->dev->board_type != SSB_BOARD_BU4306)) {
		value = 0x2120;
		for (offset = 0x00A8; offset < 0x00C7; offset++) {
			FUNC3(dev, offset, value);
			value += 0x202;
		}
	}
	FUNC1(dev, 0x0035, 0xF0FF, 0x0700);
	if (phy->radio_ver == 0x2050)
		FUNC3(dev, 0x0038, 0x0667);

	if (phy->gmode || phy->rev >= 2) {
		if (phy->radio_ver == 0x2050) {
			FUNC4(dev, 0x007A, 0x0020);
			FUNC4(dev, 0x0051, 0x0004);
		}
		FUNC8(dev, B43_MMIO_PHY_RADIO, 0x0000);

		FUNC2(dev, 0x0802, 0x0100);
		FUNC2(dev, 0x042B, 0x2000);

		FUNC3(dev, 0x001C, 0x186A);

		FUNC1(dev, 0x0013, 0x00FF, 0x1900);
		FUNC1(dev, 0x0035, 0xFFC0, 0x0064);
		FUNC1(dev, 0x005D, 0xFF80, 0x000A);
	}

	if (dev->bad_frames_preempt) {
		FUNC2(dev, B43_PHY_RADIO_BITFIELD, (1 << 11));
	}

	if (phy->analog == 1) {
		FUNC3(dev, 0x0026, 0xCE00);
		FUNC3(dev, 0x0021, 0x3763);
		FUNC3(dev, 0x0022, 0x1BC3);
		FUNC3(dev, 0x0023, 0x06F9);
		FUNC3(dev, 0x0024, 0x037E);
	} else
		FUNC3(dev, 0x0026, 0xCC00);
	FUNC3(dev, 0x0030, 0x00C6);
	FUNC8(dev, 0x03EC, 0x3F22);

	if (phy->analog == 1)
		FUNC3(dev, 0x0020, 0x3E1C);
	else
		FUNC3(dev, 0x0020, 0x301C);

	if (phy->analog == 0)
		FUNC8(dev, 0x03E4, 0x3000);

	old_channel = phy->channel;
	/* Force to channel 7, even if not supported. */
	FUNC0(dev, 7, 0);

	if (phy->radio_ver != 0x2050) {
		FUNC5(dev, 0x0075, 0x0080);
		FUNC5(dev, 0x0079, 0x0081);
	}

	FUNC5(dev, 0x0050, 0x0020);
	FUNC5(dev, 0x0050, 0x0023);

	if (phy->radio_ver == 0x2050) {
		FUNC5(dev, 0x0050, 0x0020);
		FUNC5(dev, 0x005A, 0x0070);
	}

	FUNC5(dev, 0x005B, 0x007B);
	FUNC5(dev, 0x005C, 0x00B0);

	FUNC4(dev, 0x007A, 0x0007);

	FUNC0(dev, old_channel, 0);

	FUNC3(dev, 0x0014, 0x0080);
	FUNC3(dev, 0x0032, 0x00CA);
	FUNC3(dev, 0x002A, 0x88A3);

	FUNC7(dev, &gphy->bbatt, &gphy->rfatt, gphy->tx_control);

	if (phy->radio_ver == 0x2050)
		FUNC5(dev, 0x005D, 0x000D);

	FUNC8(dev, 0x03E4, (FUNC6(dev, 0x03E4) & 0xFFC0) | 0x0004);
}