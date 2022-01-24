#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tg3 {int phy_flags; int /*<<< orphan*/  phy_addr; int /*<<< orphan*/  mdio_bus; TYPE_1__* pdev; int /*<<< orphan*/  dev; } ;
struct phy_device {int interface; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct phy_device*) ; 
#define  PHY_INTERFACE_MODE_GMII 130 
#define  PHY_INTERFACE_MODE_MII 129 
#define  PHY_INTERFACE_MODE_RGMII 128 
 int FUNC1 (struct phy_device*) ; 
 int /*<<< orphan*/  SPEED_100 ; 
 int /*<<< orphan*/  SPEED_1000 ; 
 int TG3_PHYFLG_10_100_ONLY ; 
 int TG3_PHYFLG_IS_CONNECTED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct phy_device* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct phy_device*) ; 
 struct phy_device* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct phy_device*) ; 
 int /*<<< orphan*/  tg3_adjust_link ; 
 int /*<<< orphan*/  FUNC10 (struct tg3*) ; 

__attribute__((used)) static int FUNC11(struct tg3 *tp)
{
	struct phy_device *phydev;

	if (tp->phy_flags & TG3_PHYFLG_IS_CONNECTED)
		return 0;

	/* Bring the PHY back to a known state. */
	FUNC10(tp);

	phydev = FUNC3(tp->mdio_bus, tp->phy_addr);

	/* Attach the MAC to the PHY. */
	phydev = FUNC5(tp->dev, FUNC9(phydev),
			     tg3_adjust_link, phydev->interface);
	if (FUNC0(phydev)) {
		FUNC2(&tp->pdev->dev, "Could not attach to PHY\n");
		return FUNC1(phydev);
	}

	/* Mask with MAC supported features. */
	switch (phydev->interface) {
	case PHY_INTERFACE_MODE_GMII:
	case PHY_INTERFACE_MODE_RGMII:
		if (!(tp->phy_flags & TG3_PHYFLG_10_100_ONLY)) {
			FUNC7(phydev, SPEED_1000);
			FUNC8(phydev);
			break;
		}
		/* fall through */
	case PHY_INTERFACE_MODE_MII:
		FUNC7(phydev, SPEED_100);
		FUNC8(phydev);
		break;
	default:
		FUNC6(FUNC3(tp->mdio_bus, tp->phy_addr));
		return -EINVAL;
	}

	tp->phy_flags |= TG3_PHYFLG_IS_CONNECTED;

	FUNC4(phydev);

	return 0;
}