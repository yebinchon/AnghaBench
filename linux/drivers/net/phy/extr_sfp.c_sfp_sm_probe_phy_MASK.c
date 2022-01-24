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
struct sfp {struct phy_device* mod_phy; int /*<<< orphan*/  dev; int /*<<< orphan*/  sfp_bus; int /*<<< orphan*/  i2c_mii; } ;
struct phy_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 struct phy_device* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct phy_device*) ; 
 int FUNC2 (struct phy_device*) ; 
 int /*<<< orphan*/  SFP_PHY_ADDR ; 
 int /*<<< orphan*/  T_PHY_RESET_MS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 struct phy_device* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct phy_device*) ; 
 int FUNC10 (int /*<<< orphan*/ ,struct phy_device*) ; 

__attribute__((used)) static void FUNC11(struct sfp *sfp)
{
	struct phy_device *phy;
	int err;

	FUNC6(T_PHY_RESET_MS);

	phy = FUNC5(sfp->i2c_mii, SFP_PHY_ADDR);
	if (phy == FUNC0(-ENODEV)) {
		FUNC4(sfp->dev, "no PHY detected\n");
		return;
	}
	if (FUNC1(phy)) {
		FUNC3(sfp->dev, "mdiobus scan returned %ld\n", FUNC2(phy));
		return;
	}

	err = FUNC10(sfp->sfp_bus, phy);
	if (err) {
		FUNC8(phy);
		FUNC7(phy);
		FUNC3(sfp->dev, "sfp_add_phy failed: %d\n", err);
		return;
	}

	sfp->mod_phy = phy;
	FUNC9(phy);
}