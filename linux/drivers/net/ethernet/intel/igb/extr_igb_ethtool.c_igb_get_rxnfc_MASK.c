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
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int dummy; } ;
struct igb_adapter {int /*<<< orphan*/  nfc_filter_count; int /*<<< orphan*/  num_rx_queues; } ;
struct ethtool_rxnfc {int cmd; int /*<<< orphan*/  rule_cnt; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
#define  ETHTOOL_GRXCLSRLALL 132 
#define  ETHTOOL_GRXCLSRLCNT 131 
#define  ETHTOOL_GRXCLSRULE 130 
#define  ETHTOOL_GRXFH 129 
#define  ETHTOOL_GRXRINGS 128 
 int FUNC0 (struct igb_adapter*,struct ethtool_rxnfc*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct igb_adapter*,struct ethtool_rxnfc*) ; 
 int FUNC2 (struct igb_adapter*,struct ethtool_rxnfc*) ; 
 struct igb_adapter* FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev, struct ethtool_rxnfc *cmd,
			 u32 *rule_locs)
{
	struct igb_adapter *adapter = FUNC3(dev);
	int ret = -EOPNOTSUPP;

	switch (cmd->cmd) {
	case ETHTOOL_GRXRINGS:
		cmd->data = adapter->num_rx_queues;
		ret = 0;
		break;
	case ETHTOOL_GRXCLSRLCNT:
		cmd->rule_cnt = adapter->nfc_filter_count;
		ret = 0;
		break;
	case ETHTOOL_GRXCLSRULE:
		ret = FUNC1(adapter, cmd);
		break;
	case ETHTOOL_GRXCLSRLALL:
		ret = FUNC0(adapter, cmd, rule_locs);
		break;
	case ETHTOOL_GRXFH:
		ret = FUNC2(adapter, cmd);
		break;
	default:
		break;
	}

	return ret;
}