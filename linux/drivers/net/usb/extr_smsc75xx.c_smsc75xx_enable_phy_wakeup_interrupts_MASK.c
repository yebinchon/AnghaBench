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
struct mii_if_info {int /*<<< orphan*/  phy_id; } ;
struct usbnet {int /*<<< orphan*/  net; struct mii_if_info mii; } ;

/* Variables and functions */
 int /*<<< orphan*/  PHY_INT_MASK ; 
 int /*<<< orphan*/  PHY_INT_SRC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct usbnet *dev, u16 mask)
{
	struct mii_if_info *mii = &dev->mii;
	int ret;

	FUNC0(dev->net, "enabling PHY wakeup interrupts\n");

	/* read to clear */
	ret = FUNC2(dev->net, mii->phy_id, PHY_INT_SRC);
	if (ret < 0) {
		FUNC1(dev->net, "Error reading PHY_INT_SRC\n");
		return ret;
	}

	/* enable interrupt source */
	ret = FUNC2(dev->net, mii->phy_id, PHY_INT_MASK);
	if (ret < 0) {
		FUNC1(dev->net, "Error reading PHY_INT_MASK\n");
		return ret;
	}

	ret |= mask;

	FUNC3(dev->net, mii->phy_id, PHY_INT_MASK, ret);

	return 0;
}