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
struct qede_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  location; } ;
struct ethtool_rxnfc {int cmd; TYPE_1__ fs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qede_dev*,char*) ; 
 int EOPNOTSUPP ; 
#define  ETHTOOL_SRXCLSRLDEL 130 
#define  ETHTOOL_SRXCLSRLINS 129 
#define  ETHTOOL_SRXFH 128 
 struct qede_dev* FUNC1 (struct net_device*) ; 
 int FUNC2 (struct qede_dev*,struct ethtool_rxnfc*) ; 
 int FUNC3 (struct qede_dev*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct qede_dev*,struct ethtool_rxnfc*) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev, struct ethtool_rxnfc *info)
{
	struct qede_dev *edev = FUNC1(dev);
	int rc;

	switch (info->cmd) {
	case ETHTOOL_SRXFH:
		rc = FUNC4(edev, info);
		break;
	case ETHTOOL_SRXCLSRLINS:
		rc = FUNC2(edev, info);
		break;
	case ETHTOOL_SRXCLSRLDEL:
		rc = FUNC3(edev, info->fs.location);
		break;
	default:
		FUNC0(edev, "Command parameters not supported\n");
		rc = -EOPNOTSUPP;
	}

	return rc;
}