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
struct net_device {int dummy; } ;
struct mii_bus {struct net_device* priv; } ;
struct altera_tse_private {int /*<<< orphan*/  mac_dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  mdio_phy1 ; 
 int /*<<< orphan*/  mdio_phy1_addr ; 
 struct altera_tse_private* FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct mii_bus *bus, int mii_id, int regnum)
{
	struct net_device *ndev = bus->priv;
	struct altera_tse_private *priv = FUNC2(ndev);

	/* set MDIO address */
	FUNC1((mii_id & 0x1f), priv->mac_dev,
		FUNC3(mdio_phy1_addr));

	/* get the data */
	return FUNC0(priv->mac_dev,
		       FUNC3(mdio_phy1) + regnum * 4) & 0xffff;
}