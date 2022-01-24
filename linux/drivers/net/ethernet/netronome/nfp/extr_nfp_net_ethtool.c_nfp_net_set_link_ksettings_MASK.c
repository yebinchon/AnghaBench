#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct nfp_port {TYPE_1__* app; } ;
struct nfp_nsp {int dummy; } ;
struct nfp_eth_table_port {int lanes; int /*<<< orphan*/  index; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {scalar_t__ autoneg; int speed; } ;
struct ethtool_link_ksettings {TYPE_2__ base; } ;
struct TYPE_3__ {int /*<<< orphan*/  cpp; } ;

/* Variables and functions */
 scalar_t__ AUTONEG_ENABLE ; 
 int EBUSY ; 
 int EOPNOTSUPP ; 
 scalar_t__ FUNC0 (struct nfp_nsp*) ; 
 int /*<<< orphan*/  NFP_ANEG_AUTO ; 
 int /*<<< orphan*/  NFP_ANEG_DISABLED ; 
 int FUNC1 (struct nfp_nsp*) ; 
 int SPEED_UNKNOWN ; 
 int FUNC2 (struct nfp_nsp*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct nfp_nsp*,int) ; 
 struct nfp_eth_table_port* FUNC4 (struct nfp_port*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,char*) ; 
 scalar_t__ FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct nfp_nsp*) ; 
 int FUNC8 (struct nfp_nsp*) ; 
 struct nfp_nsp* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct nfp_port*) ; 
 struct nfp_port* FUNC11 (struct net_device*) ; 

__attribute__((used)) static int
FUNC12(struct net_device *netdev,
			   const struct ethtool_link_ksettings *cmd)
{
	struct nfp_eth_table_port *eth_port;
	struct nfp_port *port;
	struct nfp_nsp *nsp;
	int err;

	port = FUNC11(netdev);
	eth_port = FUNC4(port);
	if (!eth_port)
		return -EOPNOTSUPP;

	if (FUNC6(netdev)) {
		FUNC5(netdev, "Changing settings not allowed on an active interface. It may cause the port to be disabled until driver reload.\n");
		return -EBUSY;
	}

	nsp = FUNC9(port->app->cpp, eth_port->index);
	if (FUNC0(nsp))
		return FUNC1(nsp);

	err = FUNC2(nsp, cmd->base.autoneg == AUTONEG_ENABLE ?
				 NFP_ANEG_AUTO : NFP_ANEG_DISABLED);
	if (err)
		goto err_bad_set;
	if (cmd->base.speed != SPEED_UNKNOWN) {
		u32 speed = cmd->base.speed / eth_port->lanes;

		err = FUNC3(nsp, speed);
		if (err)
			goto err_bad_set;
	}

	err = FUNC8(nsp);
	if (err > 0)
		return 0; /* no change */

	FUNC10(port);

	return err;

err_bad_set:
	FUNC7(nsp);
	return err;
}