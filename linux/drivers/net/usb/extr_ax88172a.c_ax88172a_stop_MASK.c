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
struct usbnet {int /*<<< orphan*/  net; struct ax88172a_private* driver_priv; } ;
struct ax88172a_private {scalar_t__ phydev; int /*<<< orphan*/  phy_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct usbnet *dev)
{
	struct ax88172a_private *priv = dev->driver_priv;

	FUNC0(dev->net, "Stopping interface\n");

	if (priv->phydev) {
		FUNC1(dev->net, "Disconnecting from phy %s\n",
			    priv->phy_name);
		FUNC3(priv->phydev);
		FUNC2(priv->phydev);
	}

	return 0;
}