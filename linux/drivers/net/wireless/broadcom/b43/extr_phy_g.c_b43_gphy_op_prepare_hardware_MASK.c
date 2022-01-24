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
struct b43_phy {scalar_t__ type; int rev; int gmode; struct b43_phy_g* g; } ;
struct b43_wldev {struct b43_phy phy; } ;
struct b43_txpower_lo_control {int /*<<< orphan*/  bbatt_list; int /*<<< orphan*/  rfatt_list; } ;
struct b43_phy_g {int tx_control; int /*<<< orphan*/  rfatt; int /*<<< orphan*/  bbatt; struct b43_txpower_lo_control* lo_control; } ;

/* Variables and functions */
 int /*<<< orphan*/  B43_MMIO_MACCTL ; 
 scalar_t__ B43_PHYTYPE_G ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_wldev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct b43_wldev*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC7 (struct b43_wldev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct b43_wldev*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct b43_wldev *dev)
{
	struct b43_phy *phy = &dev->phy;
	struct b43_phy_g *gphy = phy->g;
	struct b43_txpower_lo_control *lo = gphy->lo_control;

	FUNC0(phy->type != B43_PHYTYPE_G);

	FUNC4(dev, &gphy->bbatt);
	FUNC5(dev, &gphy->rfatt);
	gphy->tx_control = (FUNC6(dev) << 4);
	FUNC8(dev, &lo->rfatt_list);
	FUNC7(dev, &lo->bbatt_list);

	/* Commit previous writes */
	FUNC2(dev, B43_MMIO_MACCTL);

	if (phy->rev == 1) {
		/* Workaround: Temporarly disable gmode through the early init
		 * phase, as the gmode stuff is not needed for phy rev 1 */
		phy->gmode = false;
		FUNC3(dev, 0);
		FUNC1(dev);
		phy->gmode = true;
		FUNC3(dev, 1);
	}

	return 0;
}