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
struct net_device {int /*<<< orphan*/ * ethtool_ops; } ;
struct gbe_priv {int /*<<< orphan*/  dev; int /*<<< orphan*/  gbe_intf_head; int /*<<< orphan*/  tx_pipe; } ;
struct gbe_intf {struct gbe_intf* slave; int /*<<< orphan*/  gbe_intf_list; int /*<<< orphan*/  tx_pipe; struct gbe_priv* gbe_dev; int /*<<< orphan*/  dev; struct net_device* ndev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct gbe_intf*) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct gbe_priv*,struct gbe_intf*,struct device_node*) ; 
 int /*<<< orphan*/  keystone_ethtool_ops ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(void *inst_priv, struct net_device *ndev,
		      struct device_node *node, void **intf_priv)
{
	struct gbe_priv *gbe_dev = inst_priv;
	struct gbe_intf *gbe_intf;
	int ret;

	if (!node) {
		FUNC0(gbe_dev->dev, "interface node not available\n");
		return -ENODEV;
	}

	gbe_intf = FUNC2(gbe_dev->dev, sizeof(*gbe_intf), GFP_KERNEL);
	if (!gbe_intf)
		return -ENOMEM;

	gbe_intf->ndev = ndev;
	gbe_intf->dev = gbe_dev->dev;
	gbe_intf->gbe_dev = gbe_dev;

	gbe_intf->slave = FUNC2(gbe_dev->dev,
					sizeof(*gbe_intf->slave),
					GFP_KERNEL);
	if (!gbe_intf->slave) {
		ret = -ENOMEM;
		goto fail;
	}

	if (FUNC3(gbe_dev, gbe_intf->slave, node)) {
		ret = -ENODEV;
		goto fail;
	}

	gbe_intf->tx_pipe = gbe_dev->tx_pipe;
	ndev->ethtool_ops = &keystone_ethtool_ops;
	FUNC4(&gbe_intf->gbe_intf_list, &gbe_dev->gbe_intf_head);
	*intf_priv = gbe_intf;
	return 0;

fail:
	if (gbe_intf->slave)
		FUNC1(gbe_dev->dev, gbe_intf->slave);
	if (gbe_intf)
		FUNC1(gbe_dev->dev, gbe_intf);
	return ret;
}