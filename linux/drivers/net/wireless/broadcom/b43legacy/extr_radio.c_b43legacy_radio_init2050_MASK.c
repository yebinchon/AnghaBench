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
typedef  int u32 ;
typedef  int u16 ;
struct b43legacy_phy {scalar_t__ type; int rev; int analog; int radio_rev; scalar_t__ gmode; int /*<<< orphan*/  channel; } ;
struct b43legacy_wldev {TYPE_3__* dev; struct b43legacy_phy phy; } ;
struct TYPE_6__ {TYPE_2__* bus; } ;
struct TYPE_4__ {int boardflags_lo; } ;
struct TYPE_5__ {TYPE_1__ sprom; } ;

/* Variables and functions */
 int B43legacy_BFL_EXTLNA ; 
 int B43legacy_MMIO_CHANNEL_EXT ; 
 int B43legacy_MMIO_PHY_RADIO ; 
 scalar_t__ B43legacy_PHYTYPE_B ; 
 int B43legacy_PHY_G_CRS ; 
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 
 int FUNC1 (struct b43legacy_wldev*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct b43legacy_wldev*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct b43legacy_wldev*,int,int) ; 
 int FUNC4 (struct b43legacy_wldev*) ; 
 int FUNC5 (struct b43legacy_wldev*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct b43legacy_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct b43legacy_wldev*,int,int) ; 
 int FUNC8 (struct b43legacy_wldev*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct b43legacy_wldev*,int,int) ; 
 int FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

u16 FUNC12(struct b43legacy_wldev *dev)
{
	struct b43legacy_phy *phy = &dev->phy;
	u16 backup[21] = { 0 };
	u16 ret;
	u16 i;
	u16 j;
	u32 tmp1 = 0;
	u32 tmp2 = 0;

	backup[0] = FUNC5(dev, 0x0043);
	backup[14] = FUNC5(dev, 0x0051);
	backup[15] = FUNC5(dev, 0x0052);
	backup[1] = FUNC2(dev, 0x0015);
	backup[16] = FUNC2(dev, 0x005A);
	backup[17] = FUNC2(dev, 0x0059);
	backup[18] = FUNC2(dev, 0x0058);
	if (phy->type == B43legacy_PHYTYPE_B) {
		backup[2] = FUNC2(dev, 0x0030);
		backup[3] = FUNC8(dev, 0x03EC);
		FUNC3(dev, 0x0030, 0x00FF);
		FUNC9(dev, 0x03EC, 0x3F3F);
	} else {
		if (phy->gmode) {
			backup[4] = FUNC2(dev, 0x0811);
			backup[5] = FUNC2(dev, 0x0812);
			backup[6] = FUNC2(dev, 0x0814);
			backup[7] = FUNC2(dev, 0x0815);
			backup[8] = FUNC2(dev,
						       B43legacy_PHY_G_CRS);
			backup[9] = FUNC2(dev, 0x0802);
			FUNC3(dev, 0x0814,
					    (FUNC2(dev, 0x0814)
					    | 0x0003));
			FUNC3(dev, 0x0815,
					    (FUNC2(dev, 0x0815)
					    & 0xFFFC));
			FUNC3(dev, B43legacy_PHY_G_CRS,
					    (FUNC2(dev,
					    B43legacy_PHY_G_CRS) & 0x7FFF));
			FUNC3(dev, 0x0802,
					    (FUNC2(dev, 0x0802)
					    & 0xFFFC));
			if (phy->rev > 1) { /* loopback gain enabled */
				backup[19] = FUNC2(dev, 0x080F);
				backup[20] = FUNC2(dev, 0x0810);
				if (phy->rev >= 3)
					FUNC3(dev, 0x080F,
							    0xC020);
				else
					FUNC3(dev, 0x080F,
							    0x8020);
				FUNC3(dev, 0x0810, 0x0000);
			}
			FUNC3(dev, 0x0812,
					    FUNC1(dev,
					    FUNC0(0, 1, 1)));
			if (phy->rev < 7 ||
			    !(dev->dev->bus->sprom.boardflags_lo
			    & B43legacy_BFL_EXTLNA))
				FUNC3(dev, 0x0811, 0x01B3);
			else
				FUNC3(dev, 0x0811, 0x09B3);
		}
	}
	FUNC9(dev, B43legacy_MMIO_PHY_RADIO,
			(FUNC8(dev, B43legacy_MMIO_PHY_RADIO)
					  | 0x8000));
	backup[10] = FUNC2(dev, 0x0035);
	FUNC3(dev, 0x0035,
			    (FUNC2(dev, 0x0035) & 0xFF7F));
	backup[11] = FUNC8(dev, 0x03E6);
	backup[12] = FUNC8(dev, B43legacy_MMIO_CHANNEL_EXT);

	/* Initialization */
	if (phy->analog == 0)
		FUNC9(dev, 0x03E6, 0x0122);
	else {
		if (phy->analog >= 2)
			FUNC3(dev, 0x0003,
					    (FUNC2(dev, 0x0003)
					    & 0xFFBF) | 0x0040);
		FUNC9(dev, B43legacy_MMIO_CHANNEL_EXT,
				  (FUNC8(dev,
				  B43legacy_MMIO_CHANNEL_EXT) | 0x2000));
	}

	ret = FUNC4(dev);

	if (phy->type == B43legacy_PHYTYPE_B)
		FUNC7(dev, 0x0078, 0x0026);

	if (phy->gmode)
		FUNC3(dev, 0x0812,
				    FUNC1(dev,
				    FUNC0(0, 1, 1)));
	FUNC3(dev, 0x0015, 0xBFAF);
	FUNC3(dev, 0x002B, 0x1403);
	if (phy->gmode)
		FUNC3(dev, 0x0812,
				    FUNC1(dev,
				    FUNC0(0, 0, 1)));
	FUNC3(dev, 0x0015, 0xBFA0);
	FUNC7(dev, 0x0051,
				(FUNC5(dev, 0x0051)
				| 0x0004));
	if (phy->radio_rev == 8)
		FUNC7(dev, 0x0043, 0x001F);
	else {
		FUNC7(dev, 0x0052, 0x0000);
		FUNC7(dev, 0x0043,
					(FUNC5(dev, 0x0043)
					& 0xFFF0) | 0x0009);
	}
	FUNC3(dev, 0x0058, 0x0000);

	for (i = 0; i < 16; i++) {
		FUNC3(dev, 0x005A, 0x0480);
		FUNC3(dev, 0x0059, 0xC810);
		FUNC3(dev, 0x0058, 0x000D);
		if (phy->gmode)
			FUNC3(dev, 0x0812,
					    FUNC1(dev,
					    FUNC0(1, 0, 1)));
		FUNC3(dev, 0x0015, 0xAFB0);
		FUNC11(10);
		if (phy->gmode)
			FUNC3(dev, 0x0812,
					    FUNC1(dev,
					    FUNC0(1, 0, 1)));
		FUNC3(dev, 0x0015, 0xEFB0);
		FUNC11(10);
		if (phy->gmode)
			FUNC3(dev, 0x0812,
					    FUNC1(dev,
					    FUNC0(1, 0, 0)));
		FUNC3(dev, 0x0015, 0xFFF0);
		FUNC11(20);
		tmp1 += FUNC2(dev, 0x002D);
		FUNC3(dev, 0x0058, 0x0000);
		if (phy->gmode)
			FUNC3(dev, 0x0812,
					    FUNC1(dev,
					    FUNC0(1, 0, 1)));
		FUNC3(dev, 0x0015, 0xAFB0);
	}

	tmp1++;
	tmp1 >>= 9;
	FUNC11(10);
	FUNC3(dev, 0x0058, 0x0000);

	for (i = 0; i < 16; i++) {
		FUNC7(dev, 0x0078, (FUNC10(i) << 1)
					| 0x0020);
		backup[13] = FUNC5(dev, 0x0078);
		FUNC11(10);
		for (j = 0; j < 16; j++) {
			FUNC3(dev, 0x005A, 0x0D80);
			FUNC3(dev, 0x0059, 0xC810);
			FUNC3(dev, 0x0058, 0x000D);
			if (phy->gmode)
				FUNC3(dev, 0x0812,
						    FUNC1(dev,
						    FUNC0(1, 0, 1)));
			FUNC3(dev, 0x0015, 0xAFB0);
			FUNC11(10);
			if (phy->gmode)
				FUNC3(dev, 0x0812,
						    FUNC1(dev,
						    FUNC0(1, 0, 1)));
			FUNC3(dev, 0x0015, 0xEFB0);
			FUNC11(10);
			if (phy->gmode)
				FUNC3(dev, 0x0812,
						    FUNC1(dev,
						    FUNC0(1, 0, 0)));
			FUNC3(dev, 0x0015, 0xFFF0);
			FUNC11(10);
			tmp2 += FUNC2(dev, 0x002D);
			FUNC3(dev, 0x0058, 0x0000);
			if (phy->gmode)
				FUNC3(dev, 0x0812,
						    FUNC1(dev,
						    FUNC0(1, 0, 1)));
			FUNC3(dev, 0x0015, 0xAFB0);
		}
		tmp2++;
		tmp2 >>= 8;
		if (tmp1 < tmp2)
			break;
	}

	/* Restore the registers */
	FUNC3(dev, 0x0015, backup[1]);
	FUNC7(dev, 0x0051, backup[14]);
	FUNC7(dev, 0x0052, backup[15]);
	FUNC7(dev, 0x0043, backup[0]);
	FUNC3(dev, 0x005A, backup[16]);
	FUNC3(dev, 0x0059, backup[17]);
	FUNC3(dev, 0x0058, backup[18]);
	FUNC9(dev, 0x03E6, backup[11]);
	if (phy->analog != 0)
		FUNC9(dev, B43legacy_MMIO_CHANNEL_EXT, backup[12]);
	FUNC3(dev, 0x0035, backup[10]);
	FUNC6(dev, phy->channel, 1);
	if (phy->type == B43legacy_PHYTYPE_B) {
		FUNC3(dev, 0x0030, backup[2]);
		FUNC9(dev, 0x03EC, backup[3]);
	} else {
		if (phy->gmode) {
			FUNC9(dev, B43legacy_MMIO_PHY_RADIO,
					  (FUNC8(dev,
					  B43legacy_MMIO_PHY_RADIO) & 0x7FFF));
			FUNC3(dev, 0x0811, backup[4]);
			FUNC3(dev, 0x0812, backup[5]);
			FUNC3(dev, 0x0814, backup[6]);
			FUNC3(dev, 0x0815, backup[7]);
			FUNC3(dev, B43legacy_PHY_G_CRS,
					    backup[8]);
			FUNC3(dev, 0x0802, backup[9]);
			if (phy->rev > 1) {
				FUNC3(dev, 0x080F, backup[19]);
				FUNC3(dev, 0x0810, backup[20]);
			}
		}
	}
	if (i >= 15)
		ret = backup[13];

	return ret;
}