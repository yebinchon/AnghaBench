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
struct ethtool_rxnfc {int cmd; } ;
struct bnxt {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
#define  ETHTOOL_SRXFH 128 
 int FUNC0 (struct bnxt*,struct ethtool_rxnfc*) ; 
 struct bnxt* FUNC1 (struct net_device*) ; 

__attribute__((used)) static int FUNC2(struct net_device *dev, struct ethtool_rxnfc *cmd)
{
	struct bnxt *bp = FUNC1(dev);
	int rc;

	switch (cmd->cmd) {
	case ETHTOOL_SRXFH:
		rc = FUNC0(bp, cmd);
		break;

	default:
		rc = -EOPNOTSUPP;
		break;
	}
	return rc;
}