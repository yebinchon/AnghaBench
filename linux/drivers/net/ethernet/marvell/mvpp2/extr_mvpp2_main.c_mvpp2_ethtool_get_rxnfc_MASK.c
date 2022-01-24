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
typedef  int u32 ;
struct net_device {int dummy; } ;
struct mvpp2_port {int /*<<< orphan*/ * rfs_rules; int /*<<< orphan*/  n_rfs_rules; int /*<<< orphan*/  nrxqs; } ;
struct ethtool_rxnfc {int cmd; int /*<<< orphan*/  rule_cnt; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int ENOTSUPP ; 
 int EOPNOTSUPP ; 
#define  ETHTOOL_GRXCLSRLALL 132 
#define  ETHTOOL_GRXCLSRLCNT 131 
#define  ETHTOOL_GRXCLSRULE 130 
#define  ETHTOOL_GRXFH 129 
#define  ETHTOOL_GRXRINGS 128 
 int MVPP2_N_RFS_ENTRIES_PER_FLOW ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (struct mvpp2_port*,struct ethtool_rxnfc*) ; 
 int FUNC2 (struct mvpp2_port*,struct ethtool_rxnfc*) ; 
 struct mvpp2_port* FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev,
				   struct ethtool_rxnfc *info, u32 *rules)
{
	struct mvpp2_port *port = FUNC3(dev);
	int ret = 0, i, loc = 0;

	if (!FUNC0())
		return -EOPNOTSUPP;

	switch (info->cmd) {
	case ETHTOOL_GRXFH:
		ret = FUNC2(port, info);
		break;
	case ETHTOOL_GRXRINGS:
		info->data = port->nrxqs;
		break;
	case ETHTOOL_GRXCLSRLCNT:
		info->rule_cnt = port->n_rfs_rules;
		break;
	case ETHTOOL_GRXCLSRULE:
		ret = FUNC1(port, info);
		break;
	case ETHTOOL_GRXCLSRLALL:
		for (i = 0; i < MVPP2_N_RFS_ENTRIES_PER_FLOW; i++) {
			if (port->rfs_rules[i])
				rules[loc++] = i;
		}
		break;
	default:
		return -ENOTSUPP;
	}

	return ret;
}