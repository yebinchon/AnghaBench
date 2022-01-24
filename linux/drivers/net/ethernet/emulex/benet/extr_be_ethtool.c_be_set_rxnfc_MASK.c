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
struct net_device {int dummy; } ;
struct ethtool_rxnfc {int cmd; } ;
struct be_adapter {TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
#define  ETHTOOL_SRXFH 128 
 int /*<<< orphan*/  FUNC0 (struct be_adapter*) ; 
 int FUNC1 (struct be_adapter*,struct ethtool_rxnfc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct be_adapter* FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *netdev, struct ethtool_rxnfc *cmd)
{
	struct be_adapter *adapter = FUNC3(netdev);
	int status = 0;

	if (!FUNC0(adapter)) {
		FUNC2(&adapter->pdev->dev,
			"ethtool::set_rxnfc: RX flow hashing is disabled\n");
		return -EINVAL;
	}

	switch (cmd->cmd) {
	case ETHTOOL_SRXFH:
		status = FUNC1(adapter, cmd);
		break;
	default:
		return -EINVAL;
	}

	return status;
}