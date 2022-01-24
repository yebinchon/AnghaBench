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
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct net_device {int /*<<< orphan*/ * netdev_ops; int /*<<< orphan*/  flags; TYPE_1__ dev; } ;
struct c_can_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFF_ECHO ; 
 int /*<<< orphan*/  c_can_netdev_ops ; 
 int /*<<< orphan*/  FUNC0 (struct c_can_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct c_can_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 struct c_can_priv* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct net_device*) ; 

int FUNC6(struct net_device *dev)
{
	struct c_can_priv *priv = FUNC3(dev);
	int err;

	/* Deactivate pins to prevent DRA7 DCAN IP from being
	 * stuck in transition when module is disabled.
	 * Pins are activated in c_can_start() and deactivated
	 * in c_can_stop()
	 */
	FUNC4(dev->dev.parent);

	FUNC1(priv);

	dev->flags |= IFF_ECHO;	/* we support local echo */
	dev->netdev_ops = &c_can_netdev_ops;

	err = FUNC5(dev);
	if (err)
		FUNC0(priv);
	else
		FUNC2(dev);

	return err;
}