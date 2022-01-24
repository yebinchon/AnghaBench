#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  type; int /*<<< orphan*/ * dev; } ;
struct stmmac_priv {struct phylink* phylink; TYPE_3__ phylink_config; TYPE_1__* dev; TYPE_2__* plat; } ;
struct phylink {int dummy; } ;
struct fwnode_handle {int dummy; } ;
struct TYPE_5__ {int phy_interface; int /*<<< orphan*/  phylink_node; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct phylink*) ; 
 int /*<<< orphan*/  PHYLINK_NETDEV ; 
 int FUNC1 (struct phylink*) ; 
 struct fwnode_handle* FUNC2 (int /*<<< orphan*/ ) ; 
 struct phylink* FUNC3 (TYPE_3__*,struct fwnode_handle*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stmmac_phylink_mac_ops ; 

__attribute__((used)) static int FUNC4(struct stmmac_priv *priv)
{
	struct fwnode_handle *fwnode = FUNC2(priv->plat->phylink_node);
	int mode = priv->plat->phy_interface;
	struct phylink *phylink;

	priv->phylink_config.dev = &priv->dev->dev;
	priv->phylink_config.type = PHYLINK_NETDEV;

	phylink = FUNC3(&priv->phylink_config, fwnode,
				 mode, &stmmac_phylink_mac_ops);
	if (FUNC0(phylink))
		return FUNC1(phylink);

	priv->phylink = phylink;
	return 0;
}