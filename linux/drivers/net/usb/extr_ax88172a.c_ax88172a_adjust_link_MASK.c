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
typedef  int /*<<< orphan*/  u16 ;
struct usbnet {struct ax88172a_private* driver_priv; } ;
struct phy_device {scalar_t__ duplex; scalar_t__ speed; scalar_t__ link; } ;
struct net_device {struct phy_device* phydev; } ;
struct ax88172a_private {int /*<<< orphan*/  oldmode; } ;

/* Variables and functions */
 int /*<<< orphan*/  AX88772_MEDIUM_DEFAULT ; 
 int /*<<< orphan*/  AX_MEDIUM_FD ; 
 int /*<<< orphan*/  AX_MEDIUM_PS ; 
 scalar_t__ DUPLEX_HALF ; 
 scalar_t__ SPEED_100 ; 
 int /*<<< orphan*/  FUNC0 (struct usbnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 struct usbnet* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct phy_device*) ; 

__attribute__((used)) static void FUNC4(struct net_device *netdev)
{
	struct phy_device *phydev = netdev->phydev;
	struct usbnet *dev = FUNC2(netdev);
	struct ax88172a_private *priv = dev->driver_priv;
	u16 mode = 0;

	if (phydev->link) {
		mode = AX88772_MEDIUM_DEFAULT;

		if (phydev->duplex == DUPLEX_HALF)
			mode &= ~AX_MEDIUM_FD;

		if (phydev->speed != SPEED_100)
			mode &= ~AX_MEDIUM_PS;
	}

	if (mode != priv->oldmode) {
		FUNC0(dev, mode, 0);
		priv->oldmode = mode;
		FUNC1(netdev, "speed %u duplex %d, setting mode to 0x%04x\n",
			   phydev->speed, phydev->duplex, mode);
		FUNC3(phydev);
	}
}