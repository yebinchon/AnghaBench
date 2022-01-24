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
struct b43_phy {int rev; } ;
struct b43_wldev {struct b43_phy phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  B43_PHY_ENCORE ; 
 int B43_PHY_ENCORE_EN ; 
 int FUNC0 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  b43_tab_noisescaleg1 ; 
 int /*<<< orphan*/  b43_tab_noisescaleg2 ; 
 int /*<<< orphan*/  b43_tab_noisescaleg3 ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct b43_wldev *dev) /* Noise scale table */
{
	struct b43_phy *phy = &dev->phy;

	if (phy->rev >= 6) {
		if (FUNC0(dev, B43_PHY_ENCORE) & B43_PHY_ENCORE_EN)
			FUNC1(dev, b43_tab_noisescaleg3);
		else
			FUNC1(dev, b43_tab_noisescaleg2);
	} else {
		FUNC1(dev, b43_tab_noisescaleg1);
	}
}