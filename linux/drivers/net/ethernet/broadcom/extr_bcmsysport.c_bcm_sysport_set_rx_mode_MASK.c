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
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int flags; } ;
struct bcm_sysport_priv {scalar_t__ is_lite; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_PROMISC ; 
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 int /*<<< orphan*/  UMAC_CMD ; 
 struct bcm_sysport_priv* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct bcm_sysport_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bcm_sysport_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct net_device *dev)
{
	struct bcm_sysport_priv *priv = FUNC0(dev);
	u32 reg;

	if (priv->is_lite)
		return;

	reg = FUNC1(priv, UMAC_CMD);
	if (dev->flags & IFF_PROMISC)
		reg |= CMD_PROMISC;
	else
		reg &= ~CMD_PROMISC;
	FUNC2(priv, reg, UMAC_CMD);

	/* No support for ALLMULTI */
	if (dev->flags & IFF_ALLMULTI)
		return;
}