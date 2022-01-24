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
struct phy_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  KSZPHY_OMSO_FACTORY_TEST ; 
 int /*<<< orphan*/  MII_KSZPHY_OMSO ; 
 int FUNC0 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct phy_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct phy_device *phydev)
{
	/* KSZPHY_OMSO_FACTORY_TEST is set at de-assertion of the reset line
	 * based on the RXER (KSZ8081RNA/RND) or TXC (KSZ8081MNX/RNB) pin. If a
	 * pull-down is missing, the factory test mode should be cleared by
	 * manually writing a 0.
	 */
	FUNC1(phydev, MII_KSZPHY_OMSO, KSZPHY_OMSO_FACTORY_TEST);

	return FUNC0(phydev);
}