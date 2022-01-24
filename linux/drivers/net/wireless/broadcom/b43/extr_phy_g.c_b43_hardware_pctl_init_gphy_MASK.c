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
struct b43_phy {int rev; struct b43_phy_g* g; } ;
struct b43_wldev {struct b43_phy phy; } ;
struct b43_phy_g {scalar_t__ cur_idle_tssi; scalar_t__ tgt_idle_tssi; } ;

/* Variables and functions */
 int B43_HF_HWPCTL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_wldev*) ; 
 int FUNC5 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC6 (struct b43_wldev*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct b43_wldev*,int,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct b43_wldev*,int,int) ; 

__attribute__((used)) static void FUNC11(struct b43_wldev *dev)
{
	struct b43_phy *phy = &dev->phy;
	struct b43_phy_g *gphy = phy->g;

	if (!FUNC4(dev)) {
		/* No hardware power control */
		FUNC6(dev, FUNC5(dev) & ~B43_HF_HWPCTL);
		return;
	}

	FUNC8(dev, 0x0036, 0xFFC0, (gphy->tgt_idle_tssi - gphy->cur_idle_tssi));
	FUNC8(dev, 0x0478, 0xFF00, (gphy->tgt_idle_tssi - gphy->cur_idle_tssi));
	FUNC3(dev);
	FUNC2(dev);
	FUNC7(dev, 0x0060, 0xFFBF);
	FUNC10(dev, 0x0014, 0x0000);

	FUNC0(phy->rev < 6);
	FUNC9(dev, 0x0478, 0x0800);
	FUNC7(dev, 0x0478, 0xFEFF);
	FUNC7(dev, 0x0801, 0xFFBF);

	FUNC1(dev, 1);

	/* Enable hardware pctl in firmware. */
	FUNC6(dev, FUNC5(dev) | B43_HF_HWPCTL);
}