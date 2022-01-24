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
typedef  scalar_t__ u16 ;
struct b43_phy {int rev; int radio_rev; } ;
struct b43_wldev {struct b43_phy phy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__**) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,scalar_t__,scalar_t__) ; 
 scalar_t__** r2057_rev14_init ; 
 scalar_t__** r2057_rev4_init ; 
 scalar_t__** r2057_rev5_init ; 
 scalar_t__** r2057_rev5a_init ; 
 scalar_t__** r2057_rev7_init ; 
 scalar_t__** r2057_rev9_init ; 

void FUNC3(struct b43_wldev *dev)
{
	struct b43_phy *phy = &dev->phy;
	u16 *table = NULL;
	u16 size, i;

	switch (phy->rev) {
	case 7:
		table = r2057_rev4_init[0];
		size = FUNC0(r2057_rev4_init);
		break;
	case 8:
		if (phy->radio_rev == 5) {
			table = r2057_rev5_init[0];
			size = FUNC0(r2057_rev5_init);
		} else if (phy->radio_rev == 7) {
			table = r2057_rev7_init[0];
			size = FUNC0(r2057_rev7_init);
		}
		break;
	case 9:
		if (phy->radio_rev == 5) {
			table = r2057_rev5a_init[0];
			size = FUNC0(r2057_rev5a_init);
		}
		break;
	case 16:
		if (phy->radio_rev == 9) {
			table = r2057_rev9_init[0];
			size = FUNC0(r2057_rev9_init);
		}
		break;
	case 17:
		if (phy->radio_rev == 14) {
			table = r2057_rev14_init[0];
			size = FUNC0(r2057_rev14_init);
		}
		break;
	}

	FUNC1(!table);

	if (table) {
		for (i = 0; i < size; i++, table += 2)
			FUNC2(dev, table[0], table[1]);
	}
}