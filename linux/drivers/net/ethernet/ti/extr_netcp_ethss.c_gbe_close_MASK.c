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
struct netcp_intf {int dummy; } ;
struct net_device {int dummy; } ;
struct gbe_priv {int dummy; } ;
struct gbe_intf {TYPE_1__* slave; struct gbe_priv* gbe_dev; } ;
struct TYPE_2__ {int open; int /*<<< orphan*/  link_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  GBE_RXHOOK_ORDER ; 
 int /*<<< orphan*/  GBE_TXHOOK_ORDER ; 
 int /*<<< orphan*/  NETCP_LINK_STATE_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gbe_rxhook ; 
 int /*<<< orphan*/  FUNC1 (struct gbe_intf*) ; 
 int /*<<< orphan*/  gbe_txhook ; 
 int /*<<< orphan*/  FUNC2 (struct gbe_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct netcp_intf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gbe_intf*) ; 
 int /*<<< orphan*/  FUNC4 (struct netcp_intf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gbe_intf*) ; 
 struct netcp_intf* FUNC5 (struct net_device*) ; 

__attribute__((used)) static int FUNC6(void *intf_priv, struct net_device *ndev)
{
	struct gbe_intf *gbe_intf = intf_priv;
	struct netcp_intf *netcp = FUNC5(ndev);
	struct gbe_priv *gbe_dev = gbe_intf->gbe_dev;

	FUNC2(gbe_dev);

	FUNC1(gbe_intf);

	FUNC3(netcp, GBE_RXHOOK_ORDER, gbe_rxhook, gbe_intf);
	FUNC4(netcp, GBE_TXHOOK_ORDER, gbe_txhook, gbe_intf);

	gbe_intf->slave->open = false;
	FUNC0(&gbe_intf->slave->link_state, NETCP_LINK_STATE_INVALID);
	return 0;
}