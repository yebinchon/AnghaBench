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
struct octeon_mgmt {int /*<<< orphan*/ * phy_np; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  PHY_INTERFACE_MODE_MII ; 
 struct octeon_mgmt* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  octeon_mgmt_adjust_link ; 
 struct phy_device* FUNC3 (struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct net_device *netdev)
{
	struct octeon_mgmt *p = FUNC0(netdev);
	struct phy_device *phydev = NULL;

	if (FUNC2() || p->phy_np == NULL) {
		/* No PHYs in the simulator. */
		FUNC1(netdev);
		return 0;
	}

	phydev = FUNC3(netdev, p->phy_np,
				octeon_mgmt_adjust_link, 0,
				PHY_INTERFACE_MODE_MII);

	if (!phydev)
		return -ENODEV;

	return 0;
}