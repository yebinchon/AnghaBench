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
struct ethtool_rxnfc {int cmd; scalar_t__ data; scalar_t__ rule_cnt; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; scalar_t__ max; scalar_t__ free; } ;
struct enic {TYPE_1__ rfs_h; scalar_t__ rq_count; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
#define  ETHTOOL_GRXCLSRLALL 132 
#define  ETHTOOL_GRXCLSRLCNT 131 
#define  ETHTOOL_GRXCLSRULE 130 
#define  ETHTOOL_GRXFH 129 
#define  ETHTOOL_GRXRINGS 128 
 int FUNC0 (struct enic*,struct ethtool_rxnfc*) ; 
 int FUNC1 (struct enic*,struct ethtool_rxnfc*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct enic*,struct ethtool_rxnfc*) ; 
 struct enic* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev, struct ethtool_rxnfc *cmd,
			  u32 *rule_locs)
{
	struct enic *enic = FUNC3(dev);
	int ret = 0;

	switch (cmd->cmd) {
	case ETHTOOL_GRXRINGS:
		cmd->data = enic->rq_count;
		break;
	case ETHTOOL_GRXCLSRLCNT:
		FUNC4(&enic->rfs_h.lock);
		cmd->rule_cnt = enic->rfs_h.max - enic->rfs_h.free;
		cmd->data = enic->rfs_h.max;
		FUNC5(&enic->rfs_h.lock);
		break;
	case ETHTOOL_GRXCLSRLALL:
		FUNC4(&enic->rfs_h.lock);
		ret = FUNC1(enic, cmd, rule_locs);
		FUNC5(&enic->rfs_h.lock);
		break;
	case ETHTOOL_GRXCLSRULE:
		FUNC4(&enic->rfs_h.lock);
		ret = FUNC2(enic, cmd);
		FUNC5(&enic->rfs_h.lock);
		break;
	case ETHTOOL_GRXFH:
		ret = FUNC0(enic, cmd);
		break;
	default:
		ret = -EOPNOTSUPP;
		break;
	}

	return ret;
}