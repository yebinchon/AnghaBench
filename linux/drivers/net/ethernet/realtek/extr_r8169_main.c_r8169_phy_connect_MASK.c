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
struct rtl8169_private {scalar_t__ supports_gmii; int /*<<< orphan*/  dev; struct phy_device* phydev; } ;
struct phy_device {int dummy; } ;
typedef  int /*<<< orphan*/  phy_interface_t ;

/* Variables and functions */
 int /*<<< orphan*/  PHY_INTERFACE_MODE_GMII ; 
 int /*<<< orphan*/  PHY_INTERFACE_MODE_MII ; 
 int /*<<< orphan*/  SPEED_100 ; 
 int /*<<< orphan*/  FUNC0 (struct phy_device*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct phy_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct phy_device*) ; 
 int /*<<< orphan*/  r8169_phylink_handler ; 

__attribute__((used)) static int FUNC4(struct rtl8169_private *tp)
{
	struct phy_device *phydev = tp->phydev;
	phy_interface_t phy_mode;
	int ret;

	phy_mode = tp->supports_gmii ? PHY_INTERFACE_MODE_GMII :
		   PHY_INTERFACE_MODE_MII;

	ret = FUNC1(tp->dev, phydev, r8169_phylink_handler,
				 phy_mode);
	if (ret)
		return ret;

	if (!tp->supports_gmii)
		FUNC2(phydev, SPEED_100);

	FUNC3(phydev);

	FUNC0(phydev);

	return 0;
}