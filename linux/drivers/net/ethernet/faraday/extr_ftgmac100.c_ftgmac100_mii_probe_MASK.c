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
struct net_device {int /*<<< orphan*/  name; } ;
struct ftgmac100 {int /*<<< orphan*/  mii_bus; struct net_device* netdev; } ;
typedef  int /*<<< orphan*/  phy_interface_t ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (struct phy_device*) ; 
 int FUNC1 (struct phy_device*) ; 
 int /*<<< orphan*/  ftgmac100_adjust_link ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct phy_device*) ; 
 struct phy_device* FUNC5 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct phy_device* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct phy_device*) ; 

__attribute__((used)) static int FUNC9(struct ftgmac100 *priv, phy_interface_t intf)
{
	struct net_device *netdev = priv->netdev;
	struct phy_device *phydev;

	phydev = FUNC6(priv->mii_bus);
	if (!phydev) {
		FUNC3(netdev, "%s: no PHY found\n", netdev->name);
		return -ENODEV;
	}

	phydev = FUNC5(netdev, FUNC8(phydev),
			     &ftgmac100_adjust_link, intf);

	if (FUNC0(phydev)) {
		FUNC2(netdev, "%s: Could not attach to PHY\n", netdev->name);
		return FUNC1(phydev);
	}

	/* Indicate that we support PAUSE frames (see comment in
	 * Documentation/networking/phy.rst)
	 */
	FUNC7(phydev);

	/* Display what we found */
	FUNC4(phydev);

	return 0;
}