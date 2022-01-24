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
struct ionic_lif {int /*<<< orphan*/  nxqs; } ;
struct ethtool_rxnfc {int cmd; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
#define  ETHTOOL_GRXRINGS 128 
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*,int) ; 
 struct ionic_lif* FUNC1 (struct net_device*) ; 

__attribute__((used)) static int FUNC2(struct net_device *netdev,
			   struct ethtool_rxnfc *info, u32 *rules)
{
	struct ionic_lif *lif = FUNC1(netdev);
	int err = 0;

	switch (info->cmd) {
	case ETHTOOL_GRXRINGS:
		info->data = lif->nxqs;
		break;
	default:
		FUNC0(netdev, "Command parameter %d is not supported\n",
			   info->cmd);
		err = -EOPNOTSUPP;
	}

	return err;
}