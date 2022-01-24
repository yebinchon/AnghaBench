#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct device_node* of_node; } ;
struct TYPE_5__ {TYPE_1__ dev; } ;
struct phy_device {int speed; int is_pseudo_fixed_link; int /*<<< orphan*/  supported; TYPE_2__ mdio; int /*<<< orphan*/  asym_pause; int /*<<< orphan*/  pause; int /*<<< orphan*/  duplex; scalar_t__ link; } ;
struct gpio_desc {int speed; int is_pseudo_fixed_link; int /*<<< orphan*/  supported; TYPE_2__ mdio; int /*<<< orphan*/  asym_pause; int /*<<< orphan*/  pause; int /*<<< orphan*/  duplex; scalar_t__ link; } ;
struct fixed_phy_status {int speed; int /*<<< orphan*/  asym_pause; int /*<<< orphan*/  pause; int /*<<< orphan*/  duplex; scalar_t__ link; } ;
struct fixed_mdio_bus {TYPE_3__* mii_bus; } ;
struct device_node {int dummy; } ;
struct TYPE_6__ {scalar_t__ state; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPROBE_DEFER ; 
 struct phy_device* FUNC0 (struct phy_device*) ; 
 struct phy_device* FUNC1 (int) ; 
 int /*<<< orphan*/  ETHTOOL_LINK_MODE_1000baseT_Full_BIT ; 
 int /*<<< orphan*/  ETHTOOL_LINK_MODE_1000baseT_Half_BIT ; 
 int /*<<< orphan*/  ETHTOOL_LINK_MODE_100baseT_Full_BIT ; 
 int /*<<< orphan*/  ETHTOOL_LINK_MODE_100baseT_Half_BIT ; 
 int /*<<< orphan*/  ETHTOOL_LINK_MODE_10baseT_Full_BIT ; 
 int /*<<< orphan*/  ETHTOOL_LINK_MODE_10baseT_Half_BIT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC2 (struct phy_device*) ; 
 scalar_t__ MDIOBUS_REGISTERED ; 
 int /*<<< orphan*/  PHY_MAX_ADDR ; 
#define  SPEED_10 130 
#define  SPEED_100 129 
#define  SPEED_1000 128 
 int FUNC3 (unsigned int,int,struct fixed_phy_status*,struct phy_device*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 struct phy_device* FUNC5 (struct device_node*) ; 
 struct phy_device* FUNC6 (TYPE_3__*,int,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC11 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC12 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct phy_device*) ; 
 int FUNC14 (struct phy_device*) ; 
 int /*<<< orphan*/  phy_fixed_ida ; 
 struct fixed_mdio_bus platform_fmb ; 

__attribute__((used)) static struct phy_device *FUNC15(unsigned int irq,
					       struct fixed_phy_status *status,
					       struct device_node *np,
					       struct gpio_desc *gpiod)
{
	struct fixed_mdio_bus *fmb = &platform_fmb;
	struct phy_device *phy;
	int phy_addr;
	int ret;

	if (!fmb->mii_bus || fmb->mii_bus->state != MDIOBUS_REGISTERED)
		return FUNC1(-EPROBE_DEFER);

	/* Check if we have a GPIO associated with this fixed phy */
	if (!gpiod) {
		gpiod = FUNC5(np);
		if (FUNC2(gpiod))
			return FUNC0(gpiod);
	}

	/* Get the next available PHY address, up to PHY_MAX_ADDR */
	phy_addr = FUNC7(&phy_fixed_ida, 0, PHY_MAX_ADDR, GFP_KERNEL);
	if (phy_addr < 0)
		return FUNC1(phy_addr);

	ret = FUNC3(irq, phy_addr, status, gpiod);
	if (ret < 0) {
		FUNC8(&phy_fixed_ida, phy_addr);
		return FUNC1(ret);
	}

	phy = FUNC6(fmb->mii_bus, phy_addr, false);
	if (FUNC2(phy)) {
		FUNC4(phy_addr);
		return FUNC1(-EINVAL);
	}

	/* propagate the fixed link values to struct phy_device */
	phy->link = status->link;
	if (status->link) {
		phy->speed = status->speed;
		phy->duplex = status->duplex;
		phy->pause = status->pause;
		phy->asym_pause = status->asym_pause;
	}

	FUNC10(np);
	phy->mdio.dev.of_node = np;
	phy->is_pseudo_fixed_link = true;

	switch (status->speed) {
	case SPEED_1000:
		FUNC9(ETHTOOL_LINK_MODE_1000baseT_Half_BIT,
				 phy->supported);
		FUNC9(ETHTOOL_LINK_MODE_1000baseT_Full_BIT,
				 phy->supported);
		/* fall through */
	case SPEED_100:
		FUNC9(ETHTOOL_LINK_MODE_100baseT_Half_BIT,
				 phy->supported);
		FUNC9(ETHTOOL_LINK_MODE_100baseT_Full_BIT,
				 phy->supported);
		/* fall through */
	case SPEED_10:
	default:
		FUNC9(ETHTOOL_LINK_MODE_10baseT_Half_BIT,
				 phy->supported);
		FUNC9(ETHTOOL_LINK_MODE_10baseT_Full_BIT,
				 phy->supported);
	}

	FUNC12(phy);

	ret = FUNC14(phy);
	if (ret) {
		FUNC13(phy);
		FUNC11(np);
		FUNC4(phy_addr);
		return FUNC1(ret);
	}

	return phy;
}