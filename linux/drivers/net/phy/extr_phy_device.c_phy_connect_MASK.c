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
struct net_device {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  phy_interface_t ;

/* Variables and functions */
 int ENODEV ; 
 struct phy_device* FUNC0 (int) ; 
 struct device* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  mdio_bus_type ; 
 int FUNC2 (struct net_device*,struct phy_device*,void (*) (struct net_device*),int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 struct phy_device* FUNC5 (struct device*) ; 

struct phy_device *FUNC6(struct net_device *dev, const char *bus_id,
			       void (*handler)(struct net_device *),
			       phy_interface_t interface)
{
	struct phy_device *phydev;
	struct device *d;
	int rc;

	/* Search the list of PHY devices on the mdio bus for the
	 * PHY with the requested name
	 */
	d = FUNC1(&mdio_bus_type, NULL, bus_id);
	if (!d) {
		FUNC3("PHY %s not found\n", bus_id);
		return FUNC0(-ENODEV);
	}
	phydev = FUNC5(d);

	rc = FUNC2(dev, phydev, handler, interface);
	FUNC4(d);
	if (rc)
		return FUNC0(rc);

	return phydev;
}