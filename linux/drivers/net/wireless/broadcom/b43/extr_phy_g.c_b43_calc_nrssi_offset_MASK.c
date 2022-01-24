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
typedef  int u16 ;
struct b43_phy {int rev; } ;
struct b43_wldev {struct b43_phy phy; } ;
typedef  int s16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,int,int,int) ; 
 int FUNC2 (struct b43_wldev*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct b43_wldev*,int,int,int) ; 
 int FUNC7 (struct b43_wldev*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct b43_wldev*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 

__attribute__((used)) static void FUNC13(struct b43_wldev *dev)
{
	struct b43_phy *phy = &dev->phy;
	u16 backup[20] = { 0 };
	s16 v47F;
	u16 i;
	u16 saved = 0xFFFF;

	backup[0] = FUNC2(dev, 0x0001);
	backup[1] = FUNC2(dev, 0x0811);
	backup[2] = FUNC2(dev, 0x0812);
	if (phy->rev != 1) {	/* Not in specs, but needed to prevent PPC machine check */
		backup[3] = FUNC2(dev, 0x0814);
		backup[4] = FUNC2(dev, 0x0815);
	}
	backup[5] = FUNC2(dev, 0x005A);
	backup[6] = FUNC2(dev, 0x0059);
	backup[7] = FUNC2(dev, 0x0058);
	backup[8] = FUNC2(dev, 0x000A);
	backup[9] = FUNC2(dev, 0x0003);
	backup[10] = FUNC7(dev, 0x007A);
	backup[11] = FUNC7(dev, 0x0043);

	FUNC0(dev, 0x0429, 0x7FFF);
	FUNC1(dev, 0x0001, 0x3FFF, 0x4000);
	FUNC3(dev, 0x0811, 0x000C);
	FUNC1(dev, 0x0812, 0xFFF3, 0x0004);
	FUNC0(dev, 0x0802, ~(0x1 | 0x2));
	if (phy->rev >= 6) {
		backup[12] = FUNC2(dev, 0x002E);
		backup[13] = FUNC2(dev, 0x002F);
		backup[14] = FUNC2(dev, 0x080F);
		backup[15] = FUNC2(dev, 0x0810);
		backup[16] = FUNC2(dev, 0x0801);
		backup[17] = FUNC2(dev, 0x0060);
		backup[18] = FUNC2(dev, 0x0014);
		backup[19] = FUNC2(dev, 0x0478);

		FUNC4(dev, 0x002E, 0);
		FUNC4(dev, 0x002F, 0);
		FUNC4(dev, 0x080F, 0);
		FUNC4(dev, 0x0810, 0);
		FUNC3(dev, 0x0478, 0x0100);
		FUNC3(dev, 0x0801, 0x0040);
		FUNC3(dev, 0x0060, 0x0040);
		FUNC3(dev, 0x0014, 0x0200);
	}
	FUNC8(dev, 0x007A, 0x0070);
	FUNC8(dev, 0x007A, 0x0080);
	FUNC12(30);

	v47F = (s16) ((FUNC2(dev, 0x047F) >> 8) & 0x003F);
	if (v47F >= 0x20)
		v47F -= 0x40;
	if (v47F == 31) {
		for (i = 7; i >= 4; i--) {
			FUNC9(dev, 0x007B, i);
			FUNC12(20);
			v47F =
			    (s16) ((FUNC2(dev, 0x047F) >> 8) & 0x003F);
			if (v47F >= 0x20)
				v47F -= 0x40;
			if (v47F < 31 && saved == 0xFFFF)
				saved = i;
		}
		if (saved == 0xFFFF)
			saved = 4;
	} else {
		FUNC5(dev, 0x007A, 0x007F);
		if (phy->rev != 1) {	/* Not in specs, but needed to prevent PPC machine check */
			FUNC3(dev, 0x0814, 0x0001);
			FUNC0(dev, 0x0815, 0xFFFE);
		}
		FUNC3(dev, 0x0811, 0x000C);
		FUNC3(dev, 0x0812, 0x000C);
		FUNC3(dev, 0x0811, 0x0030);
		FUNC3(dev, 0x0812, 0x0030);
		FUNC4(dev, 0x005A, 0x0480);
		FUNC4(dev, 0x0059, 0x0810);
		FUNC4(dev, 0x0058, 0x000D);
		if (phy->rev == 0) {
			FUNC4(dev, 0x0003, 0x0122);
		} else {
			FUNC3(dev, 0x000A, 0x2000);
		}
		if (phy->rev != 1) {	/* Not in specs, but needed to prevent PPC machine check */
			FUNC3(dev, 0x0814, 0x0004);
			FUNC0(dev, 0x0815, 0xFFFB);
		}
		FUNC1(dev, 0x0003, 0xFF9F, 0x0040);
		FUNC8(dev, 0x007A, 0x000F);
		FUNC10(dev, 3, 0, 1);
		FUNC6(dev, 0x0043, 0x00F0, 0x000F);
		FUNC12(30);
		v47F = (s16) ((FUNC2(dev, 0x047F) >> 8) & 0x003F);
		if (v47F >= 0x20)
			v47F -= 0x40;
		if (v47F == -32) {
			for (i = 0; i < 4; i++) {
				FUNC9(dev, 0x007B, i);
				FUNC12(20);
				v47F =
				    (s16) ((FUNC2(dev, 0x047F) >> 8) &
					   0x003F);
				if (v47F >= 0x20)
					v47F -= 0x40;
				if (v47F > -31 && saved == 0xFFFF)
					saved = i;
			}
			if (saved == 0xFFFF)
				saved = 3;
		} else
			saved = 0;
	}
	FUNC9(dev, 0x007B, saved);

	if (phy->rev >= 6) {
		FUNC4(dev, 0x002E, backup[12]);
		FUNC4(dev, 0x002F, backup[13]);
		FUNC4(dev, 0x080F, backup[14]);
		FUNC4(dev, 0x0810, backup[15]);
	}
	if (phy->rev != 1) {	/* Not in specs, but needed to prevent PPC machine check */
		FUNC4(dev, 0x0814, backup[3]);
		FUNC4(dev, 0x0815, backup[4]);
	}
	FUNC4(dev, 0x005A, backup[5]);
	FUNC4(dev, 0x0059, backup[6]);
	FUNC4(dev, 0x0058, backup[7]);
	FUNC4(dev, 0x000A, backup[8]);
	FUNC4(dev, 0x0003, backup[9]);
	FUNC9(dev, 0x0043, backup[11]);
	FUNC9(dev, 0x007A, backup[10]);
	FUNC4(dev, 0x0802, FUNC2(dev, 0x0802) | 0x1 | 0x2);
	FUNC3(dev, 0x0429, 0x8000);
	FUNC11(dev);
	if (phy->rev >= 6) {
		FUNC4(dev, 0x0801, backup[16]);
		FUNC4(dev, 0x0060, backup[17]);
		FUNC4(dev, 0x0014, backup[18]);
		FUNC4(dev, 0x0478, backup[19]);
	}
	FUNC4(dev, 0x0001, backup[0]);
	FUNC4(dev, 0x0812, backup[2]);
	FUNC4(dev, 0x0811, backup[1]);
}