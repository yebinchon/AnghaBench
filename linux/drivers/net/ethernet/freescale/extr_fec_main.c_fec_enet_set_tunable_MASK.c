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
struct fec_enet_private {int /*<<< orphan*/  rx_copybreak; } ;
struct ethtool_tunable {int id; } ;

/* Variables and functions */
 int EINVAL ; 
#define  ETHTOOL_RX_COPYBREAK 128 
 struct fec_enet_private* FUNC0 (struct net_device*) ; 

__attribute__((used)) static int FUNC1(struct net_device *netdev,
				const struct ethtool_tunable *tuna,
				const void *data)
{
	struct fec_enet_private *fep = FUNC0(netdev);
	int ret = 0;

	switch (tuna->id) {
	case ETHTOOL_RX_COPYBREAK:
		fep->rx_copybreak = *(u32 *)data;
		break;
	default:
		ret = -EINVAL;
		break;
	}

	return ret;
}