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
struct gbe_slave {int port_num; int /*<<< orphan*/ * phy; } ;
struct gbe_priv {int /*<<< orphan*/  ale; } ;
struct gbe_intf {TYPE_1__* ndev; struct gbe_slave* slave; struct gbe_priv* gbe_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  broadcast; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALE_PORT_STATE ; 
 int /*<<< orphan*/  ALE_PORT_STATE_DISABLE ; 
 int /*<<< orphan*/  FUNC0 (struct gbe_priv*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct gbe_slave*) ; 
 int /*<<< orphan*/  FUNC4 (struct gbe_priv*,struct gbe_slave*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct gbe_intf *intf)
{
	struct gbe_priv *gbe_dev = intf->gbe_dev;
	struct gbe_slave *slave = intf->slave;

	if (!FUNC0(gbe_dev))
		FUNC4(gbe_dev, slave, true);
	FUNC3(slave);
	/* Disable forwarding */
	FUNC1(gbe_dev->ale, slave->port_num,
			     ALE_PORT_STATE, ALE_PORT_STATE_DISABLE);
	FUNC2(gbe_dev->ale, intf->ndev->broadcast,
			   1 << slave->port_num, 0, 0);

	if (!slave->phy)
		return;

	FUNC6(slave->phy);
	FUNC5(slave->phy);
	slave->phy = NULL;
}