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
struct niu {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  location; } ;
struct ethtool_rxnfc {int cmd; TYPE_1__ fs; } ;

/* Variables and functions */
 int EINVAL ; 
#define  ETHTOOL_SRXCLSRLDEL 130 
#define  ETHTOOL_SRXCLSRLINS 129 
#define  ETHTOOL_SRXFH 128 
 struct niu* FUNC0 (struct net_device*) ; 
 int FUNC1 (struct niu*,struct ethtool_rxnfc*) ; 
 int FUNC2 (struct niu*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct niu*,struct ethtool_rxnfc*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev, struct ethtool_rxnfc *cmd)
{
	struct niu *np = FUNC0(dev);
	int ret = 0;

	switch (cmd->cmd) {
	case ETHTOOL_SRXFH:
		ret = FUNC3(np, cmd);
		break;
	case ETHTOOL_SRXCLSRLINS:
		ret = FUNC1(np, cmd);
		break;
	case ETHTOOL_SRXCLSRLDEL:
		ret = FUNC2(np, cmd->fs.location);
		break;
	default:
		ret = -EINVAL;
		break;
	}

	return ret;
}