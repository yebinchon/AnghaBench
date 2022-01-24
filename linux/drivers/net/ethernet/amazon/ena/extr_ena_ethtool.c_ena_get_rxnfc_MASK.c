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
struct ethtool_rxnfc {int cmd; int /*<<< orphan*/  data; } ;
struct ena_adapter {int /*<<< orphan*/  ena_dev; int /*<<< orphan*/  num_queues; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
#define  ETHTOOL_GRXCLSRLALL 132 
#define  ETHTOOL_GRXCLSRLCNT 131 
#define  ETHTOOL_GRXCLSRULE 130 
#define  ETHTOOL_GRXFH 129 
#define  ETHTOOL_GRXRINGS 128 
 int /*<<< orphan*/  drv ; 
 int FUNC0 (int /*<<< orphan*/ ,struct ethtool_rxnfc*) ; 
 struct ena_adapter* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct ena_adapter*,int /*<<< orphan*/ ,struct net_device*,char*,int) ; 

__attribute__((used)) static int FUNC3(struct net_device *netdev, struct ethtool_rxnfc *info,
			 u32 *rules)
{
	struct ena_adapter *adapter = FUNC1(netdev);
	int rc = 0;

	switch (info->cmd) {
	case ETHTOOL_GRXRINGS:
		info->data = adapter->num_queues;
		rc = 0;
		break;
	case ETHTOOL_GRXFH:
		rc = FUNC0(adapter->ena_dev, info);
		break;
	case ETHTOOL_GRXCLSRLCNT:
	case ETHTOOL_GRXCLSRULE:
	case ETHTOOL_GRXCLSRLALL:
	default:
		FUNC2(adapter, drv, netdev,
			  "Command parameter %d is not supported\n", info->cmd);
		rc = -EOPNOTSUPP;
	}

	return rc;
}