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
struct macb {int /*<<< orphan*/  num_queues; int /*<<< orphan*/  max_tuples; } ;
struct TYPE_2__ {int /*<<< orphan*/  ring_cookie; int /*<<< orphan*/  location; } ;
struct ethtool_rxnfc {int cmd; TYPE_1__ fs; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
#define  ETHTOOL_SRXCLSRLDEL 129 
#define  ETHTOOL_SRXCLSRLINS 128 
 int FUNC0 (struct net_device*,struct ethtool_rxnfc*) ; 
 int FUNC1 (struct net_device*,struct ethtool_rxnfc*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*,int) ; 
 struct macb* FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *netdev, struct ethtool_rxnfc *cmd)
{
	struct macb *bp = FUNC3(netdev);
	int ret;

	switch (cmd->cmd) {
	case ETHTOOL_SRXCLSRLINS:
		if ((cmd->fs.location >= bp->max_tuples)
				|| (cmd->fs.ring_cookie >= bp->num_queues)) {
			ret = -EINVAL;
			break;
		}
		ret = FUNC0(netdev, cmd);
		break;
	case ETHTOOL_SRXCLSRLDEL:
		ret = FUNC1(netdev, cmd);
		break;
	default:
		FUNC2(netdev,
			  "Command parameter %d is not supported\n", cmd->cmd);
		ret = -EOPNOTSUPP;
	}

	return ret;
}