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
struct netcp_intf {int dummy; } ;
struct net_device {int dummy; } ;
struct gbe_intf {int /*<<< orphan*/  slave; int /*<<< orphan*/  gbe_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 
 struct gbe_intf* FUNC1 (int /*<<< orphan*/ *,struct netcp_intf*) ; 
 struct netcp_intf* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  xgbe_module ; 

__attribute__((used)) static void FUNC3(struct net_device *ndev)
{
	struct netcp_intf *netcp = FUNC2(ndev);
	struct gbe_intf *gbe_intf;

	gbe_intf = FUNC1(&xgbe_module, netcp);
	if (!gbe_intf)
		return;

	FUNC0(gbe_intf->gbe_dev, gbe_intf->slave,
				      ndev);
}