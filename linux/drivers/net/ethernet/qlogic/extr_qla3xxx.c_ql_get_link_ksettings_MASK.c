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
typedef  int /*<<< orphan*/  u32 ;
struct ql3_adapter {int /*<<< orphan*/  PHYAddr; int /*<<< orphan*/  flags; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  advertising; int /*<<< orphan*/  supported; } ;
struct TYPE_3__ {int /*<<< orphan*/  duplex; int /*<<< orphan*/  speed; int /*<<< orphan*/  autoneg; int /*<<< orphan*/  phy_address; int /*<<< orphan*/  port; } ;
struct ethtool_link_ksettings {TYPE_2__ link_modes; TYPE_1__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  PORT_FIBRE ; 
 int /*<<< orphan*/  PORT_TP ; 
 int /*<<< orphan*/  QL_LINK_OPTICAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ql3_adapter* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct ql3_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct ql3_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct ql3_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct ql3_adapter*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct net_device *ndev,
				 struct ethtool_link_ksettings *cmd)
{
	struct ql3_adapter *qdev = FUNC1(ndev);
	u32 supported, advertising;

	supported = FUNC5(qdev);

	if (FUNC6(QL_LINK_OPTICAL, &qdev->flags)) {
		cmd->base.port = PORT_FIBRE;
	} else {
		cmd->base.port = PORT_TP;
		cmd->base.phy_address = qdev->PHYAddr;
	}
	advertising = FUNC5(qdev);
	cmd->base.autoneg = FUNC2(qdev);
	cmd->base.speed = FUNC4(qdev);
	cmd->base.duplex = FUNC3(qdev);

	FUNC0(cmd->link_modes.supported,
						supported);
	FUNC0(cmd->link_modes.advertising,
						advertising);

	return 0;
}