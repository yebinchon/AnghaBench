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
struct b43legacy_phy {int bbatt; int rfatt; int txctl1; int radio_rev; int radio_ver; scalar_t__ type; } ;
struct b43legacy_wldev {struct b43legacy_phy phy; } ;

/* Variables and functions */
 scalar_t__ B43legacy_PHYTYPE_G ; 
 int /*<<< orphan*/  B43legacy_SHM_SHARED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct b43legacy_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct b43legacy_wldev*,int) ; 
 int FUNC3 (struct b43legacy_wldev*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct b43legacy_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct b43legacy_wldev*,int /*<<< orphan*/ ,int,int) ; 

void FUNC6(struct b43legacy_wldev *dev,
				    u16 baseband_attenuation,
				    u16 radio_attenuation,
				    u16 txpower)
{
	struct b43legacy_phy *phy = &dev->phy;

	if (baseband_attenuation == 0xFFFF)
		baseband_attenuation = phy->bbatt;
	if (radio_attenuation == 0xFFFF)
		radio_attenuation = phy->rfatt;
	if (txpower == 0xFFFF)
		txpower = phy->txctl1;
	phy->bbatt = baseband_attenuation;
	phy->rfatt = radio_attenuation;
	phy->txctl1 = txpower;

	FUNC0(baseband_attenuation > 11);
	if (phy->radio_rev < 6)
		FUNC0(radio_attenuation > 9);
	else
		FUNC0(radio_attenuation > 31);
	FUNC0(txpower > 7);

	FUNC2(dev, baseband_attenuation);
	FUNC4(dev, 0x0043, radio_attenuation);
	FUNC5(dev, B43legacy_SHM_SHARED, 0x0064,
			      radio_attenuation);
	if (phy->radio_ver == 0x2050)
		FUNC4(dev, 0x0052,
					(FUNC3(dev, 0x0052)
					& ~0x0070) | ((txpower << 4) & 0x0070));
	/* FIXME: The spec is very weird and unclear here. */
	if (phy->type == B43legacy_PHYTYPE_G)
		FUNC1(dev, 0);
}