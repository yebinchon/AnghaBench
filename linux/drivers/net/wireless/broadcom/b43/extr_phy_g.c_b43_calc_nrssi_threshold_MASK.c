#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int u16 ;
struct b43_phy {scalar_t__ type; int /*<<< orphan*/  gmode; struct b43_phy_g* g; } ;
struct b43_wldev {TYPE_2__* dev; struct b43_phy phy; } ;
struct b43_phy_g {scalar_t__ interfmode; int* nrssi; scalar_t__ aci_enable; int /*<<< orphan*/  aci_wlan_automatic; } ;
typedef  int s32 ;
typedef  int s16 ;
struct TYPE_4__ {TYPE_1__* bus_sprom; } ;
struct TYPE_3__ {int boardflags_lo; } ;

/* Variables and functions */
 int B43_BFL_RSSI ; 
 scalar_t__ B43_INTERFMODE_NONWLAN ; 
 scalar_t__ B43_PHYTYPE_G ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct b43_wldev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int,int,int) ; 
 int FUNC3 (struct b43_wldev*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_wldev*,int,int) ; 
 int FUNC5 (int,int,int) ; 

__attribute__((used)) static void FUNC6(struct b43_wldev *dev)
{
	struct b43_phy *phy = &dev->phy;
	struct b43_phy_g *gphy = phy->g;
	s32 a, b;
	s16 tmp16;
	u16 tmp_u16;

	FUNC0(phy->type != B43_PHYTYPE_G);

	if (!phy->gmode ||
	    !(dev->dev->bus_sprom->boardflags_lo & B43_BFL_RSSI)) {
		tmp16 = FUNC1(dev, 0x20);
		if (tmp16 >= 0x20)
			tmp16 -= 0x40;
		if (tmp16 < 3) {
			FUNC2(dev, 0x048A, 0xF000, 0x09EB);
		} else {
			FUNC2(dev, 0x048A, 0xF000, 0x0AED);
		}
	} else {
		if (gphy->interfmode == B43_INTERFMODE_NONWLAN) {
			a = 0xE;
			b = 0xA;
		} else if (!gphy->aci_wlan_automatic && gphy->aci_enable) {
			a = 0x13;
			b = 0x12;
		} else {
			a = 0xE;
			b = 0x11;
		}

		a = a * (gphy->nrssi[1] - gphy->nrssi[0]);
		a += (gphy->nrssi[0] << 6);
		if (a < 32)
			a += 31;
		else
			a += 32;
		a = a >> 6;
		a = FUNC5(a, -31, 31);

		b = b * (gphy->nrssi[1] - gphy->nrssi[0]);
		b += (gphy->nrssi[0] << 6);
		if (b < 32)
			b += 31;
		else
			b += 32;
		b = b >> 6;
		b = FUNC5(b, -31, 31);

		tmp_u16 = FUNC3(dev, 0x048A) & 0xF000;
		tmp_u16 |= ((u32) b & 0x0000003F);
		tmp_u16 |= (((u32) a & 0x0000003F) << 6);
		FUNC4(dev, 0x048A, tmp_u16);
	}
}