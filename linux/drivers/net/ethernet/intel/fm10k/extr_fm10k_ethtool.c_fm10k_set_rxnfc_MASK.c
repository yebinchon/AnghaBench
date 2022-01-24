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
struct net_device {int dummy; } ;
struct fm10k_intfc {int dummy; } ;
struct ethtool_rxnfc {int cmd; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
#define  ETHTOOL_SRXFH 128 
 int FUNC0 (struct fm10k_intfc*,struct ethtool_rxnfc*) ; 
 struct fm10k_intfc* FUNC1 (struct net_device*) ; 

__attribute__((used)) static int FUNC2(struct net_device *dev, struct ethtool_rxnfc *cmd)
{
	struct fm10k_intfc *interface = FUNC1(dev);
	int ret = -EOPNOTSUPP;

	switch (cmd->cmd) {
	case ETHTOOL_SRXFH:
		ret = FUNC0(interface, cmd);
		break;
	default:
		break;
	}

	return ret;
}