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
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {int /*<<< orphan*/  phy_id; } ;
struct usbnet {TYPE_1__ mii; int /*<<< orphan*/  net; struct asix_common_private* driver_priv; } ;
struct asix_common_private {void* presvd_phy_advertise; void* presvd_phy_bmcr; } ;

/* Variables and functions */
 int /*<<< orphan*/  AX_MEDIUM_RE ; 
 int /*<<< orphan*/  MII_ADVERTISE ; 
 int /*<<< orphan*/  MII_BMCR ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct usbnet*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct usbnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct usbnet *dev)
{
	struct asix_common_private *priv = dev->driver_priv;
	u16 medium;

	/* Stop MAC operation */
	medium = FUNC1(dev, 1);
	medium &= ~AX_MEDIUM_RE;
	FUNC2(dev, medium, 1);

	FUNC3(dev->net, "ax88772_suspend: medium=0x%04x\n",
		   FUNC1(dev, 1));

	/* Preserve BMCR for restoring */
	priv->presvd_phy_bmcr =
		FUNC0(dev->net, dev->mii.phy_id, MII_BMCR);

	/* Preserve ANAR for restoring */
	priv->presvd_phy_advertise =
		FUNC0(dev->net, dev->mii.phy_id, MII_ADVERTISE);
}