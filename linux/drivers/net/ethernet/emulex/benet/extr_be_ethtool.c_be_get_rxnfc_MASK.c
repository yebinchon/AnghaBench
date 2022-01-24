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
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int dummy; } ;
struct ethtool_rxnfc {int cmd; int /*<<< orphan*/  data; int /*<<< orphan*/  flow_type; } ;
struct be_adapter {int /*<<< orphan*/  num_rx_qs; TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
#define  ETHTOOL_GRXFH 129 
#define  ETHTOOL_GRXRINGS 128 
 int /*<<< orphan*/  FUNC0 (struct be_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct be_adapter* FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *netdev, struct ethtool_rxnfc *cmd,
			u32 *rule_locs)
{
	struct be_adapter *adapter = FUNC3(netdev);

	if (!FUNC1(adapter)) {
		FUNC2(&adapter->pdev->dev,
			 "ethtool::get_rxnfc: RX flow hashing is disabled\n");
		return -EINVAL;
	}

	switch (cmd->cmd) {
	case ETHTOOL_GRXFH:
		cmd->data = FUNC0(adapter, cmd->flow_type);
		break;
	case ETHTOOL_GRXRINGS:
		cmd->data = adapter->num_rx_qs;
		break;
	default:
		return -EINVAL;
	}

	return 0;
}