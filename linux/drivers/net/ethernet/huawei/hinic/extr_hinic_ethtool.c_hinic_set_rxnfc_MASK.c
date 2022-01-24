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
struct hinic_dev {int dummy; } ;
struct ethtool_rxnfc {int cmd; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
#define  ETHTOOL_SRXFH 128 
 int FUNC0 (struct hinic_dev*,struct ethtool_rxnfc*) ; 
 struct hinic_dev* FUNC1 (struct net_device*) ; 

__attribute__((used)) static int FUNC2(struct net_device *netdev, struct ethtool_rxnfc *cmd)
{
	struct hinic_dev *nic_dev = FUNC1(netdev);
	int err = 0;

	switch (cmd->cmd) {
	case ETHTOOL_SRXFH:
		err = FUNC0(nic_dev, cmd);
		break;
	default:
		err = -EOPNOTSUPP;
		break;
	}

	return err;
}