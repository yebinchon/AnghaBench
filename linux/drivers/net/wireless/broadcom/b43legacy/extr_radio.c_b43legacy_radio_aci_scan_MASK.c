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
typedef  int u8 ;
struct b43legacy_phy {unsigned int channel; scalar_t__ type; scalar_t__ rev; } ;
struct b43legacy_wldev {struct b43legacy_phy phy; } ;

/* Variables and functions */
 scalar_t__ B43legacy_PHYTYPE_G ; 
 int B43legacy_PHY_G_CRS ; 
 int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct b43legacy_wldev*) ; 
 int FUNC2 (struct b43legacy_wldev*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC4 (struct b43legacy_wldev*,int,int) ; 
 int FUNC5 (struct b43legacy_wldev*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC7 (struct b43legacy_wldev*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC9 (struct b43legacy_wldev*,int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct b43legacy_wldev*) ; 

u8 FUNC11(struct b43legacy_wldev *dev)
{
	struct b43legacy_phy *phy = &dev->phy;
	u8 ret[13] = { 0 };
	unsigned int channel = phy->channel;
	unsigned int i;
	unsigned int j;
	unsigned int start;
	unsigned int end;

	if (!((phy->type == B43legacy_PHYTYPE_G) && (phy->rev > 0)))
		return 0;

	FUNC1(dev);
	FUNC6(dev);
	FUNC4(dev, 0x0802,
			    FUNC2(dev, 0x0802) & 0xFFFC);
	FUNC4(dev, B43legacy_PHY_G_CRS,
			    FUNC2(dev, B43legacy_PHY_G_CRS)
			    & 0x7FFF);
	FUNC9(dev, 3, 8, 1);

	start = (channel - 5 > 0) ? channel - 5 : 1;
	end = (channel + 5 < 14) ? channel + 5 : 13;

	for (i = start; i <= end; i++) {
		if (FUNC0(channel - i) > 2)
			ret[i-1] = FUNC5(dev, i);
	}
	FUNC7(dev, channel, 0);
	FUNC4(dev, 0x0802,
			    (FUNC2(dev, 0x0802) & 0xFFFC)
			    | 0x0003);
	FUNC4(dev, 0x0403,
			    FUNC2(dev, 0x0403) & 0xFFF8);
	FUNC4(dev, B43legacy_PHY_G_CRS,
			    FUNC2(dev, B43legacy_PHY_G_CRS)
			    | 0x8000);
	FUNC10(dev);
	for (i = 0; i < 13; i++) {
		if (!ret[i])
			continue;
		end = (i + 5 < 13) ? i + 5 : 13;
		for (j = i; j < end; j++)
			ret[j] = 1;
	}
	FUNC8(dev);
	FUNC3(dev);

	return ret[channel - 1];
}