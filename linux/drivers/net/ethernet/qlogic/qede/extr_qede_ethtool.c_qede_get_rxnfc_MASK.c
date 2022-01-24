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
struct qede_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct ethtool_rxnfc {int cmd; int /*<<< orphan*/  data; int /*<<< orphan*/  rule_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qede_dev*,char*) ; 
 int EOPNOTSUPP ; 
#define  ETHTOOL_GRXCLSRLALL 132 
#define  ETHTOOL_GRXCLSRLCNT 131 
#define  ETHTOOL_GRXCLSRULE 130 
#define  ETHTOOL_GRXFH 129 
#define  ETHTOOL_GRXRINGS 128 
 int /*<<< orphan*/  QEDE_RFS_MAX_FLTR ; 
 int /*<<< orphan*/  FUNC1 (struct qede_dev*) ; 
 struct qede_dev* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct qede_dev*) ; 
 int FUNC4 (struct qede_dev*,struct ethtool_rxnfc*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct qede_dev*,struct ethtool_rxnfc*) ; 
 int FUNC6 (struct qede_dev*,struct ethtool_rxnfc*) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev, struct ethtool_rxnfc *info,
			  u32 *rule_locs)
{
	struct qede_dev *edev = FUNC2(dev);
	int rc = 0;

	switch (info->cmd) {
	case ETHTOOL_GRXRINGS:
		info->data = FUNC1(edev);
		break;
	case ETHTOOL_GRXFH:
		rc = FUNC6(edev, info);
		break;
	case ETHTOOL_GRXCLSRLCNT:
		info->rule_cnt = FUNC3(edev);
		info->data = QEDE_RFS_MAX_FLTR;
		break;
	case ETHTOOL_GRXCLSRULE:
		rc = FUNC5(edev, info);
		break;
	case ETHTOOL_GRXCLSRLALL:
		rc = FUNC4(edev, info, rule_locs);
		break;
	default:
		FUNC0(edev, "Command parameters not supported\n");
		rc = -EOPNOTSUPP;
	}

	return rc;
}